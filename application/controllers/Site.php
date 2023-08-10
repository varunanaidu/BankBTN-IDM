<?php
defined('BASEPATH') OR exit('No direct script access allowed');
date_default_timezone_set("Asia/Jakarta");

class Site extends CI_Controller {

	function __construct(){
		parent::__construct();
		$this->load->model("sitemodel");
	}

	function index()
	{
		$this->load->view('view-visitor');
	}

	function find_data()
	{
		/*** Required Area ***/
		$key = $this->input->post("key");
		/*** Optional Area ***/
		/*** Validate Area ***/
		if ( empty($key) ){$this->response['msg'] = "Invalid parameter.";echo json_encode($this->response);exit;}
		/*** Accessing DB Area ***/
		$check = $this->sitemodel->find($key);
		if (!$check) {$this->response['msg'] = "No data found.";echo json_encode($this->response);exit;}
		/*** Result Area ***/
		$this->response['type'] = 'done';
		$this->response['msg'] = $check;
		echo json_encode($this->response);
		exit;
	}

	function view_visitor()
	{
		$data = array();
		$time;
		$res = $this->sitemodel->get_applicant();
		$temp = $this->db->last_query();
		// echo $temp;die;

		foreach ($res as $row) {
			$col = array();
			if (is_null($row->vis_attendance)) {
				$time = '';
			}else{
				$time = date('d M Y H:i:s', strtotime($row->vis_attendance));
			}

			$col[] = $row->id;
			$col[] = $row->vis_name;
			$col[] = $row->vis_title;
			$col[] = $row->vis_ket;
			$col[] = $time;
			$data[] = $col;
		}
		$output = array(
			"draw" 				=> $_POST['draw'],
			"recordsTotal" 		=> $this->sitemodel->get_applicant_count_all(),
			"recordsFiltered" 	=> $this->sitemodel->get_applicant_count_filtered(),
			"data" 				=> $data,
			// "benchmark"			=> $this->benchmark->elapsed_time('code_start', 'code_end'),
			"q"					=> $temp //temp for tracing db query

		);
		echo json_encode($output);
		exit;
	}

	function update_data()
	{
		$key = $this->input->post("key");

		$data = [
			'vis_attendance'	=> date("Y-m-d H:i:s"),
			"is_attend"			=> '1'
		];

		$this->sitemodel->update("tbl_visitor", $data, ['id' => $key]);
		/*** Result Area ***/
		$this->response['type'] = 'done';
		$this->response['msg'] = "Successfully Update data.";

		$check = $this->sitemodel->find($key);
		$this->response['check'] = $check;
		echo json_encode($this->response);
		exit;
	}


	function ajax_validation(){
		$data = array(
			"vis_name" 			=> $this->input->post('vis_name'),
			"vis_title"			=> $this->input->post('vis_title'),
			"vis_ket"			=> $this->input->post('vis_ket'),
			"vis_attendance"	=> date("Y-m-d H:i:s"),
			'is_attend'			=> '1'
		);

		$this->sitemodel->insert("tbl_visitor", $data);

		$msg['type'] = 'done';
		$msg['msg'] = "Successfully add response.";
		$msg['vis_name'] = $data['vis_name'];
		$msg['vis_title'] = $data['vis_title'];
		$msg['vis_ket'] = $data['vis_ket'];
		echo json_encode($msg);
	}

	function get_data(){
/*		$key = $this->input->post("id");
		$check = $this->sitemodel->find($key);*/
		echo json_encode($this->input->post());
	}
}
