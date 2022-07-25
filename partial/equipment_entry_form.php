<?php
    $currentUserId  =   $_SESSION['logged']['user_id'];
    if(!empty($_SESSION['logged']['branch_id']) && !empty($_SESSION['logged']['department_id'])){
?>
<form action="" method="post">
    <div class="row">
        <div class="col-sm-2">
            <div class="form-group">
                <label for="exampleId">Date</label>
                <input name="date" type="text" class="form-control" id="rlpdate" value="<?php echo date("Y-m-d"); ?>" size="30" autocomplete="off" required />
            </div>
        </div>
		<div class="col-sm-2">
            <div class="form-group">
				<label for="division/company">Project:</label>
                <select class="all_emplyees form-control" id="project_id" name="project_id" required >
					<option value="">Please select</option>
					<option value="management">Management</option>
					<option value="non-management">Non-management</option>
					<option value="contractual">Contractual</option>
					<option value="temporary">Temporary</option>
				</select>
			</div>
        </div>
		<div class="col-sm-2">
            <div class="form-group">
				<label for="division/company">Sub Project:</label>
                <select class="all_emplyees form-control" id="sub_project_id" name="sub_project_id" required >
					<option value="">Please select</option>
					<option value="management">Management</option>
					<option value="non-management">Non-management</option>
					<option value="contractual">Contractual</option>
					<option value="temporary">Temporary</option>
				</select>
			</div>
        </div>
        <div class="col-sm-4">
            <div class="form-group">
                <label for="exampleId">Name</label>
                <input name="name" type="text" class="form-control" id="name" value="" autocomplete="off" required />
            </div>
        </div>
		<div class="col-sm-2">
            <div class="form-group">
				<label for="division/company">Type:</label>
                <div class="radio">
                    <label><input type="radio" name="equipment_type" value="1" checked > <span class="label label-success">OWN</span> </label>
                    <label><input type="radio" name="equipment_type" value="2"> <span class="label label-danger">RENTAL</span> </label>
                </div>
			</div>
        </div>
        <div class="col-sm-2">
            <div class="form-group">
                <label for="exampleId">EEL Code</label>
                <input name="eel_code" type="text" class="form-control" id="eel_code" value="" autocomplete="off" required />
            </div>
        </div>
		<div class="col-sm-2">
            <div class="form-group">
				<label for="division/company">Country Origin:</label>
                <select class="all_emplyees form-control" id="origin" name="origin" required >
					<option value="">Please select</option>
					<option value="China">China</option>
					<option value="Germany">Germany</option>
				</select>
			</div>
        </div>
        <div class="col-sm-1">
            <div class="form-group">
                <label for="exampleId">Capacity</label>
                <input name="capacity" type="text" class="form-control" id="capacity" value="" autocomplete="off" required />
            </div>
        </div>
        <div class="col-sm-2">
            <div class="form-group">
                <label for="exampleId">Brand/Make By</label>
                <input name="makeby" type="text" class="form-control" id="makeby" value="" autocomplete="off" required />
            </div>
        </div>
        <div class="col-sm-2">
            <div class="form-group">
                <label for="exampleId">Model</label>
                <input name="model" type="text" class="form-control" id="model" value="" autocomplete="off" required />
            </div>
        </div>
        <div class="col-sm-3">
            <div class="form-group">
                <label for="exampleId">Year of Manufacture</label>
                <input name="year_manufacture" type="text" class="form-control" id="year_manufacture" value="" autocomplete="off" required />
            </div>
        </div>
		<div class="col-sm-2">
            <div class="form-group">
				<label for="division/company">Present Location:</label>
                <select class="all_emplyees form-control" id="present_location" name="present_location" required >
					<option value="">Please select</option>
					<option value="China">China</option>
					<option value="Germany">Germany</option>
				</select>
			</div>
        </div>
		<div class="col-sm-2">
            <div class="form-group">
				<label for="division/company">Present Condition:</label>
                <select class="all_emplyees form-control" id="present_condition" name="present_condition" required >
					<option value="">Please select</option>
					<option value="China">China</option>
					<option value="Germany">Germany</option>
				</select>
			</div>
        </div>
        <div class="col-md-8">
            <div class="form-group">
                <label for="exampleId">Remarks:</label>
                <textarea class="form-control" id="" name="remarks" rows="1"></textarea>
            </div>
        </div>
    </div>
    <div class="row" style="padding-top:5px;">
        <div class="col-sm-12">
            <input type="submit" name="rrr_create" id="submit" class="btn btn-block btn-primary" value="Save Equipment Data" />
        </div>
    </div>
</form>

    <?php }else{ ?>
    <div class="alert alert-warning">
      <strong>Warning!</strong> Division and Department are required to create RLP .
    </div>
    <?php } ?>