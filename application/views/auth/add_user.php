<!-- Page Wrapper -->
<div id="wrapper">

  <!-- Sidebar -->
  <ul class="navbar-nav bg-gradient-success sidebar sidebar-dark accordion" id="accordionSidebar">

    <!-- Sidebar - Brand -->
    <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.html">

      <div class="sidebar-brand-text mx-3">BALITKABI</div>
    </a>

    <!-- Heading -->
    <div class="sidebar-heading">
      Menu
    </div>

    <!-- Nav Item - Tables -->
    <li class="nav-item">
      <a class="nav-link" href="<?php echo base_url('auth/admin'); ?>">
        <i class="fas fa-fw fa-table"></i>
        <span>Data Tamu</span></a>
    </li>

    <!-- Nav Item - Charts -->
    <li class="nav-item">
      <a class="nav-link" href="<?php echo base_url('auth/add_user'); ?>">
        <i class="fas fa-users"></i>
        <span>Tambah Pengguna</span></a>
    </li>

    <li class="nav-item">
      <a class="nav-link" href="<?php echo base_url('auth/logout'); ?>">
        <i class="fas fa-sign-out-alt"></i>
        <span>Logout</span></a>
    </li>


    <!-- Divider -->
    <hr class="sidebar-divider d-none d-md-block">

    <!-- Sidebar Toggler (Sidebar) -->
    <div class="text-center d-none d-md-inline">
      <button class="rounded-circle border-0" id="sidebarToggle"></button>
    </div>

  </ul>
  <!-- End of Sidebar -->

  <!-- Content Wrapper -->
  <div id="content-wrapper" class="d-flex flex-column">

    <!-- Main Content -->
    <div id="content">

      <!-- Topbar -->
      <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

        <!-- Sidebar Toggle (Topbar) -->
        <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
          <i class="fa fa-bars"></i>
        </button>


        <!-- Topbar Navbar -->
        <ul class="navbar-nav ml-auto">

          <!-- Nav Item - Search Dropdown (Visible Only XS) -->
          <li class="nav-item dropdown no-arrow d-sm-none">
            <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
              <i class="fas fa-search fa-fw"></i>
            </a>
            <!-- Dropdown - Messages -->
            <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in" aria-labelledby="searchDropdown">
              <form class="form-inline mr-auto w-100 navbar-search">
                <div class="input-group">
                  <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2">
                  <div class="input-group-append">
                    <button class="btn btn-success" type="button">
                      <i class="fas fa-search fa-sm"></i>
                    </button>
                  </div>
                </div>
              </form>
            </div>
          </li>


        </ul>

      </nav>
      <!-- End of Topbar -->

      <!-- Begin Page Content -->
      <div class="container-fluid">
        <!-- Basic Card Example -->
        <div class="card shadow mb-4">
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
                    <!-- <option selected>Level</option>
                          <?php foreach ($halo as $hl) {
                            echo '<option value="' . $hl->id . '">' . $hl->level . '</option>';
                          } ?> -->
                  </select>
                </div>
                <!-- <input type="text" class="form-control form-control-user" id="level" name="level" placeholder="Level" value="<?= set_value('level'); ?>"> -->
                <!-- <?= form_error('name', '<small class="text-danger pl-3">', '</small>'); ?> -->
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
                    <th>Edit/Hapus</th>
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

      <!-- End of Main Content -->

      <!-- Footer -->
      <footer class="sticky-footer bg-white">
        <div class="container my-auto">
          <div class="copyright text-center my-auto">
            <span>Copyright &copy; Your Website 2020</span>
          </div>
        </div>
      </footer>
      <!-- End of Footer -->

    </div>
    <!-- End of Content Wrapper -->

  </div>
  <!-- End of Page Wrapper -->

  <!-- Scroll to Top Button-->
  <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>

  <!-- Logout Modal-->