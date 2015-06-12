<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Home extends MX_Controller {

	function __construct(){
		parent::__construct();
	}
	
	/*------------------------------------ FRONTEND ------------------------------------*/
	public function index(){
		$this->load->model('News/News_model');
		$this->load->model('Static_pages/Static_pages_model');
		$data['result'] = $this->News_model->getData();
		$data['introduce'] = $this->Static_pages_model->getData('gioi-thieu-ve-dong-shop-sun');
		
		$this->template->write('title','Yamato');
		if (empty($data))
		    $this->template->write_view('content','index',$data);
		$this->template->render();
	}
	public function procedure(){
		$this->load->model('Static_pages/Static_pages_model');
		$data['result'] = $this->Static_pages_model->getData('thu-tuc-thuc-hien');//var_dump($data['introduce']);exit();
		$this->template->write('title','Yamato');
		$this->template->write_view('content','procedure',$data);
		$this->template->render();
	}

	public function getFooter(){
		$this->load->model('Static_pages/Static_pages_model');
		$data_footer = $this->Static_pages_model->getData('noi-dung-footer');
		return parserEditorHTML($data_footer[0]->content);
	}

	/*------------------------------------ End FRONTEND --------------------------------*/
}