package com.example.ECR_demo;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class WelcomeController {

    @GetMapping("/hello")
    public String sayHello()
    {
        return "Welcome to AWS ECR using Github actions";
    }
}
