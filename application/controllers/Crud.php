<?php
class Crud extends CI_Controller
{

	function __construct()
	{
		parent::__construct();
		$this->load->model('m_data');
		$this->load->helper('url');
	}

	// function index(){

	// }


	// function tambah(){
	// 	$this->load->view('v_input');
	// }

	function tambah_aksi()
	{
		date_default_timezone_set("Asia/Jakarta");
		// $tgl = date('Y-m-d');
		// $jm = date('H:i:s');

		$pegawaiID = $this->input->post('pegawaiID');
		$nama = $this->input->post('nama');
		$no_tlp = $this->input->post('no_tlp');
		$pekerjaan = $this->input->post('pekerjaan');
		$lembaga = $this->input->post('lembaga');
		$tujuan = $this->input->post('tujuan');
		// $tanggal = $this->input->post('tanggal', $tgl);
		// $jam = $this->input->post('jam', $jm);
		$topik = $this->input->post('topik');
		$jam = date('H:i:s', mktime($this->input->post('jam')));
		$tanggal = date('Y-m-d', mktime($this->input->post('tanggal')));
		$layanan = $this->input->post('layanan');
		$data = array(
			'pegawaiID' => $pegawaiID,
			'nama' => $nama,
			'no_tlp' => $no_tlp,
			'pekerjaan' => $pekerjaan,
			'lembaga' => $lembaga,
			'tujuan' => $tujuan,
			'tanggal' => $tanggal,
			'jam' => $jam,
			'topik' => $topik,
			'status' => 'Sedang Berjalan',
			'layanan' => $layanan
			// 'tgl' => $tgl
		);
		$this->m_data->input_data($data, 'tamu');
		// $where = array('tamuID' => $tamuID);
		// $data['tamu'] = $this->m_cuti->cek_tamu('tamu', $where)->result();
		// $this->load->view('auth/print', $data);

		// $this->session->set_userdata($data);
		redirect('auth/tabel');
	}
	




	// function hapus($tamuID)
	// {
	// 	$where = array('tamuID' => $tamuID);
	// 	$this->m_data->hapus_data($where, 'tamu');
	// 	redirect('auth/admin');
	// }

	function hps($id)
	{
		$where = array('id' => $id);
		$this->m_data->hapus_data($where, 'login_session');
		redirect('auth/add_user');
	}

	public function out()
	{
		$this->session->unset_userdata('tamu');
		redirect('auth/index');
	}
	// function exportExcel(){
	// 	$fileName = 'dataTamu.xlsx';  
	// 	$tamu = $this->m_data->tampil_data();
	// 	$spreadsheet = new Spreadsheet();
	//     $sheet = $spreadsheet->getActiveSheet();
	//    	$sheet->setCellValue('A1', 'Id');
	//     $sheet->setCellValue('B1', 'Nama');
	//     $sheet->setCellValue('C1', 'Nomor Telephone');
	//     $sheet->setCellValue('D1', 'Pekerjaan');
	// 	$sheet->setCellValue('E1', 'Instansi');
	// 	$sheet->setCellValue('F1', 'Tujuan');
	// 	$sheet->setCellValue('G1', 'Tanggal');       
	//     $rows = 2;
	//     foreach ($employeeData as $val){
	//         $sheet->setCellValue('A' . $rows, $val['id']);
	//         $sheet->setCellValue('B' . $rows, $val['nama']);
	//         $sheet->setCellValue('C' . $rows, $val['nomor']);
	//         $sheet->setCellValue('D' . $rows, $val['pekerjaan']);
	//     	$sheet->setCellValue('E' . $rows, $val['instansi']);
	// 		$sheet->setCellValue('F' . $rows, $val['tujuan']);
	// 		$sheet->setCellValue('G' . $rows, $val['tgl']);
	//         $rows++;
	//     } 
	//     $writer = new Xlsx($spreadsheet);
	// 	$writer->save("upload/".$fileName);
	// 	header("Content-Type: application/vnd.ms-excel");
	//     redirect(base_url()."/upload/".$fileName);              
	// }    

}
