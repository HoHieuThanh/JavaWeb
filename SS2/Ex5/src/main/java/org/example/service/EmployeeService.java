package org.example.service;

import org.example.model.Employee;
import org.springframework.stereotype.Service;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

@Service
public class EmployeeService {

    private List<Employee> employees = new ArrayList<>();

    public EmployeeService() {
        try {
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

            employees.add(new Employee("NV001","Nguyen Thi Lan","Ke toan",15000000,sdf.parse("2020-03-01"),"Dang lam"));
            employees.add(new Employee("NV002","Tran Van Hung","Ky thuat",25000000,sdf.parse("2019-07-15"),"Dang lam"));
            employees.add(new Employee("NV003","Le Minh Duc","Kinh doanh",18500000,sdf.parse("2021-11-20"),"Nghi phep"));
            employees.add(new Employee("NV004","Pham Thu Huong","Ky thuat",22000000,sdf.parse("2022-01-05"),"Dang lam"));
            employees.add(new Employee("NV005","Hoang Van Nam","Ke toan",12000000,sdf.parse("2023-06-10"),"Thu viec"));

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public List<Employee> getAll() {
        return employees;
    }

    public Employee findByCode(String code) {
        return employees.stream()
                .filter(e -> e.getCode().equals(code))
                .findFirst()
                .orElseThrow(() -> new RuntimeException("Nhan vien " + code + " khong ton tai"));
    }

    public double totalSalaryKyThuat() {
        return employees.stream()
                .filter(e -> e.getDepartment().equals("Ky thuat"))
                .mapToDouble(Employee::getSalary)
                .sum();
    }
}
