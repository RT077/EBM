package com.cs.ebm.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.cs.ebm.pojo.User;

@Repository
public interface UserDAO extends JpaRepository<User, Long> {

}
