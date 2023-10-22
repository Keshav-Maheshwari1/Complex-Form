package com.springmvcform.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.springmvcform.user.Employee;

@Repository
public class EmployeeDao {
	@Autowired
	public HibernateTemplate hibernatetemplate;
	@Transactional
	public int saveEmployee(Employee employee) {
		int res = (Integer)this.hibernatetemplate.save(employee);
		return res;
	}

}
