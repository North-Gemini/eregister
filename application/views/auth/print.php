<html>

<head>
    <!-- <title>Sukses!!!!!!!!!!</title> -->
    <title>Cetak Form Layanan BSIP Aneka Kacang</title>
    <meta http-equiv="refresh" content="30; url=<?= base_url('auth/index'); ?>">
    <!-- <META HTTP-EQUIV="Refresh" CONTENT="3; URL=http://<?php echo $IP ?>/"> -->
    <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
    <style type="text/css">
        @media print {
            .noprint {
                display: none !important;
            }

            .template {
                background-image: url('images/logo_grey_tight.png') !important;
                background-position: center;
                background-repeat: no-repeat;
            }

        }

        .template {
            background-image: url('images/logo_grey_tight.png');
            background-position: center;
            background-repeat: no-repeat;
        }

        .box-kritik {
            width: 66%;
            height: 300px;
            border: 1px solid black;
        }

        .barcode {
            width: 40%;
            margin-bottom: 1px;
            margin-right: 15px;

        }

        .tabelkrisan {
            width: 100%;
        }

        th {
            height: 190px;
        }

        .aww {
            margin-left: 15px;
            margin-top: 60px;
        }
    </style>
</head>

<body onload="cetak()">
    <center>
        <div class="template">
            <h1>KEMENTERIAN PERTANIAN</h1>
            <h1 style="margin-top: -20px">Balai Pengujian Standar Instrumen Tanaman Aneka Kacang</h1>
            <h1 style="margin-top: -40px">_____________________________________________________</h1>
            <h1>Form Layanan BSIP Aneka Kacang</h1>
            <br><br>
            <table width="60%">

                <tr>
                    <td width="15%">Nama</td>
                    <td width="2%">:</td>
                    <td><?php echo $tamu['nama']; ?></td>
                </tr>
                <tr>
                    <td>Layanan Jasa</td>
                    <td>:</td>
                    <td><?php echo $tamu['layanan']; ?></td>
                </tr>
                <tr>
                    <td>Nomor Kontak</td>
                    <td>:</td>
                    <td><?php echo $tamu['no_tlp']; ?></td>
                </tr>
                <tr>
                    <td>Instansi</td>
                    <td>:</td>
                    <td><?php echo $tamu['lembaga']; ?></td>
                </tr>
                <tr>
                    <td>Tujuan</td>
                    <td>:</td>
                    <td><?php echo $tamu['tujuan']; ?></td>
                </tr>
                <tr>
                    <td>Topik</td>
                    <td>:</td>
                    <td><?php echo $tamu['topik']; ?></td>
                </tr>
            </table>
            <br><br>
            <table align="center" style="padding-left: 500px">
                <tr>
                    <td>Malang, <?php echo $tamu['tanggal'] ?></td>
                </tr>
                <tr>
                    <td>Pemberi Layanan<br><br><br><br></td>
                </tr>
                <tr>
                    <td>______________________________</td>
                </tr>
                <tr>
                    <td><?php echo $pegawai['nama'] ?></td>
                </tr>
            </table>
            <table>
                <tr>
                    <td>*Mohon dikembalikan ke resepsionis</td>
                </tr>
                <tr>
                    <td>_________________________________________________________________________________________________________________</td>
                </tr>
            </table>
            <h1>Kritik dan Saran</h1>
            <div class="box-kritik">
                <table class="tabelkrisan">
                    <tr>
                        <th width="300px"></th>
                        <th width="50px"></th>
                        <th width="150px"></th>
                    </tr>
                    <tr>
                        <td>
                            <p class="aww">scan barcode berikut untuk kritik dan saran</p>
                        </td>
                        <td></td>
                        <td><img src="<?php echo base_url('assets/img/barcode.png'); ?>" class="barcode" alt="code" align="right"></td>
                    </tr>
                </table>



            </div>
            <br><br>
        </div>
    </center>

</body>
<center><a href="<?= base_url('user/c_user'); ?>">
        <button class="noprint" style="font-size:16px;background: green; color: white; width: 150px;height: 30px">Selesai</button></a></center>
<script>
    function cetak() {
        window.print();
    }
</script>

</html>