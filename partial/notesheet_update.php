<?php
    $currentUserId  	=   $_SESSION['logged']['user_id'];
    $notesheet_id  	 	=   $_GET['id'];    
    $notesheets    		=   getNotesheetDetailsData($notesheet_id);   
    $notesheets_master	=   $notesheets['notesheets_master'];
    $notesheets    		=   $notesheets['notesheets'];
?>
<!-- Main content -->
<section class="invoice">
    <!-- title row -->
    <div class="row">
        <div class="col-xs-12">
            <h2 class="page-header">
                <i class="fa fa-file"></i> Notesheet Details.
                <small class="pull-right">Priority: <?php //echo getPriorityNameDiv($notesheets_master->priority) ?></small>
            </h2>
        </div>
        <!-- /.col -->
    </div>
    <!-- info row -->
    <div class="row invoice-info">
        <div class="col-md-4 invoice-col">
            From
            <address>
                <strong>Subject:&nbsp;<?php echo $notesheets_master->subject ?></strong><br>
            </address>
        </div>
        <!-- /.col -->
        <div class="col-md-8 invoice-col">
            <div class="pull-right">
                <b>Notesheet NO: &nbsp;<span class="rlpno_style"><?php echo $notesheets_master->notesheet_no ?></span></b><br>
                <b>Request Date:</b> <?php echo human_format_date($notesheets_master->created_at) ?><br>
            </div>            
        </div>
        <!-- /.col -->
    </div>
    <!-- /.row -->

    <!-- Table row -->
    Notesheet Info here
    <!-- /.row -->
    <?php
    $role       =   get_role_group_short_name();
    
    if(is_super_admin($currentUserId)){
        include 'notesheet_update_view_sa.php';
    }elseif($role    ==  "member"){
        include 'notesheet_update_view_member.php';
    }elseif($role    ==  "dh"){
        include 'notesheet_update_view_dh.php';
    }elseif($role    ==  "ab"){
        include 'notesheet_update_view_ab.php';
    }else{
        include 'notesheet_update_view_dh.php';
    }
    ?>
</section>
<!-- /.content -->
<div class="clearfix"></div>