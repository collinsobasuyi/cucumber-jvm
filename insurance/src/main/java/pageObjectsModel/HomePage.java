package pageObjectsModel;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.How;
import org.openqa.selenium.support.PageFactory;

public class HomePage {

	public HomePage(WebDriver driver) {
		PageFactory.initElements(driver, this);
	}

	@FindBy(how = How.CSS, using = "h1.head__text") 
	private WebElement Header;
	
	@FindBy(how = How.ID, using = "postcode-input-top") 
	private WebElement TopPostCodeTextField;

	@FindBy(how = How.ID, using = "postcode-input") 
	private WebElement ButtomPostCodeTextField;

	@FindBy(how = How.CSS, using = "span.d-none.d-lg-block") 
	private WebElement FindBusinessButton;
	
	
	public String VerifyHeaderText() {
		return Header.getText();
	}

	public void ClearPostCodeTextField() {
		TopPostCodeTextField.clear();
	}

	public void ClickPostCodeTextField() {
		TopPostCodeTextField.click();
	}

	public void TypeYourPostCode(String PostCode) {
		TopPostCodeTextField.sendKeys(PostCode);
	}

	public void ClearPostCodeTextFieldButtom() {
		TopPostCodeTextField.clear();
	}

	public void ClickPostCodeTextFieldButtom() {
		TopPostCodeTextField.click();
	}

	public void TypeYourPostCodeButtom(String PostCode) {
		TopPostCodeTextField.sendKeys(PostCode);
	}

	public void ClickFindBusinessButton() {
		FindBusinessButton.submit();
	}
}


