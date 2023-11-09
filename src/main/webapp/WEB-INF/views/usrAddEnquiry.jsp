<%@include file="usrHeader.jsp"%>

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
	<!-- Content Header (Page header) -->
	<div class="content-header">
		<div class="container-fluid">
			<div class="row mb-2">
				<div class="col-sm-6">
					<h1 class="m-0">
						Welcome
						<%=username%></h1>
				</div>
				<!-- /.col -->
				<div class="col-sm-6">
					<ol class="breadcrumb float-sm-right">
						<li class="breadcrumb-item"><a href="#">Home</a></li>
						<li class="breadcrumb-item active">Dashboard v1</li>
					</ol>
				</div>
				<!-- /.col -->
			</div>
			<!-- /.row -->
		</div>
		<!-- /.container-fluid -->
	</div>
	<!-- /.content-header -->

	<!-- Main content -->
	<section class="content">
		<div class="container-fluid">
			<!-- Small boxes (Stat box) -->

			<!-- general form elements disabled -->
			<div class="card card-warning">
				<div class="card-header">
					<h3 class="card-title">Add Enquiry</h3>
				</div>
				<!-- /.card-header -->
				<div class="card-body">
					<h3>${Message}</h3>
						<div class="row">
								<form action="addEnquiry" method="post">
								<div class="form-group">
									<label>Name</label> 
									<input type="text" name="enquiryBy"	class="form-control" placeholder="Enter ...">
									<label>Phone No</label> 
									<input type="text" name="enquiryContact" class="form-control" placeholder="Enter ...">
									<label>Prefer Time To Talk</label> 
									<input type="text" name="enquiryPreferTimeToTalk" class="form-control" placeholder="Enter ...">
									<label>Number Of Guest</label> 
									<input type="text" name="enquiryNumberOfGuest" class="form-control"	placeholder="Enter ...">
									<label>Event Type</label> 
									<select class="form-control" name="eventType">
										<option>Birthday</option>
										<option>Wedding</option>
									</select>
									<label>Country</label> 
										<select class="form-control" name="eventCountry">
											<option>India</option>
										</select>
									<label>State</label> <select class="form-control" name="eventState">
										<option>Goa</option>
										<option>Rajasthan</option>
										<option>Maharashtra</option>
									</select>
									<label>City</label> <select class="form-control" name="eventCity">
										<option>Goa</option>
										<option>Udaipur</option>
										<option>Lonawala</option>
									</select>
									<label>Preferred Venue</label> <select class="form-control" name="eventPreferredVenue">
										<option>Hotel</option>
										<option>Resort</option>
										<option>Park</option>
									</select>
									<label>Event Date</label> 
									<input type="date"	name="eventDate" class="form-control"	placeholder="Enter ...">
									
									<label>Detail</label>
									<textarea class="form-control" name="eventNote" rows="3"
										placeholder="Enter ..."></textarea>
									
								<div class="form-group">
									<input type="submit" value="Submit Enquiry" class="btn-btn sucess">
								</div>
							</div>
							</form>
						</div>
				</div>
				</div>
			</div>
	</section>
	</div>
<%@include file="footer.jsp"%>