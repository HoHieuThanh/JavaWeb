package org.example.controller;

import jakarta.servlet.http.HttpSession;
import org.example.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class EmployeeController {

    @Autowired
    private EmployeeService service;

    @GetMapping("/employees")
    public String list(HttpSession session, Model model) {

        if (session.getAttribute("loggedUser") == null) {
            return "redirect:/login";
        }

        model.addAttribute("employees", service.getAll());
        model.addAttribute("totalSalary", service.totalSalaryKyThuat());

        return "employees";
    }

    @GetMapping("/employees/{code}")
    public String detail(@PathVariable String code,
                         HttpSession session,
                         Model model) {

        if (session.getAttribute("loggedUser") == null) {
            return "redirect:/login";
        }

        model.addAttribute("emp", service.findByCode(code));
        return "employee-detail";
    }
}
