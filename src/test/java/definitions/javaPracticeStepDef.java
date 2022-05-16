package definitions;

import cucumber.api.java.en.Given;

public class javaPracticeStepDef {
    @Given("I print Hello World")
    public void iPrintHelloWorld() {
        System.out.println("Hello World");
    }

    @Given("I print Olena")
    public void iPrintOlena() {
        System.out.println("Hello Olena");
    }

    @Given("I print {string}")
    public void iPrint(String sWord) {
        System.out.println(sWord);
    }

    @Given("I compare {string} with {string}")
    public void iCompareWith(String sWord1, String sWord2) {
        System.out.println("My first word is " + sWord1 + " and " + "My second word is " + sWord2);
        System.out.println("First char for both strings: " + sWord1.charAt(0) + ", " + sWord2.charAt(0));
        System.out.println("The length of each string: " + sWord1.length() + "," + sWord2.length());
        System.out.println(sWord1.equals(sWord2));
        System.out.println("When Ignoring the case function: " + sWord1);
        System.out.println("Is first string equals second using Upper the case: " + sWord1.equals(sWord2.toUpperCase()));
    }

    @Given("I practice with numbers {int} and {int}")
    public void iPracticeWithNumbersAnd(int iNum1, int iNum2) {
        int iSum = iNum1 + iNum2;
        int iDiff = iNum1 - iNum2;
        int iProd = iNum1 * iNum2;
        int iQuot = iNum1 / iNum2;


        System.out.println(iNum1 + " + " + iNum2 + " = " + iSum);
        System.out.println(iNum1 + " - " + iNum2 + " = " + iDiff);
        System.out.println(iNum1 + " * " + iNum2 + " = " + iProd);
        System.out.println(iNum1 + " / " + iNum2 + " = " + iQuot);
    }

    @Given("I print url for {string} page")
    public void iPrintUrlForPage(String sUrl) {
        if (sUrl.equals("google")) {
            System.out.println("https://www.google.com/");
        } else if (sUrl.equals("duckduckgo")) {
            System.out.println("https://duckduckgo.com/?t=h_");
        } else {
            System.out.println("No url found");
        }
        switch (sUrl){
            case "google": System.out.println("https://www.google.com/");break;
            case "swisscows": System.out.println("https://swisscows.com");break;
            case "startpage": System.out.println("https://www.startpage.com");break;
            case "ekoru": System.out.println("https://ekoru.org/");break;
            default: System.out.println("No url found");
        }
    }

    @Given("I practice wit array operations")
    public void iPracticeWitArrayOperations() {
        int[] numbers = {5,8,5,9,1,4};
        String[]cars = {"Ford", "Toyota", "BMW", "others"};
        System.out.println("The first car is "+cars [0]);
        for (int i = 0; i<=3; i++)
        {
            System.out.println ("Print cars "+ cars[i]);
        }
        System.out.println("Amount of the cars "+ cars.length);
        System.out.println("I have "+ numbers[1] +" "+ cars[1]);
    }
}
