<?php
if (!defined('BASEPATH')) exit('No direct script access allowed');
class M_data extends CI_Model
{

	public function __construct()
	{
		parent::__construct();
	}
	// private $_table = ""
	function tampil_data()
	{
		return $this->db->get('tamu');
	}

	function tabel()
	{
		$this->db->select('*');
		$this->db->from('tamu');
		$this->db->order_by('tamuID', 'desc');
		$this->db->limit(1);
		$query = $this->db->get();
		return $query->result();
	}

	public function getAll()
	{
		$this->db->select('*');
		$this->db->from('tamu');

		return $this->db->get();
	}

	function input_data($data, $table)
	{
		$this->db->insert($table, $data);
	}

	function hapus_data($where, $table)
	{
		$this->db->where($where);
		$this->db->delete($table);
	}

	function tamu($where)
	{
		$this->db->where($where);
	}

	function ambil_data()
	{
		return $this->db->get_where('user', ['username' => $this->session->userdata('username')])->row_array();
	}
	function cek_tamu($where, $table)
	{
		return $this->db->get_where($where, $table)->row_array();
	}

	function ambil_tamu()
	{
		return $this->db->get_where('tamu', ['tamuID' => $this->session->userdata('tamuID')])->row_array();
	}

	function view_akun()
	{
		return $this->db->get('login_session');
	}

	function getAllPegawai()
	{
		return $this->db->get('pegawai');
	}

	function hapus_datatamu($where,$table){
		$this->db->where($where);
		$this->db->delete($table);
	}

	

	function editTamu($where,$table){		
		return $this->db->get_where($table,$where);
	}

	function updateTamu($where,$data,$table){
		$this->db->where($where);
		$this->db->update($table,$data);
	}


	// function getAllTamu()
	// {
	// 	return $this->db->get('tamu');
	// }
	function print()
	{
		$this->db->select('*');
		$this->db->join('pegawai', 'pegawai.pegawaiID = tamu.pegawaiID', 'left');
		$this->db->from('tamu');
		$this->db->order_by('tamuID', 'desc');
		$this->db->limit(1);
		$query = $this->db->get();
		return $query;
	}
}
