package com.woori.initproject.controller;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class initController {

    @GetMapping("/api")
    public ResponseEntity<String> init() {
        return ResponseEntity.ok("Hello World");
    }
}
