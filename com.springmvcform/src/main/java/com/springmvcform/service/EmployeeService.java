package com.springmvcform.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.springmvcform.dao.EmployeeDao;
import com.springmvcform.user.Employee;

@Service
public class EmployeeService {
	@Autowired
	private EmployeeDao employeeDao;
	public int create(Employee employee) {
		return this.employeeDao.saveEmployee(employee);
	}
}
