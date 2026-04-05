package org.example.thuchanh.service;
import org.springframework.stereotype.Component;

@Component("popup")
public class PopupAlertService implements AlertService {
    @Override
    public void alert(String username) {
        System.out.println("Canh bao popup cho " + username);
    }
}

