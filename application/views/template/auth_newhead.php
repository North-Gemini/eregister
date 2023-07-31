<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=0, shrink-to-fit=no">
	<meta name="description" content="">
	<meta name="author" content="">

	<link rel="shortcut icon" type="image/x-icon" href="<?php echo base_url('assets/img/Balittas.png'); ?>">
	<title>Buku Tamu</title>
	<link rel="stylesheet" type="text/css" href="<?= base_url('assets/'); ?>assetsadm/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="<?= base_url('assets/'); ?>assetsadm/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="<?= base_url('assets/'); ?>assetsadm/css/select2.min.css">
	<link rel="stylesheet" type="text/css" href="<?= base_url('assets/'); ?>assetsadm/css/dataTables.bootstrap4.min.css">
	<link rel="stylesheet" type="text/css" href="<?= base_url('assets/'); ?>assetsadm/css/bootstrap-datetimepicker.min.css">
	<link rel="stylesheet" type="text/css" href="<?= base_url('assets/'); ?>assetsadm/css/style.css">

	<link href="<?= base_url('assets/'); ?>vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

	<!-- Custom styles for this template-->
	<link href="<?= base_url('assets/'); ?>css/sb-admin-2.min.css" rel="stylesheet">
</head>
<body>
	<div class="main-wrapper">
		<div class="header">
			<div class="header-left">
				<a href="index.php" class="logo">
					<img src="<?php echo base_url('assets/img/balitkabi.png'); ?>" width="200" height="40" alt="">
				</a>
			</div>
			<!-- <a id="toggle_btn" href="javascript:void(0);"><i class="fa fa-bars"></i></a> -->
			<!-- <a id="mobile_btn" class="mobile_btn float-left" href="#sidebar"><i class="fa fa-bars"></i></a> -->
			<ul class="nav user-menu float-right">
				<li class="nav-item dropdown has-arrow">
					<a href="#" class="dropdown-toggle nav-link user-link" data-toggle="dropdown">
						<span class="user-img"><img class="rounded-circle" src="<?php echo base_url('assets/assetsadm/img/user.jpg'); ?>" width="40" alt="Admin">
							<span class="status online"></span></span>
							<span>Admin</span>
						</a>
						<div class="dropdown-menu">
							<a class="dropdown-item" href="<?php echo base_url('auth/logout'); ?>">Logout</a>
						</div>
					</li>
				</ul>
				<div class="dropdown mobile-user-menu float-right">
					<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-ellipsis-v"></i></a>
					<div class="dropdown-menu dropdown-menu-right">
						<a class="dropdown-item" href="<?php echo base_url('auth/logout'); ?>">Logout</a>
					</div>
				</div>
			</div>
			<div class="sidebar" id="sidebar">
				<div class="sidebar-inner slimscroll">
					<div id="sidebar-menu" class="sidebar-menu">
						<ul>
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
								</ul>
							</div>
						</div>
					</div>