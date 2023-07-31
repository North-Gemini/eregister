<?php
// session_start();
class c_admin extends CI_Controller {

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
        $data['pegawai'] = $this->m_data->getAllPegawai()->result();
        $data['tamu'] = $this->m_data->tampil_data()->result();
        $data['user'] = $this->m_data->ambil_data();
        $this->load->view('template/auth_newhead');
        $this->load->view('auth/newadmin', $data);
        $this->load->view('template/auth_newfoot');
    }
    public function logout(){
        $this->session->unset_userdata('username');
        $this->session->unset_userdata('level');
        session_destroy();
        redirect('auth');
    }
}
?>
