package com.cs.ebm.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.cs.ebm.pojo.Registration;

public interface RegistrationDAO extends JpaRepository<Registration, String> {

}
