package com.xmchx.vote;

import org.junit.Test;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.Random;

@SpringBootTest
public class VoteApplicationTests {


    void contextLoads() {
    }

    @Test
    public void test1(){
        for (int j = 0; j < 20; j++) {
            int i = new Random().nextInt(10);
            String format = String.format("/dist/img/avatar/girl%s.png", new Random().nextInt(15));

            System.out.println("j = " + format);
        }
    }
}
