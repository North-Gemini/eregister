<div class="container">
    <div class="row justify-content-center">
        <!-- <div class="card o-hidden border-0 shadow-lg my-5 bg-gradient-dark"> -->

        <div class="card shadow mb-4 border-0 shadow-lg my-5">
            <div class="card-header py-3">
                <h6 class="m-0 font-weight-bold text-primary">DataTables Example</h6>
            </div>
            <div class="card-body">
                <div class="table-responsive">
                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                        <thead>

                            <tr>
                                <th>No</th>
                                <th>Nama</th>
                                <th>Nomor</th>
                                <th>Pekerjaan</th>
                                <th>Instansi</th>
                                <th>Layanan</th>
                                <th>Pegawai</th>
                                <th>Tujuan</th>
                                <th>Topik</th>
                                <th>Tanggal</th>
                            </tr>
                        </thead>
                        <!-- <a class="pull-right btn btn-warning btn-large" style="margin-right:40px" href="<?= base_url('export/exportBro'); ?>">
                    <i class="fa fa-file-excel-o"></i> Export to Excel</a> -->
                        <tbody>

                            <?php $no = 1;
                            foreach ($tamu as $t) {
                            ?>
                                <tr>
                                    <td><?php echo $t->tamuID ?></td>
                                    <td><?php echo $t->nama ?></td>
                                    <td><?php echo $t->no_tlp ?></td>
                                    <td><?php echo $t->pekerjaan ?></td>
                                    <td><?php echo $t->lembaga ?></td>
                                    <td><?php echo $t->layanan ?></td>
                                    <td><?php echo $t->pegawaiID ?></td>
                                    <td><?php echo $t->tujuan ?></td>
                                    <td><?php echo $t->topik ?></td>
                                    <td><?php echo $t->tanggal ?></td>
                                    <td>
                                        <?php echo anchor('auth/print/' . $t->tamuID, 'Print'); ?>
                                    </td>

                                </tr>
                            <?php } ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>