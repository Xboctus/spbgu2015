package com.exigenservices.lectures.tags;

import java.util.Random;

/**
 * Created by Ann on 03.12.15.
 */
public class CheckTag {
    public static boolean Check (String value) {
        try {
            return (Math.abs (new Random().nextInt()) % 100 + 1) == Integer.valueOf(value);
        } catch (Throwable t){
            return false;
        }
    }
}
