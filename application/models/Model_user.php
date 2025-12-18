<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class model_user extends CI_Model {
	public function cek_user($data) {
		$query = $this->db->get_where('login_session', $data);
		$this->load->library('form_validation');
		$this->load->library('session');
		return $query;
	}
	function getAllPegawai()
	{
		return $this->db->get('pegawai');
	}
	function tampil_data()
	{
		return $this->db->get('tamu');
	}

}
?>
