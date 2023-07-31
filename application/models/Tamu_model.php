<?php defined('BASEPATH') OR exit('No direct script access allowed');

class tamu_model extends CI_Model
{
    private $id_tamu;
    private $nama;
    private $nomor;
    private $pekerjaan;
    private $instansi;
    private $tujuan;
    private $tgl;
    private $jam;

    public function getAll(){
        return $this->db->get($this->_table)->result();
    }

    public function getById($id){
        return $this->db->get_where($this->_table, ["id_tamu" => $id])->row();
    }

    public function save()
    {
        $post = $this->input->post();
        $this->id_tamu = uniqid();
        $this->nama = $post["nama"];
        $this->nomor = $post["nomor"];
        $this->pekerjaan = $post["pekerjaan"];
        $this->instansi = $post["instansi"];
        $this->tujuan = $post["tujuan"];
        $this->tgl = $post["tgl"];
        $this->jam = $post["jam"];
        return $this->db->insert($this->_table, $this);
    }

    public function update()
    {
        $post = $this->input->post();
        $this->id_tamu = $post["id"];
        $this->nama = $post["nama"];
        $this->nomor = $post["nomor"];
        $this->pekerjaan = $post["pekerjaan"];
        $this->instansi = $post["instansi"];
        $this->tujuan = $post["tujuan"];
        $this->tgl = $post["tgl"];
        $this->jam = $post["jam"];
        return $this->db->update($this->_table, $this, array('id_tamu' => $post['id']));
    }

    public function delete($id)
    {
        return $this->db->delete($this->_table, array("id_tamu" => $id));
    }
}
