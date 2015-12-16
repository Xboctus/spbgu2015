package com.exigenservices.lectures.tags;

/**
 * Created by Artem on 15.12.2015.
 */
public class CheckTag {
    public static boolean Check(String value) {
        if (value.equals("")) return false;
        return ((int) (Math.random() * 100 + 1) == Integer.valueOf(value));
    }
}
