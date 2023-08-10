<?php defined('BASEPATH') OR exit('No direct script access allowed') ?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Visitor Attendance</title>
	<link rel="icon" href="<?php echo base_url()?>assets/images/medcom.png" type="image/x-icon">
	<!-- Tell the browser to be responsive to screen width -->
	<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
	<!-- Bootstrap 3.3.7 -->
	<link rel="stylesheet" href="<?php echo base_url() ?>assets/adminlte/bower_components/bootstrap/dist/css/bootstrap.min.css">
	<!-- Font Awesome -->
	<link rel="stylesheet" href="<?php echo base_url() ?>assets/adminlte/bower_components/font-awesome/css/font-awesome.min.css">
	<!-- Ionicons -->
	<link rel="stylesheet" href="<?php echo base_url() ?>assets/adminlte/bower_components/Ionicons/css/ionicons.min.css">
	<!-- DataTables -->
	<link rel="stylesheet" href="<?php echo base_url() ?>assets/adminlte/bower_components/datatables.net-bs/css/dataTables.bootstrap.min.css">
	<!-- Theme style -->
	<link rel="stylesheet" href="<?php echo base_url() ?>assets/adminlte/dist/css/AdminLTE.min.css">
<!-- AdminLTE Skins. Choose a skin from the css/skins
	folder instead of downloading all of them to reduce the load. -->
	<link rel="stylesheet" href="<?php echo base_url() ?>assets/adminlte/dist/css/skins/_all-skins.min.css">

	<!-- Google Font -->
	<link rel="stylesheet" href="<?php echo base_url() ?>assets/font.css">
	
	<link rel="stylesheet" href="<?php echo base_url() ?>assets/css/buttons.dataTables.min.css">
	<!-- SweetAlert-->
	<link href="<?php echo base_url(); ?>assets/sweetalert/sweetalert.css" rel="stylesheet">
