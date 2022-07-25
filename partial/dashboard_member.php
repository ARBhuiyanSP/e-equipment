<div class="col-lg-3 col-xs-6">
	<!-- small box -->
    <div class="small-box bg-aqua">
        <div class="inner">
            <a href="javascript:void(0)" class="small-box-footer">
                <?php $table    =   "rrr_info WHERE rrr_user_id=$currentUserId AND is_delete=0";  ?>
                <h3 style="color: white;"><?php echo getDataRowByTable($table); ?></h3>
                <p style="color: white;">Total RLP</p>
            </a>
        </div>
        <div class="icon">
            <a href="javascript:void(0)" class="small-box-footer">
                <i class="ion ion-person" style="color: white;"></i>
            </a>
        </div>
        <a href="rrr_list.php" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
    </div>
</div>