/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.javaProject.stateless;

import javax.ejb.Stateless;
import javax.ejb.LocalBean;

/**
 *
 * @author Nisarg
 */
@Stateless
@LocalBean
public class SessionEJBean {

    // Add business logic below. (Right-click in editor and choose
    // "Insert Code > Add Business Method")
    public int add(int number1, int number2) {
        return number1 + number2;
    }

    public int subtract(int number1, int number2) {
        return number1 - number2;
    }

    public int multiply(int number1, int number2) {
        return number1 * number2;
    }

    public int division(int number1, int number2) {
        return number1 / number2;
    }
    public int conversion(int number1) {
        number1 = number1 * 49;
        return number1;
    }
}
