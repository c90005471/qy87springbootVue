package com.aaa.shiro;

import org.apache.shiro.crypto.hash.SimpleHash;
import org.springframework.util.DigestUtils;

import java.util.UUID;

/**
 * shiro框架相关
 * @Author: 陈建
 * @Date: 2018/12/13 0013 10:27
 * @Version 1.0
 */
public class ShiroUtil {
    public static String md5(String text, String key) throws Exception {
        //加密后的字符串
        String encodeStr=DigestUtils.md5DigestAsHex(text.getBytes());
        System.out.println("MD5加密后的字符串为:encodeStr="+encodeStr);
        return encodeStr;
    }


    public static void main(String[] args) throws Exception {
        int hashIterations = 1000;//加密的次数
        // String salt = UUID.randomUUID().toString();
         String salt = "test";
        Object credentials = "1234567";//密码
        String hashAlgorithmName = "MD5";//加密方式
        SimpleHash simpleHash = new SimpleHash(hashAlgorithmName, credentials, salt,
                 hashIterations);
        System.out.println("加密后的值----->" + simpleHash);
        System.out.println("加密的盐值----->" + salt);
       /* String fdsaf = md5("123456", "abc");
        System.out.println(fdsaf);*/
    }
}
