package com.aaa.mybatis;

/**
 * @Author: 陈建
 * @Date: 2018/12/27 0027 9:00
 * @Version 1.0
 */
public class MyTest {
    String str = new String("cloud");
    char[] ch = { 'w', 'i', 'z', 'e' };
    public static void main(String args[]) {
        MyTest ex = new MyTest();
        ex.change(ex.str, ex.ch);
        System.out.print(ex.str);
        System.out.print(ex.ch);
    }
    public void change(String str, char ch[]) {
        str = "clouding";
        ch[2] = 's';
    }


}
