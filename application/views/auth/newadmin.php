					<div class="page-wrapper">
						<div class="content">
							<div class="row">
								<div class="col-sm-4 col-3">
									<h4 class="m-0 font-weight-bold text-primary">Data Tamu Balitkabi</h4>
								</div>
								<div class="col-sm-8 col-9 text-right m-b-20">
									<a href="<?= base_url('export/exportBro'); ?>" class="btn btn btn-primary btn-rounded float-right"><i class=""></i> Export to Excel</a>
								</div>
							</div>
							<div class="row">
								<div class="col-md-12">
									<div class="table-responsive">
										<table class="table table-border table-striped custom-table datatable mb-0">
											<thead>
												<tr>
													<th>No</th>
													<th>Nama</th>
													<th>Nomor</th>
													<th>Pekerjaan</th>
													<th>Instansi</th>
													<th>Tujuan</th>
													<th>Topik</th>
													<th>Tanggal</th>
													<th class="text-right">Action</th>
												</tr>
											</thead>
											<tbody>
												<?php $no = 1;
												foreach ($tamu as $t) {
												?>
													<tr>
														<td><?php echo $no++ ?></td>
														<td><?php echo $t->nama ?></td>
														<td><?php echo $t->no_tlp ?></td>
														<td><?php echo $t->pekerjaan ?></td>
														<td><?php echo $t->lembaga ?></td>
														<td><?php echo $t->tujuan ?></td>
														<td><?php echo $t->topik ?></td>
														<td><?php echo $t->tanggal ?></td>
														<td class="text-right">
															<div class="dropdown dropdown-action">
																<a href="#" class="action-icon dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-ellipsis-v"></i></a>
																<div class="dropdown-menu dropdown-menu-right">
																	<a class="dropdown-item" href="<?php echo base_url(); ?>auth/editTamu/<?php echo $t->tamuID; ?>"><i class="fas fa-edit"></i> Edit</a>
																	<a class="dropdown-item" href="<?php echo base_url(); ?>auth/hapusTamu/<?php echo $t->tamuID; ?>"><i class="far fa-trash-alt"></i>Delete</a>
																	<!-- <a href="<?php echo base_url(); ?>auth/hapusTamu/<?php echo $t->tamuID; ?>" class="far fa-trash-alt">Delete</a> -->
																</div>
															</div>

														</td>
													</tr>
												<?php } ?>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
						<div id="delete_patient" class="modal fade delete-modal" role="dialog">
							<div class="modal-dialog modal-dialog-centered">
								<div class="modal-content">
									<div class="modal-body text-center">
										<img src="<?= base_url('assets/'); ?>assetsadm/img/sent.png" alt="" width="50" height="46">
										<h3>Hapus data?</h3>
										<div class="m-t-20"> <a href="#" class="btn btn-white" data-dismiss="modal">Close</a>
											<a href="<?= base_url('auth/deleteTamu'); ?>" class="btn btn-danger"><i class=""></i> Delete</a>
										</div>
									</div>
								</div>
							</div>

						</div>
					</div>