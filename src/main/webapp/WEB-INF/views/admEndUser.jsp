<%@include file="header.jsp"%>
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Customers</h1>
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
		       SELECT userid, email, status, username, usertype FROM ebm.login WHERE ebm.login.usertype = "user";
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
                    <th>User ID</th>
                    <th>Email</th>
                    <th>Status</th>
                    <th>User Name</th>
                    <th>User Type</th>
                  </tr>
                  </thead>
                  <c:forEach  var="row" items="${result.rows}">
	                  <tbody>
	                  <tr>
	                    <td>${row.userid}</td>
	                    <td>${row.email}</td>
	                    <td>${row.status}</td>
	                    <td>${row.username}</td>
	                    <td>${row.usertype}</td>
	                  </tr>
	                  </tbody>
                  </c:forEach>
                  <tfoot>
                  <tr>
                    <th>User ID</th>
                    <th>Email</th>
                    <th>Status</th>
                    <th>User Name</th>
                    <th>User Type</th>
                  </tr>
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
