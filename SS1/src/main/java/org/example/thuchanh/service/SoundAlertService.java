package org.example.thuchanh.service;
import org.springframework.stereotype.Component;

@Component("sound")
public class SoundAlertService implements AlertService {
    @Override
    public void alert(String username) {
        System.out.println("Phat am thanh canh bao cho " + username);
    }
}
