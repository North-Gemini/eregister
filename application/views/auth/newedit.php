<div class="page-wrapper">
	<div class="row">
		<div class="col-md-12">
			<?php foreach($tamu as $t){ ?>
				<form action="<?php echo base_url(). 'auth/updateTamu'; ?>" method="post">
					<div class="form-group row">
						<div class="col-sm-6 mt-5 mb-3 mb-sm-0">
							<h6 class="m-0 font-weight-bold text-primary">Nama</h6>
							<input type="hidden" name="tamuID" value="<?php echo $t->tamuID ?>">
							<input type="text" class="form-control form-control-user" name="nama" value="<?php echo $t->nama ?>">
						</div>
						<div class="col-sm-6 mt-5">
							<h6 class="m-0 font-weight-bold text-primary">Layanan</h6>
							<!-- <input type="text" class="form-control form-control-user" name="layanan" value="<?php echo $t->layanan ?>"> -->
							<select class="custom-select" name="layanan" id="layanan">
								<option selected><?php echo $t->layanan ?></option>
								<option value="Konsultasi Teknologi">Konsultasi Teknologi</option>
								<option value="Penyediaan Benih Sumber">Penyediaan Benih Sumber</option>
								<option value="Laboratorium Benih">Laboratorium Benih</option>
								<option value="Perpustakaan">Perpustakaan</option>
								<option value="Lain-lain">Lain-lain</option>
							</select>
						</div>
					</div>
					<div class="form-group row">
						<div class="col-sm-6 mt-2 mb-3 mb-sm-0">
							<h6 class="m-0 font-weight-bold text-primary">No Tlp</h6>
							<input type="text" class="form-control form-control-user" name="no_tlp" value="<?php echo $t->no_tlp ?>">
						</div>
						<div class="col-sm-6 mt-2">
							<h6 class="m-0 font-weight-bold text-primary">Pegawai</h6>
							<!-- <input type="text" class="form-control form-control-user" name="pegawaiID" value="<?php echo $t->pegawaiID ?>"> -->
							<select class="custom-select" name="pegawaiID" id="pegawaiID">
								<option selected><?php echo $t->pegawaiID ?> </option>
								<?php foreach ($pegawai as $pgw) {
									echo '<option value="' . $pgw->pegawaiID . '">' . ($pgw->nama) . '</option>';
								} ?>
							</select>
						</div>
					</div>
					<div class="form-group row">
						<div class="col-sm-6 mt-2 mb-3 mb-sm-0">
							<h6 class="m-0 font-weight-bold text-primary">Pekerjaan</h6>
							<!-- <input type="text" class="form-control form-control-user" name="pekerjaan" value="<?php echo $t->pekerjaan ?>"> -->
							<select class="custom-select" id="pekerjaan" name="pekerjaan" id="pekerjaan">
								<option selected><?php echo $t->pekerjaan ?></option>
								<option value="Peneliti">Peneliti</option>
								<option value="Penyuluh">Penyuluh</option>
								<option value="PNS">PNS</option>
								<option value="Dosen">Dosen</option>
								<option value="Guru">Guru</option>
								<option value="Mahasiswa">Mahasiswa</option>
								<option value="Pustakawan">Pustakawan</option>
								<option value="Pelajar">Pelajar</option>
								<option value="Swasta">Swasta</option>
								<option value="Umum">Umum</option>
								<option value="Petani">Petani</option>
							</select>
						</div>
						<div class="col-sm-6 mt-2">
							<h6 class="m-0 font-weight-bold text-primary">Tujuan</h6>
							<input type="text" class="form-control form-control-user" name="tujuan" value="<?php echo $t->tujuan ?>">
						</div>
					</div>
					<div class="form-group row">
						<div class="col-sm-6 mt-2 mb-3 mb-sm-0">
							<h6 class="m-0 font-weight-bold text-primary">Lembaga</h6>
							<input type="text" class="form-control form-control-user" name="lembaga" value="<?php echo $t->lembaga ?>">
						</div>
						<div class="col-sm-6 mt-2">
							<h6 class="m-0 font-weight-bold text-primary">Topik</h6>
							<input type="text" class="form-control form-control-user" name="topik" value="<?php echo $t->topik ?>">
						</div>
					</div>
					<button type="submit" class="btn btn-primary btn btn-block">
						Simpan
					</button>
					<a href="<?= base_url('auth/admin'); ?>" class="btn btn-danger btn btn-block"><i class=""></i> Kembali</a>

					
					
					
				</form>
			<?php } ?>
		</div>
	</div>
</div>