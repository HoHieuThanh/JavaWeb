package org.example.controller;

import jakarta.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@Controller
public class AuthController {

    @GetMapping("/login")
    public String showLogin() {
        return "login";
    }

    @PostMapping("/login")
    public String login(HttpSession session,
                        @RequestParam("username") String username,
                        @RequestParam("password") String password,
                        org.springframework.ui.Model model) {

        if ("hr_manager".equals(username) && "hr123".equals(password)) {
            session.setAttribute("loggedUser", username);
            session.setAttribute("role", "manager");
            return "redirect:/employees";
        }

        if ("hr_staff".equals(username) && "staff456".equals(password)) {
            session.setAttribute("loggedUser", username);
            session.setAttribute("role", "staff");
            return "redirect:/employees";
        }

        model.addAttribute("errorMessage", "Sai tai khoan hoac mat khau");
        return "login";
    }

    @GetMapping("/logout")
    public String logout(HttpSession session) {
        session.invalidate();
        return "redirect:/login";
    }
}
