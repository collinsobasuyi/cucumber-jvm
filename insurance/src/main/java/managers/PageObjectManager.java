package managers;
import org.openqa.selenium.WebDriver;

import pageObjectsModel.*;


public class PageObjectManager {

	private WebDriver driver;
	private HomePage homePage;
	private SelectAddressPage selectAddressPage;
	private BusinessName businessName;
	private ChatPage chatPage;


	public PageObjectManager(WebDriver driver) {
		this.driver = driver;
	}

	public HomePage getHomePage(){
		return (homePage == null) ? homePage = new HomePage(driver) : homePage;
	}

	public SelectAddressPage getSelectAddress(){
		return (selectAddressPage == null) ? selectAddressPage = new SelectAddressPage(driver) : selectAddressPage;
	}

	public BusinessName getBusinessName(){
		return (businessName == null) ? businessName = new BusinessName(driver) : businessName;
	}

	public ChatPage getElectricityChat(){
		return (chatPage == null) ? chatPage = new ChatPage(driver) : chatPage;
	}

}