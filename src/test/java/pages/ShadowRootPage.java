package pages;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import utilities.Driver;

public class ShadowRootPage {
    public   ShadowRootPage() {
        PageFactory.initElements(Driver.getDriver(),this);
    }

//    @FindBy (tagName = "book-app")
//    public WebElement root ;
//
//    @FindBy (tagName = "book-app")
//    public WebElement root ;
//
//    @FindBy (tagName = "book-app")
//    public WebElement root ;
//
//    @FindBy (tagName = "book-app")
//    public WebElement root ;

}
