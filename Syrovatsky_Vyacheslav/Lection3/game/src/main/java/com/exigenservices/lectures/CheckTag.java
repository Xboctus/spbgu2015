package com.exigenservices.lectures;

import java.util.Random;

public class CheckTag {
    public static boolean Check (String value) {
        try {
            int expected = Math.abs (new Random().nextInt()) % 100;
            return (Integer.valueOf(value) == expected);
        } catch (Exception ex){
            return false;
        }
    }
}
