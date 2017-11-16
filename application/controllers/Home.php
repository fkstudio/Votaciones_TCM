<?php

defined('BASEPATH') OR exit('No direct script access allowed');

session_start();

class Home extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model("Poll_Model");
		$metodo = $this->router->fetch_method();
		if( !isset( $_SESSION['Login_Start'] ) && $metodo != 'index' && $metodo != 'save_poll' && $metodo != 'get_emp' && $metodo != 'get_all' && $metodo != 'get_employees' && $metodo != 'get_vote_by_id' )
		{
			redirect('Home');
		}
	}

	public function index()
	{
		$this->load->view('index');
	}

	public function monitor()
	{
		$this->load->view('monitor');
	}

	public function save_poll()
	{
		$data = $this->input->post();
		$info = array(
			'ID_Encuesta'  	  => '',
			'ID_Base'         => $data['ID_Base'],
			'ID_Votante'      => $data['ID_Votante'],
			'ID_Seleccion'    => $data['ID_Seleccion'],
			'Fecha_Tiempo'    => date('Y-m-d H:i:s')
		);
		$this->Poll_Model->insert($info);
	}

	public function get_charts()
	{
		$rs = $this->Poll_Model->get();
		$data = array();
		foreach($rs as $dat)
		{
			$data[] = array(
				'label'    => $dat['Nombre'],
				'value'    => (int)$dat['Votos']
			);
		}
		$data = json_encode( $data );
		return $data;
	}

	public function get_vote_by_id ( $id )
	{
		$results = $this->Poll_Model->vote_by_id ( $id );
		$data = Array();
		foreach($results as $dat) {
			$data[] = array(
				"ID_Votante" 			 => $dat->ID_Votante,
			);
		}
		echo json_encode($data);
	}

	public function get_employees()
	{
		$results = $this->Poll_Model->get_emp();
		$data = Array();
		foreach($results as $dat) {
			$data[] = array(
				"0" => $dat->Nombre_Bas,
				"1" => $dat->Nombre_Emp . ' ' . $dat->Apellidos_Emp,
				"2" => $dat->Votos
			);
		}
		$confi = array(
			"sEcho"=>1,
			"iTotalRecords"=>count($data),
			"iTotalDisplayRecords"=>count($data),
			"aaData"=>$data);
			echo json_encode($confi);
		}

		public function get_emp( $id )
		{
			$rs = $this->Poll_Model->get_emp_id($id);
			$data = array();
			foreach( $rs as $dat )
			{
				$data[] = array(
					'0'    => $dat['Nombre_Bas'],
					'1'    => $dat['Nombre_Emp'] . ' ' . $dat['Apellidos_Emp'],
					'2'    => $dat['Votos']
				);
			}
			$confi = array(
				"sEcho"=>1,
				"iTotalRecords"=>count($data),
				"iTotalDisplayRecords"=>count($data),
				"aaData"=>$data);
				echo json_encode($confi);
			}

			public function get_all( $id = null )
			{

				$results = $this->Poll_Model->get_all_emp( $id );
				$data = Array();
				foreach($results as $dat) {
					$data[] = array(
						"ID" 	   => $dat->ID_Empleado,
						"Empleado" => $dat->Nombre . ' ' . $dat->Apellidos,
					);
				}
				echo json_encode($data);
			}

			public function logout(){
				unset($_SESSION['Login_Start']);
				redirect('Home');
			}

		}
