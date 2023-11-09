<%@include file="oprHeader.jsp"%>
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Vendors</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">DataTables</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>
    
    <sql:query dataSource="${webappDataSource}" var="result">
		       SELECT P_Id, H_Name, H_Address, H_City, H_Contactno, Capacity, Services FROM ebm.vendors;
	</sql:query>

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-12">
            <div class="card">
              <div class="card-header">
                <h3 class="card-title">DataTable with default features</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <table id="example1" class="table table-bordered table-striped">
                  <thead>
                  <tr>
                    <th>Vendor Id</th>
                    <th>Vendor Name</th>
                    <th>Vendor Address</th>
                    <th>City</th>
                    <th>Vendor Contact</th>
                    <th>Capacity</th>
                    <th>Services</th>
                  </tr>
                  </thead>
                  <c:forEach  var="row" items="${result.rows}">
	                  <tbody>
	                  <tr>
	                    <td>${row.P_Id}</td>
	                    <td>${row.H_Name}</td>
	                    <td>${row.H_Address}</td>
	                    <td>${row.H_City}</td>
	                    <td>${row.H_Contactno}</td>
	                    <td>${row.Capacity}</td>
	                    <td>${row.Service}</td> 	    
	                  </tr>
	                  </tbody>
                  </c:forEach>
                  <tfoot>
                 <!--  <tr>
                    <th>User ID</th>
                    <th>Email</th>
                    <th>Status</th>
                    <th>User Name</th>
                    <th>User Type</th>
                  </tr> -->
                  </tfoot>
                </table>
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
          </div>
          <!-- /.col -->
        </div>
        <!-- /.row -->
      </div>
      <!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
</div>
<!-- ./wrapper -->
<%@include file="footer.jsp"%>
