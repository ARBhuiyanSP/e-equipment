<?php include 'header.php';
    $_SESSION['activeMenu'] =   'agency';
?>
<?php include 'top_sidebar.php'; ?>
<!-- Left side column. contains the logo and sidebar -->
<?php include 'left_sidebar.php'; ?>
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <?php include 'operation_message.php'; ?>
        <h1>
            Schedule Maintenance
            <small> </small>
        </h1>
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> E-Equipment</a></li>
            <li class="active">Schedule Maintenance Entry Form</li>
        </ol>
    </section>

    <!-- Main content -->
    <section class="content">
        <!-- Small boxes (Stat box) -->
        <div class="row">
            <!-- left column -->
            <div class="col-md-12">
				<div class="box">
                    <div class="box-header">
                        <h3 class="box-title"></h3>
                        <div class="box-tools">
                            <ul class="pagination pagination-sm no-margin pull-right">
                                <?php if(hasAccessPermission($user_id_session, 'crlp', 'view_access')){ ?>
								<li><button class="btn btn-success" onclick="location.href='maintenance_report.php';">Search Sheduale Maintenance Report</button></li>
                                <?php } ?>
                            </ul>
                        </div>
                    </div>
                    <!-- /.box-header -->
                    <div class="box-body">
                        <?php include 'partial/schedulemaintenance_entry_form.php'; ?>
                    </div>
                    <!-- /.box-body -->
                </div>
                <!-- /.box -->
            </div>
        </div>
    </section>
    <!-- /.content -->
</div>
<!-- /.content-wrapper -->
<?php include 'footer.php'; ?>
