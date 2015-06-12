<?php
class Branch_model extends CI_Model {
	private $module = 'branch';
	private $table = 'branch';

	function getsearchContent($limit,$page){
		$this->db->select('*');
		$this->db->limit($limit,$page);
		$this->db->order_by($this->input->post('func_order_by'),$this->input->post('order_by'));
		if($this->input->post('content')!=''){
			$this->db->where('(`name` LIKE "%'.$this->input->post('content').'%" OR `address` LIKE "%'.$this->input->post('content').'%" OR `phone` LIKE "%'.$this->input->post('content').'%")');
		}
		if($this->input->post('dateFrom')!='' && $this->input->post('dateTo')==''){
			$this->db->where('created >= "'.date('Y-m-d 00:00:00',strtotime($this->input->post('dateFrom'))).'"');
		}
		if($this->input->post('dateFrom')=='' && $this->input->post('dateTo')!=''){
			$this->db->where('created <= "'.date('Y-m-d 23:59:59',strtotime($this->input->post('dateTo'))).'"');
		}
		if($this->input->post('dateFrom')!='' && $this->input->post('dateTo')!=''){
			$this->db->where('created >= "'.date('Y-m-d 00:00:00',strtotime($this->input->post('dateFrom'))).'"');
			$this->db->where('created <= "'.date('Y-m-d 23:59:59',strtotime($this->input->post('dateTo'))).'"');
		}
		$query = $this->db->get(PREFIX.$this->table);

		if($query->result()){
			return $query->result();
		}else{
			return false;
		}
	}
	
	function getTotalsearchContent(){
		$this->db->select('*');
		if($this->input->post('content')!='' && $this->input->post('content')!='type here...'){
			$this->db->where('(`name` LIKE "%'.$this->input->post('content').'%" OR `address` LIKE "%'.$this->input->post('content').'%" OR `phone` LIKE "%'.$this->input->post('content').'%")');
		}
		if($this->input->post('dateFrom')!='' && $this->input->post('dateTo')==''){
			$this->db->where('created >= "'.date('Y-m-d 00:00:00',strtotime($this->input->post('dateFrom'))).'"');
		}
		if($this->input->post('dateFrom')=='' && $this->input->post('dateTo')!=''){
			$this->db->where('created <= "'.date('Y-m-d 23:59:59',strtotime($this->input->post('dateTo'))).'"');
		}
		if($this->input->post('dateFrom')!='' && $this->input->post('dateTo')!=''){
			$this->db->where('created >= "'.date('Y-m-d 00:00:00',strtotime($this->input->post('dateFrom'))).'"');
			$this->db->where('created <= "'.date('Y-m-d 23:59:59',strtotime($this->input->post('dateTo'))).'"');
		}
		$query = $this->db->count_all_results(PREFIX.$this->table);

		if($query > 0){
			return $query;
		}else{
			return false;
		}
	}
	
	function getDetailManagement($id){
		$this->db->select('*');
		$this->db->where('id',$id);
		$query = $this->db->get(PREFIX.$this->table);

		if($query->result()){
			return $query->result();
		}else{
			return false;
		}
	}
	
	function saveManagement($fileName=''){
		if($this->input->post('hiddenIdAdmincp')==0){
			//Kiểm tra đã tồn tại chưa?
			$checkData = $this->checkData($this->input->post('nameAdmincp'));
			if($checkData){
				print 'error-title-exists.'.$this->security->get_csrf_hash();
				exit;
			}

			$data = array(
				'name'=> trim($this->input->post('nameAdmincp')),
				'order'=> trim($this->input->post('orderAdmincp')),
				'address'=> trim($this->input->post('addressAdmincp')),
				'phone'=> trim($this->input->post('phoneAdmincp')),
				'website'=> trim($this->input->post('websiteAdmincp')),
				'email'=> trim($this->input->post('emailAdmincp')),
				'image'=> trim($fileName['image']),
				'status'=> ($this->input->post('statusAdmincp')=='on')?1:0,
				'created'=> date('Y-m-d H:i:s',time()),
			);
			if($this->db->insert(PREFIX.$this->table,$data)){
				modules::run('admincp/saveLog',$this->module,$this->db->insert_id(),'Add new','Add new');
				return true;
			}
		}else{
			$result = $this->getDetailManagement($this->input->post('hiddenIdAdmincp'));
			//Kiểm tra đã tồn tại chưa?
			if($result[0]->name!=$this->input->post('nameAdmincp')){
				$checkData = $this->checkData($this->input->post('nameAdmincp'),$this->input->post('hiddenIdAdmincp'));
				if($checkData){
					print 'error-title-exists.'.$this->security->get_csrf_hash();
					exit;
				}
			}
			
			//Xử lý xóa hình khi update thay đổi hình
			if($fileName['image']==''){
				$fileName['image'] = $result[0]->image;
			}else{
				@unlink(BASEFOLDER.DIR_UPLOAD_BRANCH.$result[0]->image);
			}
			//End xử lý xóa hình khi update thay đổi hình
			
			$data = array(
				'name'=> trim($this->input->post('nameAdmincp')),
				'order'=> trim($this->input->post('orderAdmincp')),
				'address'=> trim($this->input->post('addressAdmincp')),
				'phone'=> trim($this->input->post('phoneAdmincp')),
				'website'=> trim($this->input->post('websiteAdmincp')),
				'email'=> trim($this->input->post('emailAdmincp')),
				'image'=> trim($fileName['image']),
				'status'=> ($this->input->post('statusAdmincp')=='on')?1:0,
			);
			modules::run('admincp/saveLog',$this->module,$this->input->post('hiddenIdAdmincp'),'','Update',$result,$data);
			$this->db->where('id',$this->input->post('hiddenIdAdmincp'));
			if($this->db->update(PREFIX.$this->table,$data)){
				return true;
			}
		}
		return false;
	}
	
	function checkData($name,$id=0){
		$this->db->select('id');
		$this->db->where('name',$name);
		if($id!=0){
			$this->db->where_not_in('id',array($id));
		}
		$this->db->limit(1);
		$query = $this->db->get(PREFIX.$this->table);

		if($query->result()){
			return true;
		}else{
			return false;
		}
	}
	
	/*----------------------FRONTEND----------------------*/
	function getData(){
		$this->db->select('*');
		$this->db->where('status',1);
		$this->db->order_by('order','DESC');
		$query = $this->db->get(PREFIX.$this->table);

		if($query->result()){
			return $query->result();
		}else{
			return false;
		}
	}
	/*--------------------END FRONTEND--------------------*/
}