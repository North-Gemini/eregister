<?php

class Input extends CI_Controller
{
    function _construct()
    {
        parent::_construct();
        $this->load->model('m_data');
    }

    function index()
    {
        $this->load->view('auth/inputan');
    }

    function aneh()
    {
        $data['user'] = $this->db->get_where('user', ['username' => $this->session->userdata('username')])->row_array();
        echo 'Selamat Datang' . $data['user']['name'];
    }
}
