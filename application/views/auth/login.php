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
                  <img src="<?php echo base_url('assets/img/balitkabi.png'); ?>" class="rounded" alt="logo">
                </div>
                <div class="text-center">
                  <h1 class="h4 text-light mb-4">Buku Tamu</h1>
                </div>
                <?php echo form_open("auth/cek_login"); ?>
                <div class="form-group">
                  <input type="text" class="form-control form-control-user" id="username" name="username" placeholder="Enter Username..." value="<?= set_value('username'); ?>">
                  <?= form_error('username', '<small class="text-danger pl-3">', '</small>'); ?>
                </div>
                <div class="form-group">
                  <input type="password" class="form-control form-control-user" id="password" name="password" placeholder="Password">
                  <?= form_error('password', '<small class="text-danger pl-3">', '</small>'); ?>
                </div>
                <button type="submit" class="btn btn-primary btn-user btn-block">
                  Login
                </button>
                <?php echo form_close(); ?>
              </div>
              <hr>
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