<?php
    $currentUserId  =   $_SESSION['logged']['user_id'];
    $rlp_id         =   $_GET['id'];    
    $rlp_details    =   getNotesheetsDetailsData($rlp_id);   
    $rlp_info       =   $rlp_details['rlp_info'];
    $rlp_details    =   $rlp_details['rlp_details'];
?>
<!-- Main content -->
<section class="invoice">
    <form action="" method="POST">
    <!-- info row -->
    <div class="row invoice-info">
        <div class="col-md-12">
			<center>
				<h5 align="center"><img src="images/spl.png" height="50"></h5>
				<h2>E-Engineering Limited</h2>
				<p>Khawaja Tower[13th Floor], 95 Bir Uttam A.K Khandokar Road, Mohakhali C/A, Dhaka-1212, Bangladesh</p>
				<h5><b>Note Sheet - [Req No: <?php echo $rlp_info->rlp_no ?>]</b></h5>
			</center>
			<h5><b>Subject : <?php echo $rlp_info->subject ?></b></h5></br>
			<h5>
				<b>Supplier Name : <?php echo $rlp_info->supplier_name ?></b></br>
				Address : <?php echo $rlp_info->address ?></br>
				Concern person : <?php echo $rlp_info->concern_person ?></br>
				Call : <?php echo $rlp_info->cell_number ?>, E-Mail:  <?php echo $rlp_info->email ?></br>
			</h5>
		</div>
        <!-- /.col -->
    </div>
    <!-- /.row -->

    <!-- Table row -->
        <div class="row">
			<div class="col-xs-12 table-responsive">
                <table class="table table-striped table-bordered">
                    <thead>
                        <tr>
                            <th>S/N</th>
                            <th>Item Description</th>
                            <th>Part No</th>
                            <th width="10%">Quantity</th>
                            <th width="10%">Unit Price</th>
                            <th width="10%">Total</th>
                            <th>Remarks</th>
                        </tr>
                    </thead>
                    <tbody id="tbl_posts_body">
                        <?php
							$sl =   1;
							$total = 0;
							$totalQty = 0;
                            foreach($rlp_details as $data){
								$total += $data->total;
								$totalQty += $data->quantity;
                        ?>
                        <tr id="rec-1">
                            <td><?php echo $sl++; ?></td>
                            <td><?php echo $data->item; ?></td>
                            <td><?php echo $data->part_no; ?></td>
                            <td><?php echo $data->quantity; ?></td>
                            <td><?php echo $data->unit_price; ?></td>
                            <td><?php echo $data->total; ?></td>
                            <td><?php echo $data->remarks; ?></td>
                        </tr>                        
                            <?php } ?>
						<tr id="rec-1">
                            <td colspan="3" style="text-align:right">Total: </td>
                            <td><?php echo $totalQty; ?></td>
                            <td></td>
                            <td><?php echo $total; ?></td>
                            <td></td>
                        </tr>
						<tr id="rec-1">
                            <td colspan="7" style="text-align:left"><b>In word: <?php echo convertNumberToWords($total); ?></b></td>
                        </tr>
                    </tbody>
                </table>
            </div>
			<div class="col-xs-12 table-responsive">
				<p>This is for your kind approval.</p>
				<p>Other terms and conditions</p>
				<ul>
					<li> Date of Commencement</li>
					<li> Delivery of Goods: Within 03(Three) days after receiving the work order.</li>
					<li> Mode of payment: After 45 days from the date of bill Submission.</li>
					<li> Avobe rate is includig VAT, AIT & other Taxes.</li>
					<li> Transport & Courier cost will be charged by Buyers.</li>
					<li> Supply Location: Mongla Project Contact Person:Shadat Babu, 01729714503(Manager, mechanical)</li>
				</ul>
            </div>
			<div class="row">
				<div class="col-md-4" style="padding-top:100px;">
					<center>________________________</br>Asst. Manager(Mechanical)</center>
				</div>
				<div class="col-md-4" style="padding-top:100px;">
					<center>________________________</br>Logistic Incharge</center>
				</div>
				<div class="col-md-4" style="padding-top:100px;">
					<center>________________________</br>Head of Accounts</center>
				</div>
				<div class="col-md-4" style="padding-top:100px;">
					<center>________________________</br>ED(Mechanical)</center>
				</div>
				<div class="col-md-4" style="padding-top:100px;">
					<center>________________________</br>Director</center>
				</div>
				<div class="col-md-4" style="padding-top:100px;">
					<center>________________________</br>Chairman</center>
				</div>
			</div>
            <!-- /.col -->
        </div>
    </form>
    <!-- /.row -->
</section>
<!-- /.content -->
<div class="clearfix"></div>
