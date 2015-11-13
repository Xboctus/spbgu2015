package com.exigenservices.lectures.tags;

import java.util.Objects;
import java.util.Random;

/**
 * Created by Михаил on 06.11.2015.
 */
public class CheckTag {
    public static boolean Check(String value) {
        Integer temp;
        temp = Integer.valueOf(value);
        int x = (new Random()).nextInt();
        if ((temp >= 0) && (temp <= 100)) {
            if (temp == x) {
                return true;
            } else {
                return false;
            }
        } else {
            return false;
        }
    }
}
