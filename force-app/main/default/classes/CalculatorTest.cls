@isTest
// Debug (Run) ALL the TEST   (03/10/2022)
//  Anonate Class and Test methods with @isTest. ALL METHODS ARE STATIC.
public  class CalculatorTest {
    @isTest
    public static void testMessages(){
        Calculator2.welcomeMessage();
        Calculator2.printNewMessage('This is for a test method');
    }
    @isTest
    private static void addTest1(){
        integer calcAdd = Calculator2.add(10,15);
        System.assertEquals(25, calcAdd);
    }
    @isTest
    private static void addTest2(){
        integer calcAdd = Calculator2.add(10,15,20);
        System.assertEquals(45, calcAdd);
    }
    }
    