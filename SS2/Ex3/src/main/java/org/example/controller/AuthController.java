package org.example.controller;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class AuthController {

    @GetMapping("/login")
    public String showLogin() {
        return "login";
    }

    @PostMapping("/login")
    public String login(HttpServletRequest request,
                        @RequestParam("username") String username,
                        @RequestParam("password") String password)
    {

        if (("admin".equals(username) && "admin123".equals(password)) ||
                ("staff".equals(username) && "staff123".equals(password))) {

            HttpSession session = request.getSession();
            session.setAttribute("loggedUser", username);
            session.setAttribute("role",
                    username.equals("admin") ? "ADMIN" : "STAFF");

            return "redirect:/orders";
        }

        request.setAttribute("error", "Sai tai khoan hoac mat khau");
        return "login";
    }

    @GetMapping("/logout")
    public String logout(HttpSession session) {
        session.invalidate();
        return "redirect:/login";
    }
}
