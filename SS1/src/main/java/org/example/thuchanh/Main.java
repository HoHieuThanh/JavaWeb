package org.example.thuchanh;


import org.example.thuchanh.config.AppConfig;
import org.example.thuchanh.service.PlaySessionService;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

public class Main {
    public static void main(String[] args) {
        ApplicationContext context = new AnnotationConfigApplicationContext(AppConfig.class);
        PlaySessionService service = context.getBean(PlaySessionService.class);
        service.checkBalance("Thanh", 3000);
        service.checkBalance("", 3000);
        service.checkBalance("Hieu", -100);
    }
}

