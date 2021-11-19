package stepdefinitions;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebElement;
import utilities.ConfigReader;
import utilities.Driver;

import java.util.concurrent.TimeUnit;

public class ShadowRootStepDefinitions {

    @Given("kullanici sayfaya gider")
    public void kullanici_sayfaya_gider() {
        Driver.getDriver().get(ConfigReader.getProperty("homework1"));
        Driver.getDriver().manage().timeouts().implicitlyWait(10 , TimeUnit.SECONDS);
    }
    @Then("{string} kelimesini aratir")
    public void kelimesini_aratir(String string) {
        WebElement root = Driver.getDriver().findElement(By.tagName("book-app"));

        JavascriptExecutor js = (JavascriptExecutor)Driver.getDriver();
        WebElement shadow = (WebElement) js.executeScript("return arguments[0].shadowRoot" , root);

        WebElement appheader = shadow.findElement(By.tagName("app-header"));
        WebElement apptoolbar = appheader.findElement(By.cssSelector("app-toolbar.toolbar-bottom"));
        WebElement bookinputdecorator = apptoolbar.findElement(By.tagName("book-input-decorator"));

        bookinputdecorator.findElement(By.cssSelector("input#input")).sendKeys("Testing");
    }

}
