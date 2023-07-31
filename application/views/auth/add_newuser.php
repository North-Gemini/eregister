					<div class="page-wrapper">
						<div class="card shadow mt-3 mb-3">
							<div class="card-header py-3">
								<h6 class="m-0 font-weight-bold text-primary">Register Akun Balitkabi</h6>
							</div>
							<div class="card-body">

								<form class="user" method="post" action="<?= base_url('auth/add_user'); ?>">
									<div class="form-group">
										<input type="text" class="form-control form-control-user" id="nama" name="nama" placeholder="Full name" value="<?= set_value('nama'); ?>">
										<?= form_error('name', '<small class="text-danger pl-3">', '</small>'); ?>
									</div>
									<div class="form-group">
										<input type="text" class="form-control form-control-user" id="username" name="username" placeholder="Username" value="<?= set_value('username'); ?>">
										<?= form_error('username', '<small class="text-danger pl-3">', '</small>'); ?>
									</div>
									<div class="form-group row">
										<div class="col-sm-6 mb-3 mb-sm-0">
											<input type="password" class="form-control form-control-user" id="password1" name="password1" placeholder="Password">
											<?= form_error('password1', '<small class="text-danger pl-3">', '</small>'); ?>
										</div>
										<div class="col-sm-6">
											<input type="password" class="form-control form-control-user" id="password2" name="password2" placeholder="Repeat Password">
										</div>
									</div>
									<div class="form-group">
										<div class="input-group mb-3">
											<select class="custom-select" name="level" id="level">
												<option>admin</option>
												<option>user</option>

											</select>
										</div>
									</div>
									<button type="submit" class="btn btn-primary btn-user btn-block">
										Register Account
									</button>
								</form>
							</div>
						</div>


						<!-- DataTales Example -->
						<div class="card shadow mb-4">
							<div class="card-header py-3">
								<h6 class="m-0 font-weight-bold text-primary">Data Akun Login Balitkabi</h6>
							</div>
							<div class="card-body">
								<div class="table-responsive">
									<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
										<thead>
											<tr>
												<th>No</th>
												<th>Nama</th>
												<th>Username</th>
												<th>Password</th>
												<th>Level</th>
												<th>Aksi</th>
											</tr>
										</thead>
										<tbody>
											<?php $no = 1;
											foreach ($halo as $h) {
											?>
												<tr>
													<td><?= $no++ ?></td>
													<td><?= $h->nama ?></td>
													<td><?= $h->username ?></td>
													<td><?= $h->password ?></td>
													<td><?= $h->level ?></td>
													<td><?php echo anchor('crud/hps/' . $h->id, 'Hapus'); ?></td>
												</tr>
											<?php } ?>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>