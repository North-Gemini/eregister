<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Auth extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        $this->load->model('m_data');
        $this->load->helper('url');
        $this->load->library('form_validation');
    }
    public function index()
    {
        // $data['tamu'] = $this->m_data->tampil_data()->result();
        $data['tamu'] = $this->m_data->tampil_data()->result();
        $data['pegawai'] = $this->m_data->getAllPegawai()->result();
        $this->load->view('template/auth_header');
        $this->load->view('auth/login', $data);
        $this->load->view('template/auth_footer');
    }
    //cek login sebelum redirect ke halaman lain
    public function cek_login() {
        $data = array('username' => $this->input->post('username', TRUE),
            'password' => ($this->input->post('password', TRUE))
        );
    $this->load->model('model_user');// load model_user
    $hasil = $this->model_user->cek_user($data);
    if ($hasil->num_rows() == 1) {
        foreach ($hasil->result() as $sess) {
            $sess_data['logged_in'] = 'Sudah Loggin';
            $sess_data['id'] = $sess->id;
            $sess_data['username'] = $sess->username;
            $sess_data['level'] = $sess->level;
            $this->session->set_userdata($sess_data);
        }
        if ($this->session->userdata('level')=='admin') {
            redirect('admin/c_admin');
        }
        elseif ($this->session->userdata('level')=='user') {
            redirect('user/c_user');
        }
    }
    else {
        echo "<script>alert('Gagal login: Cek username, password!');history.go(-1);</script>";
    }
}



public function admin()
{
    $data['tamu'] = $this->m_data->tampil_data()->result();
    $data['user'] = $this->m_data->ambil_data();


    $this->load->view('template/auth_newhead');
    $this->load->view('auth/newadmin', $data);
    $this->load->view('template/auth_newfoot');
}

public function login()
{
    if ($this->session->userdata('username')) {
        redirect('auth/admin');
    }

    $this->form_validation->set_rules('username', 'Username', 'trim|required');
    $this->form_validation->set_rules('password', 'Password', 'trim|required');

    if ($this->form_validation->run() == false) {
        $this->load->view('template/auth_header');
        $this->load->view('auth/login');
        $this->load->view('template/auth_footer');
    } else {
            // validasinya success
        $this->_login();
    }
}

private function _login()
{
    $username = $this->input->post('username');
    $password = $this->input->post('password');

    $user = $this->db->get_where('user', ['username' => $username])->row_array();

        // jika usernya ada
    if ($user) {
            // jika usernya aktif
        if ($user['is_active'] == 1) {
                // cek password
            if (password_verify($password, $user['password'])) {
                $data = [
                    'username' => $user['username'],

                ];
                $this->session->set_userdata($data);
                redirect('auth/admin');
            } else {
                $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">Wrong password!</div>');
                redirect('auth/login');
            }
        } else {
            $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">This username has not been activated!</div>');
            redirect('auth/login');
        }
    } else {
        $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">Username is not registered!</div>');
        redirect('auth/login');
    }
}


public function add_user()
{

    $data['halo'] = $this->m_data->view_akun()->result();
    $data['user'] = $this->m_data->ambil_data();
        // if ($this->session->userdata('email')) {
        //     redirect('auth/add_user');
        // }

    $this->form_validation->set_rules('nama', 'Name', 'required|trim');
    $this->form_validation->set_rules('username', 'Username', 'required|trim|is_unique[user.username]', [
        'is_unique' => 'This username has already registered!'
    ]);
    $this->form_validation->set_rules('password1', 'Password', 'required|trim|min_length[3]|matches[password2]', [
        'matches' => 'Password dont match!',
        'min_length' => 'Password too short!'
    ]);
    $this->form_validation->set_rules('password2', 'Password', 'required|trim|matches[password1]');

    if ($this->form_validation->run() == false) {
        $this->load->view('template/auth_newhead');
        $this->load->view('auth/add_newuser', $data);
        $this->load->view('template/auth_newfoot');
    } else {
        $username = $this->input->post('username', true);
        $data = [
            'nama' => htmlspecialchars($this->input->post('nama', true)),
            'username' => htmlspecialchars($username),
            'password' => $this->input->post('password1',true),
            'level' => $this->input->post('level', true)
        ];
        $this->db->insert('login_session', $data);
        $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Congratulation! your account has been created. Please activate your account</div>');
        redirect('auth/add_user');
    }
}
public function logout()
{
    $this->session->unset_userdata('username');

    $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert"> You have been logged out!</div>');
    redirect('auth/login');
}

function tabel()
{
    $data['tamu'] = $this->m_data->tabel();
        // $data['tamu'] = $this->m_data->tampil_data()->result();

    $this->load->view('template/auth_header');
    $this->load->view('auth/tabel', $data);
    $this->load->view('template/auth_footer');
}

function print($tamuID)
{
        // $where = array('tamuID' => $tamuID);
        // $data['form'] = $this->m_data->tamu('tamu', $where);
        // $data['tamu'] = $this->db->get_where('tamu', ['tamuID' => $this->session->userdata('tamuID')])->row_array();

    $where = array('tamuID' => $tamuID);
    $data['pegawai'] = $this->m_data->print()->row_array();
    $data['tamu'] = $this->m_data->cek_tamu('tamu', $where);
    $this->load->view('auth/print', $data);
}


function hapusTamu($id){
    $where = array('tamuID' => $id);
    $this->m_data->hapus_datatamu($where,'tamu');
    redirect('admin/c_admin');
}

function editTamu($id){
    $where = array('tamuID' => $id);
    $data['tamu'] = $this->m_data->editTamu($where,'tamu')->result();
    $data['pegawai'] = $this->m_data->getAllPegawai()->result();
    $this->load->view('template/auth_newhead');
    $this->load->view('auth/newedit',$data);
    $this->load->view('template/auth_newfoot');
}

function updateTamu(){
    $id = $this->input->post('tamuID');
    $nama = $this->input->post('nama');
    $no_tlp = $this->input->post('no_tlp');
    $pekerjaan = $this->input->post('pekerjaan');
    $lembaga = $this->input->post('lembaga');
    $layanan = $this->input->post('layanan');
    $pegawaiID = $this->input->post('pegawaiID');
    $tujuan = $this->input->post('tujuan');
    $topik = $this->input->post('topik');
 
    $data = array(
        'nama' => $nama,
        'no_tlp' => $no_tlp,
        'pekerjaan' => $pekerjaan,
        'lembaga' => $lembaga,
        'layanan' => $layanan,
        'pegawaiID' => $pegawaiID,
        'tujuan' => $tujuan,
        'topik' => $topik,
    );
 
    $where = array(
        'tamuID' => $id
    );
 
    $this->m_data->updateTamu($where,$data,'tamu');
    redirect('auth/admin');
}

}
