<footer class="main-footer text-center">
    <strong>Copyright &copy; <?php echo date("Y"); ?> <a href="http://saifpowertecltd.com/">Saif Powertec LTD</a>.</strong> All rights
    reserved.
</footer>
<!-- /.control-sidebar -->
<!-- Add the sidebar's background. This div must be placed
     immediately after the control sidebar -->
<div class="control-sidebar-bg"></div>
</div>
<!-- ./wrapper -->

<script>
    $.widget.bridge('uibutton', $.ui.button);
</script>
<!-- Bootstrap 3.3.7 -->
<script src="vendor/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- Morris.js charts -->
<script src="vendor/bower_components/raphael/raphael.min.js"></script>
<script src="vendor/bower_components/morris.js/morris.min.js"></script>
<!-- Sparkline -->
<script src="vendor/bower_components/jquery-sparkline/dist/jquery.sparkline.min.js"></script>
<!-- jvectormap -->
<script src="vendor/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
<script src="vendor/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
<!-- jQuery Knob Chart -->
<script src="vendor/bower_components/jquery-knob/dist/jquery.knob.min.js"></script>
<!-- daterangepicker -->
<script src="vendor/bower_components/moment/min/moment.min.js"></script>
<script src="vendor/bower_components/bootstrap-daterangepicker/daterangepicker.js"></script>
<!-- datepicker -->
<script src="vendor/bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
<!-- Bootstrap WYSIHTML5 -->
<script src="vendor/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
<!-- Slimscroll -->
<script src="vendor/bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
<!-- FastClick -->
<script src="vendor/bower_components/fastclick/lib/fastclick.js"></script>
<!-- DataTables -->
<script src="vendor/bower_components/datatables.net/js/jquery.dataTables.min.js"></script>
<script src="vendor/bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
<script src="js/jquery-ui.js"></script>
<!-- AdminLTE App -->
<script src="vendor/dist/js/adminlte.min.js"></script>
<script src="js/sweetalert.min.js"></script>
<script src="js/jquery.timepicker.min.js"></script>
<script src="js/select2.min.js"></script>
 <!--for handling all general js and ajax operation use the following link-->
<script src="js/general_operation.js"></script>
<!--for handling rlp create form operation use the following link-->
<script src="js/rlp_create_handle.js"></script>

<script src="js/interview.js"></script>
</body>
</html>
<script>





  function interview_data_process(){

      $.ajax({

        url: "function/interview_register_form_process.php?process_type=interview_process",
        type: "POST",
        dataType:'html',
        data: $("#interview_register_form").serialize(),
        success:function(response){
          console.log(response)
        }

      });

    };

jQuery( document ).ready(function( $ ) {
            $('#dataTable').DataTable();
            $( "#item_information" ).accordion();
            if($('#material_receive_list')){
                $('#material_receive_list').DataTable();
            }
        });

</script>
<script src="js/rrr_form_manage.js"></script>
<?php include 'modal/rlp_details_quick_view.php'; ?>
<?php include 'modal/rrr_details_quick_view.php'; ?>
<?php include 'modal/notesheet_details_quick_view.php'; ?>
<?php include 'modal/candidate_add_form_ajax.php'; ?>
<script>
  $(function () {
    //Initialize Select2 Elements
    $('.select2').select2();
    $('.all_emplyees').select2();
  })
</script>
<script>
	$(document).ready(function () {
		$('#example').DataTable();
	});
	
	$(document).ready(function () {
		$('#example1').DataTable();
	});
	
	$(document).ready(function () {
		$('#example2').DataTable();
	});
</script>