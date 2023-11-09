<%@include file="usrHeader.jsp"%>
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>View</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">View data</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <sql:query dataSource="${webappDataSource}" var="result">
		       SELECT enquiry_id, enquiry_by, enquiry_contact, enquiry_number_of_guest, enquiry_prefer_time_to_talk, event_city, event_country, event_date, event_note, event_preferred_venue, event_state, event_type FROM ebm.enquiry;
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
                    <th>Enquiry_ID</th>
                    <th>Enquiry_By</th>
                    <th>Enquiry_Contact</th>
                    <th>Enquiry_Number</th>
                    <th>Enquiry_Time</th>
                    <th>Event_City</th>
                    <th>Event_Country</th>
                    <th>Event_Date</th>
                    <th>Event_Note</th>
                    <th>event_preferred_venue</th>
                    <th>event_state</th>
                    <th>event_type</th>
                  </tr>
                  </thead>
                  <c:forEach  var="row" items="${result.rows}">
	                  <tbody>
	                  <tr>
	                    <td>${row.enquiry_id}</td>
	                    <td>${row.enquiry_by}</td>
	                    <td>${row.enquiry_contact}</td>
	                    <td>${row.enquiry_number_of_guest}</td>
	                    <td>${row.enquiry_prefer_time_to_talk}</td>
	                    <td>${row.event_city}</td>
	                    <td>${row.event_country}</td> 
	                    <td>${row.event_date}</td>
	                    <td>${row.event_note}</td>
	                    <td>${row.event_preferred_venue}</td>
	                    <td>${row.event_state}</td>
	                    <td>${row.event_type}</td>
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
				