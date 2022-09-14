<?php
    $currentUserId  =   $_SESSION['logged']['user_id'];
    $rlp_id         =   $_GET['rlp_id'];    
    $rlp_details    =   getRlpDetailsData($rlp_id);   
    $rlp_info       =   $rlp_details['rlp_info'];
    $rlp_details    =   $rlp_details['rlp_details'];
?>
<!-- Main content -->
<section class="invoice">
    <form action="" method="POST">
    <!-- title row -->
    <div class="row">
        <div class="col-xs-12">
            <h2 class="page-header">
                <i class="fa fa-file"></i> RLP Details.
                <small class="pull-right">Priority: <?php echo getPriorityNameDiv($rlp_info->priority) ?></small>
            </h2>
        </div>
        <!-- /.col -->
    </div>
    <!-- info row -->
    <div class="row invoice-info">
        <div class="col-md-4 invoice-col">
            From
            <address>
                <strong>Name:&nbsp;<?php echo $rlp_info->request_person ?></strong><br>
                Designation:&nbsp;<?php echo getDesignationNameById($rlp_info->designation) ?><br>
                Division:&nbsp;<?php echo getDivisionNameById($rlp_info->request_division) ?><br>
                Department:&nbsp;<?php echo getDepartmentNameById($rlp_info->request_department) ?><br>
            </address>
        </div>
        <!-- /.col -->
        <div class="col-md-8 invoice-col">
            <div class="pull-right">
				<?php $notesheetNo    =   get_notesheet_no(); ?>
                <b>Notesheet NO: &nbsp;<span class="rlpno_style"><?php echo $notesheetNo; ?></span></b><br>
                <input type="hidden" name="notesheet_no" value="<?php echo $notesheetNo; ?>">
				
                <b>RLP NO: &nbsp;<span class="rlpno_style"><?php echo $rlp_info->rlp_no ?></span></b><br>
                <input type="hidden" name="rlp_no" value="<?php echo $rlp_info->rlp_no; ?>">
                <b>Request Date:</b> <?php echo human_format_date($rlp_info->created_at) ?><br>
            </div>            
        </div>
        <!-- /.col -->
    </div>
    <!-- /.row -->

    <!-- Table row -->
        <div class="row">
            <div class="col-xs-12">
				<div class="form-group">
					<label for="exampleId">Subject</label>
					<input name="subject" type="text" class="form-control" id="subject" value="" autocomplete="off" />
				</div>
			</div>
            <div class="col-xs-6">
				<div class="form-group">
					<label for="exampleId">Supplier Name</label>
					<input name="supplier_name" type="text" class="form-control" id="supplier_name" value="" autocomplete="off" />
				</div>
			</div>
            <div class="col-xs-6">
				<div class="form-group">
					<label for="exampleId">Address</label>
					<input name="address" type="text" class="form-control" id="address" value="" autocomplete="off" />
				</div>
			</div>
            <div class="col-xs-4">
				<div class="form-group">
					<label for="exampleId">Concern Person</label>
					<input name="concern_person" type="text" class="form-control" id="concern_person" value="" autocomplete="off" />
				</div>
			</div>
            <div class="col-xs-4">
				<div class="form-group">
					<label for="exampleId">Cell Number</label>
					<input name="cell_number" type="text" class="form-control" id="cell_number" value="" autocomplete="off" />
				</div>
			</div>
            <div class="col-xs-4">
				<div class="form-group">
					<label for="exampleId">Email</label>
					<input name="email" type="text" class="form-control" id="email" value="" autocomplete="off" />
				</div>
			</div>
			<div class="col-xs-12 table-responsive">
                <table class="table table-striped table-bordered">
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>Item Description</th>
                            <th>Purpose of Purchase</th>
                            <th width="10%">Quantity</th>
                            <th width="10%">Unit Price</th>
                            <th width="10%">Total</th>
                            <th>Remarks</th>
                        </tr>
                    </thead>
                    <tbody id="tbl_posts_body">
                        <?php
                        $sl =   1;
                            foreach($rlp_details as $data){
                        ?>
                        <tr id="rec-1">
                            <td><?php echo $sl++; ?></td>
                            <td><input type="text" class="form-control" name="item[]" id="" value="<?php echo (isset($data->item_des) && !empty($data->item_des) ? $data->item_des : ""); ?>" readonly ></td>
                            <td><?php echo $data->purpose; ?></td>
                            <td><input type="text" class="form-control" onkeyup="caltotal(<?php echo $data->id; ?>)" name="quantity[]" id="quantity_<?php echo $data->id; ?>" value="<?php echo (isset($data->quantity) && !empty($data->quantity) ? $data->quantity : ""); ?>"></td>
                            <td><input type="text" class="form-control" onkeyup="caltotal(<?php echo $data->id; ?>)" name="unit_price[]" id="unit_price_<?php echo $data->id; ?>" value=""></td>
                            <td>
                                <div class="form-group">
                                    <input type="text" class="form-control" name="total[]" id="total_<?php echo $data->id; ?>" value="" readonly >
                                </div>
                            </td>
                            <td>
                                <div class="form-group">
                                    <input type="text" class="form-control" name="remarks[]" value="">
                                    
                                </div>
                            </td>
                        </tr>                        
                            <?php } ?>
                        <?php if(is_super_admin($currentUserId)){ ?>
                        <tr>
                            <td colspan="7">
								<input type="submit" class="btn btn-primary btn-block" name="create_notesheet" value="Generate Note Sheet">
                            </td>
                        </tr>
                        <?php }?>
                    </tbody>
                </table>
            </div>
            <!-- /.col -->
        </div>
    </form>
    <!-- /.row -->
</section>
<!-- /.content -->
<div class="clearfix"></div>
<script>
function  caltotal(id){
	let quantity = parseFloat($('#quantity_'+id).val());
    let unit_price = parseFloat($('#unit_price_'+id).val());
	
	let myResult = parseFloat(quantity * unit_price);

    $('#total_'+id).val(myResult);
}

</script>