</head>
<!-- ADD THE CLASS layout-top-nav TO REMOVE THE SIDEBAR. -->
<body class="hold-transition skin-black layout-top-nav">
	<div class="wrapper">

		<header class="main-header">
			<nav class="navbar navbar-static-top">
			</nav>
		</header>
		<!-- Full Width Column -->
		<div class="content-wrapper">
			<div class="container">
				<!-- Content Header (Page header) -->
				<section class="content-header">
					<h1>Visitor</h1>
				</section>

				<!-- Main content -->
				<section class="content">
					<div class="row">
						<div class="col-xs-6">
							<div class="box">
								<div class="box-header">
									<h3 class="box-title">Data Baru</h3>
								</div>
								<form role="form" class="form-group" id="add-form" method="POST">
									<div class="box-body">
										<label for="vis_name">Nama</label>
										<input type="text" name="vis_name" class="form-control">
										<label for="vis_title">Jabatan</label>
										<input type="text" name="vis_title" class="form-control" >
										<label for="vis_title">No. Meja</label>
										<input type="text" name="vis_ket" class="form-control" >
									</div>
									<div class="box-footer">
										<button type="submit" id="submitBtn" class="btn btn-primary">Simpan</button>
									</div>
								</form>
							</div>
						</div>
						<div class="col-xs-6">
							<div class="box">
								<div class="box-header">
									<h3 class="box-title">Scan Barcode</h3>
								</div>
								<div class="box-body form-group">
									<input type="text" name="qr_id" id="qr_id" class="form-control">
								</div>
								<div class="box-footer"></div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-xs-12">
							<div class="box">
								<div class="box-header">
									<h3 class="box-title">Data Visitor</h3>
								</div>
								<div class="box-body">
									<table id="example" class="table table-bordered table-hover">
										<thead>
											<tr>
												<th>#ID</th>
												<th>Nama</th>
												<th>Jabatan</th>
												<th>No. Meja</th>
												<th>Waktu Kedatangan</th>
											</tr>
										</thead>
										<tbody></tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
				</section>
				<!-- /.content -->
			</div>
			<!-- /.container -->
		</div>
		<!-- /.content-wrapper -->
		<footer class="main-footer">
			<div class="container">
			</div>
			<!-- /.container -->
		</footer>
	</div>
	<!-- ./wrapper -->

	<!-- jQuery 3 -->
	<script src="<?php echo base_url() ?>assets/adminlte/bower_components/jquery/dist/jquery.min.js"></script>
	<!-- Bootstrap 3.3.7 -->
	<script src="<?php echo base_url() ?>assets/adminlte/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
	<!-- DataTables -->
	<script src="<?php echo base_url() ?>assets/adminlte/bower_components/datatables.net/js/jquery.dataTables.min.js"></script>
	<script src="<?php echo base_url() ?>assets/adminlte/bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
	<!-- SlimScroll -->
	<script src="<?php echo base_url() ?>assets/adminlte/bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
	<!-- FastClick -->
	<script src="<?php echo base_url() ?>assets/adminlte/bower_components/fastclick/lib/fastclick.js"></script>
	<!-- AdminLTE App -->
	<script src="<?php echo base_url() ?>assets/adminlte/dist/js/adminlte.min.js"></script>
	<!-- AdminLTE for demo purposes -->
	<script src="<?php echo base_url() ?>assets/adminlte/dist/js/demo.js"></script>
	<script src="<?php echo base_url() ?>assets/js/dataTables.buttons.min.js"></script>
	<script src="<?php echo base_url() ?>assets/js/buttons.flash.min.js"></script>
	<script src="<?php echo base_url() ?>assets/js/jszip.min.js"></script>
	<script src="<?php echo base_url() ?>assets/js/buttons.html5.min.js"></script>
	<script src="<?php echo base_url() ?>assets/js/jquery.form.min.js"></script>
	<script src="<?php echo base_url(); ?>assets/sweetalert/sweetalert.min.js"></script>

	<script type="text/javascript">
		var base_url = '<?php echo base_url(); ?>';

		$(document).ready(function () {

			$('#qr_id').focus();

			example();

			function example(){

				$('#example').DataTable({
					"processing" : true,
					"language": {
						"processing": '<i class="fa fa-spinner fa-pulse fa-3x fa-fw"></i><span class="sr-only">Loading...</span>'
					},
					"serverSide": true, 
					'destroy' : true,
					"order": [], 
					"ajax": {
						"url": base_url + "site/view_visitor",
						"type": "POST"
					},
					"searchDelay" : 750,
				});

			}

			

			$("#add-form").ajaxForm({
				url : base_url + "site/ajax_validation",
				dataType : "JSON",
				beforeSubmit : function(){
					$("#submitBtn").html ( "Please wait..." ).removeClass("btn-primary").addClass("btn-warning").prop("disabled", true);
				},
				success : function(data){
					if ( data.type == 'done' ){
						swal({
							title : "Success!", 
							text : data.msg, 
							type : "success"
						}, 
						function(){
							localStorage.setItem('name', data.vis_name);
							localStorage.setItem('jabatan', data.vis_title);
							localStorage.setItem('keterangan', data.vis_ket);
							// window.location.reload();
							example();
						}
						);
					}
					else{
						swal({
							title : "Error!", 
							text : data.msg, 
							type : "error"
						}, 
						function(){
							swal.close();
							$("#submitBtn").html ( "SAVE CHANGES" ).removeClass("btn-warning").addClass("btn-primary").prop("disabled", false);
						}
						);
					}
				}
			});

			$('#qr_id').keyup(function(e) {
				var val = $(this).val();
				var id = val.split('-');
				var vis_id = {'key' : id[0]}

				if(e.keyCode == 13){

					$.ajax({
						url : base_url + 'site/find_data',
						type : 'POST',
						dataType : 'JSON',
						data : vis_id,
						success : function (data) {
							if(data.msg == "No data found."){
								alert(data.msg);
								$('#qr_id').val('');
								$('#qr_id').focus();
							}else{
								$.ajax({
									url : base_url + 'site/update_data',
									type : 'POST',
									dataType : 'JSON',
									data : vis_id,
									success : function (rsp) {
										console.log(rsp.check);
										localStorage.setItem('name', rsp.check[0].vis_name);
										localStorage.setItem('jabatan', rsp.check[0].vis_title);
										localStorage.setItem('keterangan', rsp.check[0].vis_ket);
										$('#qr_id').val('');
										$('#qr_id').focus();
										example();
									}
								});
							}
						}
					});
				}
			});

		});

	</script>
</body>
</html>