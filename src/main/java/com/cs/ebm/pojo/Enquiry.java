package com.cs.ebm.pojo;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Entity
@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class Enquiry {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long enquiryId;
	private String enquiryBy;
	private String enquiryContact;
	private String enquiryPreferTimeToTalk;
	private String enquiryNumberOfGuest;
	private String eventType;
	private String eventCountry;
	private String eventState;
	private String eventCity;
	private String eventPreferredVenue;
	private String eventDate;
	private String eventNote;
	
	

}
