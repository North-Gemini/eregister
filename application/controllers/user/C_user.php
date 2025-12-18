<?php
// session_start();
class C_user extends CI_Controller {

    public function __construct() {
        parent::__construct();
        if ($this->session->userdata('username')=="") {
            redirect('auth');
        }
        $this->load->model('m_data');
        $this->load->helper('text');
    }
    public function index() {
        $data['username'] = $this->session->userdata('username');
        $data['tamu'] = $this->m_data->tampil_data()->result();
        $data['pegawai'] = $this->m_data->getAllPegawai()->result();
        $this->load->view('auth/inputan', $data);
    }
    public function logout(){
        $this->session->unset_userdata('username');
        $this->session->unset_userdata('level');
        session_destroy();
        redirect('auth');
    }
}
?>