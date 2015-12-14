package com.exigenservices.lectures.tags;

/**
 * Created by vladik on 04.12.2015.
 */

import java.util.Random;

public class CheckTag{
    public  static boolean check(String num){
        Random r= new Random();
        if ((r.nextInt(99)+1)==Integer.parseInt(num))
        {
            return true;
        }
        else
        {
            return false;
        }
    }
}
