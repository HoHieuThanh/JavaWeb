package org.example.thuchanh.service;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

@Service
public class PlaySessionService {

    private final AlertService alertService;
    public PlaySessionService(@Qualifier("sound") AlertService alertService) {
        this.alertService = alertService;
    }

    public void checkBalance(String username, double balance) {

        if (username == null || username.trim().isEmpty()) {
            System.out.println("Username khong hop le");
            return;
        }

        if (balance < 0) {
            System.out.println("So du am");
            return;
        }

        if (balance < 5000) {
            alertService.alert(username);
        }
    }
}
