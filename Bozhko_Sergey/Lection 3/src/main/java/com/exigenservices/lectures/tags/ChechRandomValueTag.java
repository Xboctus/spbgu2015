package com.exigenservices.lectures.tags;
import java.util.Random;

/**
 * Created by Сергей on 20.11.2015.
 */
public class ChechRandomValueTag {
    public static boolean Check (String value) {
        try {
            return (Math.abs (new Random().nextInt()) % 100) == Integer.valueOf(value);
        } catch (Throwable t){
            return false;
        }
    }
}