package org.example.controller;

import jakarta.servlet.ServletContext;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import org.example.model.Order;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.Date;
import java.util.List;

@Controller
public class OrderController {

    @GetMapping("/orders")
    public String orders(HttpServletRequest request) {

        HttpSession session = request.getSession();

        if (session.getAttribute("loggedUser") == null) {
            return "redirect:/login";
        }

        List<Order> list = List.of(
                new Order("OD01", "Ban phim", 500000, new Date()),
                new Order("OD02", "Chuot", 200000, new Date()),
                new Order("OD03", "Tai nghe", 800000, new Date())
        );

        request.setAttribute("orders", list);

        ServletContext application = request.getServletContext();

        synchronized (application) {
            Integer count = (Integer) application.getAttribute("totalViewCount");
            if (count == null) count = 0;
            application.setAttribute("totalViewCount", count + 1);
        }

        return "orders";
    }
}
