package definitions;

import cucumber.api.java.en.*;
import org.assertj.core.api.Assertions;
import org.openqa.selenium.By;

import static org.assertj.core.api.AssertionsForClassTypes.assertThat;
import static org.testng.Assert.assertEquals;
import static support.TestContext.getDriver;

public class webDriverHWQuote {
    @Given("I navigate  to {string}")
    public void iNavigateTo(String sUrl) {
        getDriver().get("https://skryabin.com/market/quote.html");
    }

    @When("I click in name field")
    public void iClickInNameField() {
        getDriver().findElement(By.xpath("//input[@id='name']")).click();
    }

    @Then("new window should be displayed")
    public void newWindowShouldBeDisplayed() {
        getDriver().findElement(By.xpath("//span[@id='ui-id-1']"));
    }

    @Then("I type in First Name {string}")
    public void iTypeInFirstName(String sFirstName) {
        getDriver().findElement(By.xpath("//input[@id='firstName']")).sendKeys(sFirstName);
    }

    @Then("I type in Middle Name {string}")
    public void iTypeInMiddleName(String sMiddleName) {
        getDriver().findElement(By.xpath("//input[@id='middleName']")).sendKeys(sMiddleName);
    }

    @Then("I type in Last Name {string}")
    public void iTypeInLastName(String sLastName) {
        getDriver().findElement(By.xpath("//input[@id='lastName']")).sendKeys(sLastName);
    }

    @And("I click Save button")
    public void iClickSaveButton() {
        getDriver().findElement(By.xpath("//span[contains(text(),'Save')]")).click();
    }

    @Then("Name {string} should be fully displayed")
    public void nameShouldBeFullyDisplayed(String sFullName) {
        getDriver().findElement(By.xpath("//input[@id='name']"));
        String sActualMessage = getDriver().findElement(By.xpath("//input[@id='name']")). getText();
        System.out.println(sActualMessage);
        assertThat(sActualMessage.equals((sFullName)));
    }

    @When("I type {string} in username field")
    public void iTypeInUsernameField(String sUsername) {
        getDriver().findElement(By.xpath("//input[@name='username']")).sendKeys(sUsername);

    }

    @Then("I click button Submit")
    public void iClickButtonSubmit() {
        getDriver().findElement(By.xpath("//button[@id='formSubmit']")).click();
    }

    @Then("error message under username field {string} should be displayed")
    public void errorMessageUnderUsernameFieldShouldBeDisplayed(String sError) {
        String sActualMessage = getDriver().findElement(By.xpath("//label[@id='username-error']")). getText();
        System.out.println(sActualMessage);
        Assertions.assertThat(sActualMessage.equals((sError)));
    }

    @When("I clear input text from username field")
    public void iClearInputTextFromUsernameField() {
        getDriver().findElement(By.xpath("//input[@name='email']")).clear();
    }

    @But("error message under username field {string} should not be displayed")
    public void errorMessageUnderUsernameFieldShouldNotBeDisplayed(String sError) {
        Assertions.assertThat(getDriver().findElement(By.xpath("//label[@id='username-error']")).isDisplayed()).isFalse();
    }

    @When("I type into email field {string}")
    public void iTypeIntoEmailField(String sEmail) {
        getDriver().findElement(By.xpath("//input[@name='email']")).sendKeys(sEmail);
    }

    @Then("error message should be displayed as {string}")
    public void errorMessageShouldBeDisplayedAs(String sError) {
        String sActualMessage = getDriver().findElement(By.xpath("//label[@id='email-error']")). getText();
        System.out.println(sActualMessage);
        Assertions.assertThat(sActualMessage.equals((sError)));
    }

    @When("I clean up email field")
    public void iCleanUpEmailField() {
        getDriver().findElement(By.xpath("//input[@name='email']")).clear();
    }

    @Then("error message should not be displayed as {string}")
    public void errorMessageShouldNotBeDisplayedAs(String sError) {
        Assertions.assertThat(getDriver().findElement(By.xpath("//label[@id='email-error']")).isDisplayed()).isFalse();
    }

    @When("I type {string} in password filed")
    public void iTypeInPasswordFiled(String sPassword) {
        getDriver().findElement(By.xpath("//input[@id='password']")).sendKeys(sPassword);
    }

