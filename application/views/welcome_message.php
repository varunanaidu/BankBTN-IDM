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
	<link href="https://fonts.googleapis.com/css?family=Alfa+Slab+One&display=swap" rel="stylesheet">
	<!-- Ionicons -->
	<link rel="stylesheet" href="<?php echo base_url() ?>assets/adminlte/bower_components/Ionicons/css/ionicons.min.css">
	<!-- Theme style -->
	<link rel="stylesheet" href="<?php echo base_url() ?>assets/adminlte/dist/css/AdminLTE.min.css">
<!-- AdminLTE Skins. Choose a skin from the css/skins
	folder instead of downloading all of them to reduce the load. -->
	<link rel="stylesheet" href="<?php echo base_url() ?>assets/adminlte/dist/css/skins/_all-skins.min.css">

	<!-- Google Font -->
	<link rel="stylesheet" href="<?php echo base_url() ?>assets/font.css">
	<link rel="stylesheet" href="<?php echo base_url() ?>assets/adminlte/bower_components/datatables.net-bs/css/dataTables.bootstrap.min.css">
	<link rel="stylesheet" href="<?php echo base_url() ?>assets/css/buttons.dataTables.min.css">
	<link href="https://fonts.googleapis.com/css?family=Alatsi&display=swap" rel="stylesheet">

	<style>
		h1{
			font-family: 'Alatsi', sans-serif;
			text-align: center;
			color: #0C3A5C;
			font-size: 45pt;
		}
		.wrap {
			margin-top: 30%;
		}
		.devine {
			background: url(<?php echo base_url() ?>assets/images/bg_idmbtn.jpg); 
			background-repeat: no-repeat;
			background-size: 1900px 985px;
			float: left;
			width: 100%;
			text-align: center;
			height: 950px;
		}

		.frame {
			max-width: 1200px;
			width: 100%;
			margin: auto;
			display: block;
		}
	</style>


</head>

<!-- ADD THE CLASS layout-top-nav TO REMOVE THE SIDEBAR. -->
<body class="hold-transition skin-black layout-top-nav">
	<div class="wrapper">
		<!-- Full Width Column -->
		<div class="content-wrapper">

			<!-- Main content -->
			<section class="content">
				<div class="box">
					<div class="box-body">
						<div class="devine">
							<div class="frame">
								<div class="wrap">
									<h1> WELCOME </h1>
									<h1 id="vis_name"> </h1>
									<h1 id="vis_title"> </h1>
									<h1 id="vis_ket"> </h1>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>

		</div>
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

	<script type="text/javascript">
		var base_url = '<?php echo base_url(); ?>';
		console.log(document.cookie);
		setInterval(function(){


			var key = {'name' : localStorage.name, 'jabatan' : localStorage.jabatan, 'keterangan' : localStorage.keterangan};

			$.ajax({
				url : base_url + 'site/get_data',
				type : 'POST',
				dataType : 'JSON',
				data : key,
				success : function (data){
					$("#vis_name").text(data.name);
					$("#vis_title").text(data.jabatan);
					$("#vis_ket").text(data.keterangan);
				}
			});



		}, 1000);
	</script>
</body>
</html>