package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;

public class javaCodingHomeworkStepDef {
    @Given("I convert {int} foot to centimeters")
    public void iConvertFootToCentimeters(int iFt) {
        double iCm = iFt * 3.48;
        System.out.println( iFt + " * " + 3.48 + " = " + iCm);
        System.out.println(iFt + " foot equals " +iCm +" centimeters");
    }

    @And("I convert {int} US gallon to liters")
    public void iConvertUSGallonToLiters(int iGl) {
        double iLtr = iGl * 3.78;
        System.out.println( iGl + " * " + 3.78 + " = " + iLtr);
        System.out.println(iGl + " gallon equals " +iLtr +" liters");
    }

    /*(Formula C to F: (0°C × 9/5) + 32 = 32°F)*/
    @And("I convert {int} Celsius to Fahrenheit")
    public void iConvertCelsiusToFahrenheit(int iCls) {
        double iFar = (iCls * 9 / 5) +32;
        System.out.println(iCls + " * " + 9 +" / " + 5 + " + " +32 +" = " + iFar);
        System.out.println(iCls + "° Celsius equals " +iFar +"° Fahrenheit");
    }


    @And("I check if number “{int}” is odd or even")
    public void iCheckIfNumberIsOddOrEven(int num1) {
        {
            if (num1 % 2 == 0){
                System.out.println(num1 + " is even number");
            }
            else{
                System.out.println(num1 + " is odd number");
            }
        }
    }

    @Given("I count every day of the week")
    public void iCountEveryDayOfTheWeek() {
        String[] week = {"Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"};
        for (String element: week) {
            System.out.println(element);
        }
    }

    @Given("I want to know cost of {int} pounds of {string}")
    public void iWantToKnowCostOfPoundsOf(int iPound, String sFruit) {
    double[] iCost = {1.2, 1.3, 1.4, 1.5,1.6};
    for (int i= 0; i< iCost.length; i++);
    switch (sFruit) {
        case "apples": double acost = iCost[0]*iPound;
            System.out.println("Cost of apples is " + acost + "$");break;
        case "cherries": double ccost = iCost[1]*iPound;
            System.out.println("Cost of cherries is " + ccost + "$");break;
        case "plums": double pcost = iCost[2]*iPound;
            System.out.println("Cost of plums is " + pcost + "$");break;
        case "grapefruits": double gcost = iCost[3]*iPound;
            System.out.println("Cost of grapefruits is " + gcost + "$");break;
        case "oranges": double ocost = iCost[4]*iPound;
            System.out.println("Cost of oranges is " + ocost + "$");break;
        default: System.out.println("This product is unavailable");
        }
    }

    @Given("I receive {int} percent on my test")
    public void iReceivePercentOnMyTest(int Result) {

            if (Result > 90) {
                System.out.println("You passed with Grade A");
            } else if (Result <= 89 && Result >= 80) {
                System.out.println("You passed with Grade B");
            } else if (Result <= 79 && Result >= 70) {
                System.out.println("You passed with Grade C");
            } else if (Result <= 69 && Result >= 60) {
                System.out.println("You passed with Grade D");
            } else {
                System.out.println("You passed with Grade F");
            }
        }
    }
