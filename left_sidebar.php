<?php
$user_id_session = $_SESSION['logged']['user_id'];
?>
<aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
        <!-- Sidebar user panel -->
        <div class="user-panel">
            <div class="pull-left image">
                <img src="images/icon/user2-160x160.jpg" class="img-circle" alt="User Image">
            </div>
            <div class="pull-left info">
                <p><?php echo $_SESSION['logged']['user_name']; ?></p>
                <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
            </div>
        </div>
        <!-- sidebar menu: : style can be found in sidebar.less general_sms_create -->
        <ul class="sidebar-menu" data-widget="tree">
            <?php if (is_super_admin($user_id_session)) { ?>
                <li class="header">Settings</li>
                <li class="<?php if ($page_name == "users_list.php") {
                echo "active";
            } ?>"><a href="users_list.php"><i class="fa fa-user-circle"></i> <span>User</span></a></li>
			
			<!-- <li class="<?php if ($page_name == "supplier_create.php") {
                echo "active";
            } ?>"><a href="supplier_create.php"><i class="fa fa-window-restore"></i> <span>Suppliers</span></a></li>
			
			<li class="<?php if ($page_name == "division_create.php") {
                echo "active";
            } ?>"><a href="division_create.php"><i class="fa fa-window-maximize"></i> <span>Division</span></a></li>
			
			<li class="<?php if ($page_name == "department_create.php") {
                echo "active";
            } ?>"><a href="department_create.php"><i class="fa fa-window-restore"></i> <span>Department</span></a></li> -->
			
			
                <li class="<?php if ($page_name == "role_access.php") {
                echo "active";
            } ?>"><a href="role_access.php"><i class="fa fa-superpowers"></i> <span>Role Access</span></a></li>
                <li class="<?php if ($page_name == "rlp_approve_chain_list.php") {
                echo "active";
            } ?>"><a href="rlp_approve_chain_list.php"><i class="fa fa-recycle"></i> <span>RLP Approval Chain</span></a></li>
			
			
			<!-- <li class="<?php if ($page_name == "candidates_create.php") {
                echo "active";
            } ?>"><a href="candidates_create.php"><i class="fa fa-window-restore"></i> <span>Candidates</span></a></li> --->
			
			
                <li class="<?php if ($page_name == "import_system.php") {
                echo "active";
            } ?>"><a href="import_system.php"><i class="fa fa-upload" aria-hidden="true"></i> <span>Import</span></a></li>
			<li class="<?php if ($page_name == "import_system.php") {
                echo "active";
            } ?>"><a href="backup_system.php"><i class="fa fa-download" aria-hidden="true"></i> <span>Data Backup</span></a></li>
<?php } ?>
            <li class="header">User Page</li>
            <?php if (hasAccessPermission($user_id_session, 'rlp_list', 'view_access')) { ?>
				<li class="<?php if ($page_name == "rlp_list.php") {
                echo "active";
            } ?>">
                    <a href="rlp_list.php"><i class="fa fa-file-text-o"></i> <span>RLP</span></a>
                </li>
				<li class="<?php if ($page_name == "equipment_list.php") {
                echo "active";
            } ?>">
                    <a href="equipment_list.php"><i class="fa fa-file-text-o"></i> <span>Equipment</span></a>
                </li>
				<!-- <li class="<?php if ($page_name == "rrr_create.php") {
                echo "active";
            } ?>">
                    <a href="rrr_list.php"><i class="fa fa-file-text-o"></i> <span>RLP</span></a>
                </li>
				<li class="<?php if ($page_name == "interview_list.php") {
                echo "active";
            } ?>">
                    <a href="interview_list.php"><i class="fa fa-file-text-o"></i> <span>Interview</span></a>
                </li>
				<li class="<?php if ($page_name == "evaluation.php") {
                echo "active";
            } ?>">
                    <a href="evaluation.php"><i class="fa fa-file-text-o"></i> <span>Evaluation</span></a>
                </li>  --->
				<li class="<?php if ($page_name == "notesheet.php") {
                echo "active";
            } ?>">
                    <a href="#"><i class="fa fa-file-text-o"></i> <span>Notesheet</span></a>
                </li>
<?php } ?>
            <li class="header">Report</li>
<?php if (hasAccessPermission($user_id_session, 'rlp_report', 'view_access')) { ?>
                <li class="treeview <?php if (in_array($page_name, $settingsPages)) {
        echo 'active';
    } ?>">
                    <a href="#">
                        <i class="fa fa-file-image-o text-red"></i> <span> RRR Report</span>
                        <span class="pull-right-container">
                            <i class="fa fa-angle-left pull-right"></i>
                        </span>
                    </a>
                    <ul class="treeview-menu">
                        <li class="<?php if($page_name == "rlp_report_div_wise.php"){ echo "active"; } ?>"><a href="rlp_report_div_wise.php"><i class="fa fa-circle-o"></i> Division Wise RLP</a></li>
                        <li class="<?php if($page_name == "rlp_report_mem_wise.php"){ echo "active"; } ?>"><a href="rlp_report_mem_wise.php"><i class="fa fa-circle-o"></i> Member Wise RLP</a></li>
                    </ul>
                </li>
<?php } ?>
            <!--setActiveMenuClass-->
        </ul>
    </section>
    <!-- /.sidebar -->
</aside>