    @Then("password error message should be displayed as {string}")
    public void passwordErrorMessageShouldBeDisplayedAs(String sError) {
        String sActualMessage = getDriver().findElement(By.xpath("//label[@id='password-error']")). getText();
        System.out.println(sActualMessage);
        Assertions.assertThat(sActualMessage.equals((sError)));
    }

    @Then("I clean up password field")
    public void iCleanUpPasswordField() {
        getDriver().findElement(By.xpath("//input[@id='password']")).clear();
    }

    @Then("password error message should not be displayed")
    public void passwordErrorMessageShouldNotBeDisplayed() {
        Assertions.assertThat(getDriver().findElement(By.xpath("//label[@id='password-error']")).isDisplayed()).isFalse();
    }

    @When("I click on password")
    public void iClickOnPassword() {
        getDriver().findElement(By.xpath("//input[@name='email']")).click();
    }

    @Then("confirm password field is disabled")
    public void confirmPasswordFieldIsDisabled() {
        Assertions.assertThat(getDriver().findElement(By.xpath("//input[@id='confirmPassword']")).isEnabled()).isFalse();
    }

    @Then("confirm password is enabled")
    public void confirmPasswordIsEnabled() {
        Assertions.assertThat(getDriver().findElement(By.xpath("//input[@id='confirmPassword']")).isEnabled());
    }

    @Then("I type {string} in confirm password field")
    public void iTypeInConfirmPasswordField(String sConfPassword) {
        getDriver().findElement(By.xpath("//input[@id='confirmPassword']")).sendKeys(sConfPassword);
    }

    @Then("confirm password display error {string}")
    public void confirmPasswordDisplayError(String sConfPassword) {
        String sActualMessage = getDriver().findElement(By.xpath("//input[@id='confirmPassword']")). getText();
        System.out.println(sActualMessage);
        Assertions.assertThat(sActualMessage.equals((sConfPassword)));
    }

    @Then("I clean confirm password field")
    public void iCleanConfirmPasswordField() {
        getDriver().findElement(By.xpath("//input[@id='confirmPassword']")).clear();
    }

    @Then("{string} error message should be displayed")
    public void errorMessageShouldBeDisplayed(String sPrPol) {
        String sActualMessage = getDriver().findElement(By.xpath("//label[@id='agreedToPrivacyPolicy-error']")). getText();
        System.out.println(sActualMessage);
        Assertions.assertThat(sActualMessage.equals((sPrPol)));

    }

    @Then("I click agree to PP")
    public void iClickAgreeToPP() {
        getDriver().findElement(By.xpath("//input[@name='agreedToPrivacyPolicy']")).click();
    }

    @Then("PP error message is not displayed")
    public void ppErrorMessageIsNotDisplayed() {
        Assertions.assertThat(getDriver().findElement(By.xpath("//label[@id='agreedToPrivacyPolicy-error']")).isDisplayed()).isFalse();
    }

    @But("confirm password error message is not displayed")
    public void confirmPasswordErrorMessageIsNotDisplayed() {
        Assertions.assertThat(getDriver().findElement(By.xpath("//label[@id='confirmPassword-error']")).isDisplayed()).isFalse();
    }

    @And("I confirm {string} {string} {string} is displayed as Full Name {string}")
    public void iConfirmIsDisplayedAsFullName(String sFirstName, String sMiddleName, String sLastName, String sFullName) {
        getDriver().findElement(By.xpath("//input[@id='firstName']")).sendKeys(sFirstName);
        getDriver().findElement(By.xpath("//input[@id='middleName']")).sendKeys(sMiddleName);
        getDriver().findElement(By.xpath("//input[@id='lastName']")).sendKeys(sLastName);
        getDriver().findElement(By.xpath("//span[contains(text(),'Save')]")).click();
        String sActualName = sFirstName +" "+ sMiddleName + " " + sLastName;
        System.out.println("Actual Name is " + sActualName);
        System.out.println("Expected Name is " + sFullName);
        assertEquals(sActualName, sFullName);
    }

    @Then("confirmation window appears")
    public void confirmationWindowAppears() {
        Assertions.assertThat(getDriver().findElement(By.xpath("//legend[contains(text(),'Submitted Application')]")).isDisplayed());

    }
}
