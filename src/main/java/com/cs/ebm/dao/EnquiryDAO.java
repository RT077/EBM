package com.cs.ebm.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.cs.ebm.pojo.Enquiry;

@Repository
public interface EnquiryDAO extends JpaRepository<Enquiry, Long> {

}
