package com.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class StudentCardController {

    @GetMapping("/student-card")
    public String getStudent(
            @RequestParam(value = "msv", required = false) String msv,
            Model model) {

        if (msv == null || msv.isEmpty()) {
            return "student-card";
        }

        switch (msv) {
            case "SV001":
                model.addAttribute("studentName", "Nguyen Van An");
                model.addAttribute("faculty", "Cong nghe thong tin");
                model.addAttribute("year", 3);
                model.addAttribute("gpa", 8.5);
                break;

            case "SV002":
                model.addAttribute("studentName", "Tran Thi Binh");
                model.addAttribute("faculty", "Kinh te");
                model.addAttribute("year", 2);
                model.addAttribute("gpa", 7.2);
                break;

            case "SV003":
                model.addAttribute("studentName", "Le Minh Cuong");
                model.addAttribute("faculty", "Cong nghe thong tin");
                model.addAttribute("year", 4);
                model.addAttribute("gpa", 3.8);
                break;

            default:
                model.addAttribute("errorMessage",
                        "Khong tim thay sinh vien voi ma " + msv);
        }

        return "student-card";
    }

}
