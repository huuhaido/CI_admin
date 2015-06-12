<script type="text/javascript">
function save(){
	var options = {
		beforeSubmit:  showRequest,  // pre-submit callback 
		success:       showResponse  // post-submit callback 
    };
	$('#frmManagement').ajaxSubmit(options);
}

function showRequest(formData, jqForm, options) {
	var form = jqForm[0];
	if(form.nameAdmincp.value == '' || form.addressAdmincp.value == '' || form.phoneAdmincp.value == ''){
		$('#txt_error').html('Please enter information.');
		show_perm_denied();
		return false;
	}

    <?php if($id==0){ ?>
        if($('#imageAdmincp').val() == ''){
            $('#txt_error').html('Please enter information.');
            show_perm_denied();
            return false;
        }
    <?php } ?>
	
	if(!validateEmail(form.emailAdmincp.value) && form.emailAdmincp.value !=''){
		$('#txt_error').html('Invalid email.');
		show_perm_denied();
		return false;
	}
}

function showResponse(responseText, statusText, xhr, $form) {
	responseText = responseText.split(".");
	token_value  = responseText[1];
	$('#csrf_token').val(token_value);
	if(responseText[0]=='success'){
		show_perm_success();
	}
	
	if(responseText[0]=='error-title-exists'){
		$('#txt_error').html('Name already exists.');
		show_perm_denied();
		return false;
	}
	
	if(responseText[0]=='error-image-upload'){
		$('#txt_error').html('Only upload image.');
		show_perm_denied();
		return false;
	}

	if(responseText[0]=='permission-denied'){
		$('#txt_error').html('Permission denied.');
		show_perm_denied();
		return false;
	}
}

function validateEmail(email) {
    var re = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i;
    return re.test(email);
}
</script>
<!-- BEGIN PAGE HEADER-->
<h3 class="page-title"><?=$this->session->userdata('Name_Module')?></h3>
<div class="page-bar">
	<ul class="page-breadcrumb">
		<li><i class="fa fa-home"></i><a href="<?=PATH_URL_ADMIN?>">Home</a><i class="fa fa-angle-right"></i></li>
		<li><a href="<?=PATH_URL_ADMIN.$module?>"><?=$this->session->userdata('Name_Module')?></a><i class="fa fa-angle-right"></i></li>
		<li><?php ($this->uri->segment(4)=='') ? print 'Add new' : print 'Edit' ?></li>
	</ul>
</div>
<!-- END PAGE HEADER-->
<!-- BEGIN PAGE CONTENT-->
<div class="row">
	<div class="col-md-12">
		<!-- BEGIN EXAMPLE TABLE PORTLET-->
		<div class="portlet box grey-cascade">
			<div class="portlet-title">
				<div class="caption">
					<i class="fa fa-globe"></i>Form Information
				</div>
			</div>
			
			<div class="portlet-body form">
				<div class="form-body notification" style="display:none">
					<div class="alert alert-success" style="display:none">
						<strong>Success!</strong> The page has been saved.
					</div>
					
					<div class="alert alert-danger" style="display:none">
						<strong>Error!</strong> <span id="txt_error"></span>
					</div>
				</div>
				
				<!-- BEGIN FORM-->
				<form id="frmManagement" action="<?=PATH_URL_ADMIN.$module.'/save/'?>" method="post" enctype="multipart/form-data" class="form-horizontal form-row-seperated">
					<input type="hidden" value="<?=$this->security->get_csrf_hash()?>" id="csrf_token" name="csrf_token" />
					<input type="hidden" value="<?=$id?>" name="hiddenIdAdmincp" />
					<div class="form-body">
						<div class="form-group">
							<label class="control-label col-md-3">Status</label>
							<div class="col-md-9">
								<div class="checkbox-list">
									<label class="checkbox-inline">
										<div class="checkbox"><span><input <?php if(isset($result->status)){ if($result->status==1){ ?>checked="checked"<?php }}else{ ?>checked="checked"<?php } ?> type="checkbox" name="statusAdmincp"></span></div>
									</label>
								</div>
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-md-3">Order</label>
							<div class="col-md-9"><input value="<?php if(isset($result->order)) { print $result->order; }else{ print '0';} ?>" type="text" name="orderAdmincp" class="form-control"/></div>
						</div>
						<div class="form-group">
							<label class="control-label col-md-3">Image <span class="required" aria-required="true">*</span></label>
							<div class="col-md-9"><input style="margin-top:7px" type="file" id="imageAdmincp" name="fileAdmincp[image]" /><br/><?php if(isset($result->image)){ if($result->image!=''){ ?><img src="<?=resizeImage(PATH_URL.DIR_UPLOAD_BRANCH.$result->image,200)?>" /><?php }} ?></div>
						</div>
						<div class="form-group">
							<label class="control-label col-md-3">Name <span class="required" aria-required="true">*</span></label>
							<div class="col-md-9"><input value="<?php if(isset($result->name)) { print $result->name; }else{ print '';} ?>" type="text" name="nameAdmincp" class="form-control"/></div>
						</div>
						<div class="form-group">
							<label class="control-label col-md-3">Address <span class="required" aria-required="true">*</span></label>
							<div class="col-md-9"><input value="<?php if(isset($result->address)) { print $result->address; }else{ print '';} ?>" type="text" name="addressAdmincp" class="form-control"/></div>
						</div>
						<div class="form-group">
							<label class="control-label col-md-3">Phone <span class="required" aria-required="true">*</span></label>
							<div class="col-md-9"><input value="<?php if(isset($result->phone)) { print $result->phone; }else{ print '';} ?>" type="text" name="phoneAdmincp" class="form-control"/></div>
						</div>
						<!-- <div class="form-group">
							<label class="control-label col-md-3">Website</label>
							<div class="col-md-9"><input value="<?php if(isset($result->website)) { print $result->website; }else{ print '';} ?>" type="text" name="websiteAdmincp" class="form-control"/></div>
						</div> -->
						<div class="form-group last">
							<label class="control-label col-md-3">Email</label>
							<div class="col-md-9"><input value="<?php if(isset($result->email)) { print $result->email; }else{ print '';} ?>" type="text" name="emailAdmincp" class="form-control"/></div>
						</div>
					</div>
					<div class="form-actions">
						<div class="row">
							<div class="col-md-offset-3 col-md-9">
								<button onclick="save()" type="button" class="btn green"><i class="fa fa-pencil"></i> Save</button>
								<a href="<?=PATH_URL_ADMIN.$module.'/#/back'?>"><button type="button" class="btn default">Cancel</button></a>
							</div>
						</div>
					</div>
				</form>
				<!-- END FORM-->
			</div>
		</div>
		<!-- END EXAMPLE TABLE PORTLET-->
	</div>
</div>
<!-- END PAGE CONTENT-->