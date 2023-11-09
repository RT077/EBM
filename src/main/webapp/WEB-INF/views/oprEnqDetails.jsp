
<%@include file="connection.jsp"%>

<sql:query dataSource="${webappDataSource}" var="result">
		       SELECT * FROM ebm.enquiry WHERE enquiry_id = <%=request.getParameter("enq_id")%>;
		       
	</sql:query>

<!-- New Code  -->
<!DOCTYPE html>
<html lang="en">
<head>
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>

	<div class="container">
		<h2>All Details</h2>
		<table contenteditable="true" class="table">

			<thead>
				<tr>
					<th>Enquiry_ID</th>
					<th>Enquired By</th>
					<th>Contact Details</th>
					<th>Number of Guest</th>
					<th>Preferred Time</th>
					<th>Event Type</th>
					<th>Event Date</th>
				</tr>
			</thead>
			<c:forEach var="row" items="${result.rows}">
				<tbody>
					<tr>
						<td>${row.enquiry_id}</td>
						<td>${row.enquiry_by}</td>
						<td>${row.enquiry_contact}</td>
						<td>${row.enquiry_number_of_guest}</td>
						<td>${row.enquiry_prefer_time_to_talk}</td>
						<td>${row.event_type}</td>
						<td>${row.event_date}</td>
					</tr>
				</tbody>
			</c:forEach>

			<thead>
				<tr>
					<th>Event Country</th>
					<th>Event City</th>
					<th>Event Preferred Venue</th>
					<th>Event State</th>
					<th>Event Note</th>
				</tr>
			</thead>
			<c:forEach var="row" items="${result.rows}">
				<tbody>
					<tr>
						<td>${row.event_country}</td>
						<td>${row.event_city}</td>
						<td>${row.event_preferred_venue}</td>
						<td>${row.event_state}</td>
						<td>${row.event_note}</td>
					</tr>
				</tbody>
			</c:forEach>

		</table>
	</div>

</body>
</html>

