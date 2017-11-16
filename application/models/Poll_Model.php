<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Poll_Model extends CI_Model
{
	public function __construct()
  {
		parent::__construct();
	}

	public function insert( $data )
	{
		$this->db->insert( "Encuestas", $data );
	}

	public function get()
	{
		$query = $this->db->select("B.Nombre, COUNT(*) AS Votos")->from("Encuestas E")->join("Bases B","E.ID_Base = B.ID_Base", "inner")->group_by("B.Nombre")->get();
		return ( ($query->num_rows() > 0) ? $query->result_array() : null );
	}

	public function get_all_emp( $id )
	{
		$query = "SELECT * FROM Empleados  ORDER BY Nombre ASC";
		
		/** Get all employees only by base**/
		if($id != null){
			$query = "SELECT * FROM Empleados WHERE ID_Base = {$id} ORDER BY Nombre ASC";
		}
		
		$rs = $this->db->query($query);
		return $rs->result();
	}

	public function get_emp()
	{
		$query = "SELECT Bas.Nombre AS Nombre_Bas, Emp.Nombre AS Nombre_Emp, Emp.Apellidos AS Apellidos_Emp , COUNT(*) AS Votos FROM Encuestas Enc INNER JOIN Empleados Emp ON Enc.ID_Seleccion = Emp.ID_Empleado INNER JOIN Bases Bas ON Emp.ID_Base = Bas.ID_Base GROUP BY Emp.Nombre, Bas.Nombre";
		$rs  = $this->db->query($query);
		return $rs->result();
	}

	public function get_emp_id( $base_name )
	{
		$base_name = rawurldecode($base_name); //decodifica el valor enviado y lo lleva a formato raw
		$query = "SELECT Bas.Nombre AS Nombre_Bas, Emp.Nombre AS Nombre_Emp, Emp.Apellidos AS Apellidos_Emp , COUNT(*) AS Votos FROM Encuestas Enc INNER JOIN Empleados Emp ON Enc.ID_Votante = Emp.ID_Empleado INNER JOIN Bases Bas ON Emp.ID_Base = Bas.ID_Base WHERE Bas.Nombre = '".$base_name ."' GROUP BY Emp.Nombre, Bas.Nombre";
		$rs  = $this->db->query( $query );
		return ( ($rs->num_rows() > 0) ? $rs->result_array() : null );
	}

	public function vote_by_id ( $id )
	{
		$query = "SELECT ID_Votante FROM Encuestas WHERE ID_Votante = {$id}";
		$rs = $this->db->query($query);
		return $rs->result();
	}


}
