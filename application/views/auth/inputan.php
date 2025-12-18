<!DOCTYPE html>
<html lang="en">

<head>

  <script type="text/javascript">
    function showTime() {
      var a_p = "";
      var today = new Date();
      var curr_hour = today.getHours();
      var curr_minute = today.getMinutes();
      var curr_second = today.getSeconds();

      if (curr_hour < 12) {
        a_p = "AM";
      } else {
        a_p = "PM";
      }

      if (curr_hour == 0) {
        curr_hour = 12;
      }
      if (curr_hour == 12) {
        curr_hour = curr_hour - 12;
      }

      curr_hour = checkTime(curr_hour);
      curr_minute = checkTime(curr_minute);
      curr_second = checkTime(curr_second);

      document.getElementById('hours').innerHTML = curr_hour + ":" + curr_minute + ":" + curr_second + " " + a_p;

    }

    function checkTime(i) {
      if (i < 10) {
        i = "0" - i;
      }
      return i;
    }
    setInterval(showTime, 500);
  </script>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Buku Tamu</title>

  <!-- Custom fonts for this template-->
  <link href="<?= base_url('assets/'); ?>vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

  <!-- Custom styles for this template-->
  <link href="<?= base_url('assets/'); ?>css/sb-admin-2.min.css" rel="stylesheet">

</head>

<body class="bg-gradient-success">

  <div class="container">

    <!-- Outer Row -->
    <div class="row justify-content-center">

      <div class="col-lg-7">

        <div class="card o-hidden border-0 shadow-lg my-5 bg-gradient-dark">
          <div class="card-body p-0">
            <!-- Nested Row within Card Body -->
            <div class="row">
              <div class="col-lg">
                <div class="p-5">
                  <div class="text-center">
                  <img style="margin: 0 0 1rem; padding: 0" src="<?php echo base_url('assets/img/headerLogin.png'); ?>" class="rounded" alt="logo">
                  </div>
                  <div class="text-center">
                    <h1 class="h4 text-light mb-4">Buku Tamu</h1>
                  </div>

                  <form action="<?php echo base_url('crud/tambah_aksi'); ?>" method="post">

                    <div class="form-group">
                      <input type="text" class="form-control" id="nama" name="nama" placeholder="Nama Lengkap">
                    </div>
                    <div class="form-group">
                      <input type="text" class="form-control" id="no_tlp" name="no_tlp" placeholder="Nomor Kontak">
                    </div>
                    <div class="form-group">
                      <div class="input-group mb-3">
                        <select class="custom-select" id="pekerjaan" name="pekerjaan" id="pekerjaan">
                          <option selected>Petani</option>
                          <option value="Peneliti">Peneliti</option>
                          <option value="Penyuluh">Penyuluh</option>
                          <option value="ASN">ASN</option>
                          <option value="Dosen">Dosen</option>
                          <option value="Guru">Guru</option>
                          <option value="Mahasiswa">Mahasiswa</option>
                          <option value="Pelajar">Pelajar</option>
                          <option value="Swasta">Swasta</option>
                          <option value="Umum">Umum</option>
                        </select>
                      </div>
                    </div>
                    <div class="form-group">
                      <input type="text" class="form-control" id="lembaga" name="lembaga" placeholder="Asal Instansi/ Lembaga/ Unit Kerja" id="instansi">
                    </div>
                    <div class="form-group">
                      <div class="input-group mb-3">
                        <select class="custom-select" name="layanan" id="layanan">
                          <option value="Konsultasi">Konsultasi</option>
                          <option value="Penyediaan Benih Sumber">Penyediaan Benih Sumber</option>
                          <option value="Laboratorium Pengujian">Laboratorium Pengujian</option>
                          <option value="Perpustakaan">Perpustakaan</option>
                          <option value="Lain-lain">Lain-lain</option>
                        </select>
                      </div>
                    </div>
                    <div class="form-group">
                      <div class="input-group mb-3">

                        <select class="custom-select" name="pegawaiID" id="pegawaiID">
                          <option selected>Pegawai yang dituju.</option>
                          <?php foreach ($pegawai as $pgw) {
                            echo '<option value="' . $pgw->pegawaiID . '">' . ($pgw->nama) . '</option>';
                          } ?>
                        </select>
                      </div>
                    </div>
                    <div class="form-group">
                      <textarea class="form-control" aria-label="With textarea" name="tujuan" id="tujuan" placeholder="Tujuan"></textarea>
                    </div>
                    <div class="form-group">
                      <textarea class="form-control" aria-label="With textarea" name="topik" id="topik" placeholder="Topik"></textarea>
                    </div>
                    <hr>
                    <input class="btn btn-success btn-user btn-block" type="submit" value="Kirim Data Pengunjung">
                    <input class="btn btn-danger btn-user btn-block" type="reset" value="Batal">
                  </form>
                  <div class="text-center">
                    <p class="font-weight-normal text-light" id="hours" name="jam"></p>
                  </div>
                  <div class="text-center">
                    <p class="font-weight-normal text-light" id="date" name="tanggal"></p>
                  </div>
                  <hr>
                  <div class="text-center">
                    <a class="small" href="<?= base_url('auth/logout'); ?>">Logout</a>
                  </div>
                  <div class="text-center">
                    <h1 class="h4 text-light mb-4">Terima Kasih.</h1>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>

      </div>

    </div>

  </div>

  <!-- Bootstrap core JavaScript-->
  <script src="<?= base_url('assets/'); ?>vendor/jquery/jquery.min.js"></script>
  <script src="<?= base_url('assets/'); ?>vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="<?= base_url('assets/'); ?>vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="<?= base_url('assets/'); ?>js/sb-admin-2.min.js"></script>

  <script>
    var tw = new Date();
    if (tw.getTimezoneOffset() == 0)(a = tw.getTime() + (7 * 60 * 60 * 1000))
    else(a = tw.getTime());
    tw.setTime(a);
    var tahun = tw.getFullYear();
    var hari = tw.getDay();
    var bulan = tw.getMonth();
    var tanggal = tw.getDate();
    var hariarray = new Array("Minggu,", "Senin,", "Selasa,", "Rabu,", "Kamis,", "Jum'at,", "Sabtu,");
    var bulanarray = new Array("Januari", "Februari", "Maret", "April", "Mei", "Juni", "Juli", "Agustus", "September", "Oktober", "Nopember", "Desember");
    document.getElementById("date").innerHTML = hariarray[hari] + " " + tanggal + " " + bulanarray[bulan] + " " + tahun;
  </script>

</body>

</html>