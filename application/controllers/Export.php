<?php defined('BASEPATH') OR die('No direct script access allowed');

require('./application/third_party/phpoffice/vendor/autoload.php');

use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;

class Export extends CI_Controller {

     public function __construct()
     {
          parent::__construct();
         $this->load->model('m_data');
     }

     public function exportBro()
     {
          $tamu = $this->m_data->getAll()->result();

          $spreadsheet = new Spreadsheet;

          $spreadsheet->setActiveSheetIndex(0)
                      ->setCellValue('A1', 'No')
                      ->setCellValue('B1', 'Nama')
                      ->setCellValue('C1', 'Nomor Handphone')
                      ->setCellValue('D1', 'Pekerjaan')
                      ->setCellValue('E1', 'Instansi')
                      ->setCellValue('F1', 'Tujuan')
                      ->setCellValue('G1', 'Topik')
                      ->setCellValue('H1', 'Tanggal');

          $kolom = 2;
          $nomor = 1;
          foreach($tamu as $pengguna) {

               $spreadsheet->setActiveSheetIndex(0)
                           ->setCellValue('A' . $kolom, $nomor)
                           ->setCellValue('B' . $kolom, $pengguna->nama)
                           ->setCellValue('C' . $kolom, $pengguna->no_tlp)
                           ->setCellValue('D' . $kolom, $pengguna->pekerjaan)
                           ->setCellValue('E' . $kolom, $pengguna->lembaga)
                           ->setCellValue('F' . $kolom, $pengguna->tujuan)
                           ->setCellValue('G' . $kolom, $pengguna->topik)
                           ->setCellValue('H' . $kolom, $pengguna->tanggal);
                        //    ->setCellValue('D' . $kolom, date('j F Y', strtotime($pengguna->tanggal_lahir)))
                        //    ->setCellValue('E' . $kolom, $pengguna->umur);

               $kolom++;
               $nomor++;

          }

          $writer = new Xlsx($spreadsheet);

          header('Content-Type: application/vnd.ms-excel');
	  header('Content-Disposition: attachment;filename="DataTamu.xlsx"');
	  header('Cache-Control: max-age=0');

	  $writer->save('php://output');
     }
}