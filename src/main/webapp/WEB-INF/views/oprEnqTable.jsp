<%@include file="oprHeader.jsp"%>
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
                    <th>Enquired By</th>
                    <th>Contact Details</th>
                    <th>Number of Guest </th>
                    <th>Preferred Time</th>
                    <th>Event Type</th>
                    <th>Event Date</th>
                    <!-- <th>Event Country</th>
                    <th>Event City</th>
                    <th>Event Preferred Venue</th>
                    <th>Event State</th>
                    <th>Event Type</th> -->
                  </tr>
                  </thead>
                  <c:forEach  var="row" items="${result.rows}">
	                  <tbody>
	                  <tr>
	                  <!-- Get Id through URL -->
	                    <td><b><a href="" onclick=
	                    "window.open('oprEnqDetails?enq_id=${row.enquiry_id}','','height=600,width=900, top=70, left=300')"><u>${row.enquiry_id}</u></b></td>
	                    
	                    <%-- <td><a href="oprEnqDetails">${row.enquiry_id}</a></td> --%>
	                    <td>${row.enquiry_by}</td>
	                    <td>${row.enquiry_contact}</td>
	                    <td>${row.enquiry_number_of_guest}</td>
	                    <td>${row.enquiry_prefer_time_to_talk}</td>
	                    <td>${row.event_type}</td>
	                    <td>${row.event_date}</td>
	                    <%-- <td>${row.event_country}</td> 
	                    
	                    <td>${row.event_city}</td>
	                    <td>${row.event_preferred_venue}</td>
	                    <td>${row.event_state}</td>
	                     <td>${row.event_note}</td>--%>
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
