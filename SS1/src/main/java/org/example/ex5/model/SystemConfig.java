package org.example.ex5.model;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

@Component
public class SystemConfig {

    @Value("HTH")
    private String branchName;

    @Value("09:00")
    private String openingHour;

    public void display() {
        System.out.println("Chi nhánh: " + branchName);
        System.out.println("Giờ mở cửa: " + openingHour);
    }
}
