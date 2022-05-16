package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;


public class webDriverStepDefs {
    @Given("I navigate {string}")
    public void iNavigate(String sUrl) {
        switch (sUrl) {
            case "google":
                getDriver().get("https://www.google.com/");
                //break;
            case "swisscows":
                getDriver().get("https://swisscows.com");
                //break;
            case "startpage":
                getDriver().get("https://www.startpage.com");
                //break;
            case "ekoru":
                getDriver().get("https://ekoru.org/");
                //break;
            case "quote":
                getDriver().get("https://skryabin.com/market/quote.html");
            default:
                System.out.println("No url found");
        }
    }

    @And("I print page details")
    public void iPrintPageDetails() {
        System.out.println(getDriver().getTitle());
        System.out.println(getDriver().getCurrentUrl());
        System.out.println(getDriver().getWindowHandle());
    }

    @When("I type {string} into email field")
    public void iTypeIntoEmailField(String sEmail) {
        getDriver().findElement(By.xpath("//input[@name='email']")).sendKeys(sEmail);
    }

    @And("I click Submit button")
    public void iClickSubmitButton() {
        getDriver().findElement(By.xpath("//button[@id='formSubmit']")).click();
    }

    @Then("error message {string} should be displayed")
    public void errorMessageShouldBeDisplayed(String sMessage) {
        String sActualMessage = getDriver().findElement(By.xpath("//label[@id='email-error']")). getText();
        System.out.println(sActualMessage);
        assertThat(sActualMessage.equals((sMessage)));
    }

    @Then("I clear input text from email field")
    public void iClearInputTextFromEmailField() {
        getDriver().findElement(By.xpath("//input[@name='email']")).clear();
    }

    @Then("error message {string} should not be displayed")
    public void errorMessageShouldNotBeDisplayed(String sMessage) {
        String sActualMessage = getDriver().findElement(By.xpath("//label[@id='email-error']")). getText();
        assertThat(sActualMessage.isBlank());
    }
}
