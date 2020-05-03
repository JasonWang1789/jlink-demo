package com.zwang.demo.jlink.rest;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import reactor.core.publisher.Mono;

@RestController
public class JlinkRest {

    @GetMapping("/")
    public Mono<String> getGreeting() {
        return Mono.just("I'm alive");
    }

}
