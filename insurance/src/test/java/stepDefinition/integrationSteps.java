package stepDefinition;

import static org.junit.Assert.assertEquals;

import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

public class integrationSteps {
	private WebDriver driver;
	@Given("^User is on homepage \"([^\"]*)\"$")
	public void user_is_on_homepage(String arg1) throws Throwable {
	    // Write code here that turns the phrase above into concrete actions
		System.setProperty("webdriver.gecko.driver","browserDrivers/geckodriver.exe");
		driver = new FirefoxDriver();
		driver.manage().window().maximize();
		driver.get(arg1);
	}
	
	@When("^User enter \"([^\"]*)\" into postcode search textbox$")
	public void user_enter_into_postcode_search_textbox(String Postcode) throws Throwable {
		WebDriverWait wait = new WebDriverWait(driver, 20);
		WebElement elem;
		elem= wait.until(ExpectedConditions.visibilityOfElementLocated(By.cssSelector("input.postcode-search__input")));
		elem.sendKeys(Postcode);
	}
	
	@Given("^Copy content \"([^\"]*)\" is present as heading level one at the top of the page$")
	public void copy_content_is_present_as_heading_level_one_at_the_top_of_the_page(String ExpectedResult) throws Throwable {
		WebDriverWait wait = new WebDriverWait(driver, 20);
		String ActualResult;
		ActualResult= wait.until(ExpectedConditions.visibilityOfElementLocated(By.cssSelector(".hero-block__header"))).getText();
		assertEquals(ExpectedResult, ActualResult);
	}

	@Given("^Copy content \"([^\"]*)\" is present as heading level two at the top of the page$")
	public void copy_content_is_present_as_heading_level_two_at_the_top_of_the_page(String ExpectedResult) throws Throwable {
		WebDriverWait wait = new WebDriverWait(driver, 20);
		String ActualResult;
		ActualResult= wait.until(ExpectedConditions.visibilityOfElementLocated(By.cssSelector(".hero-block__subheader"))).getText();
		assertEquals(ExpectedResult, ActualResult);
	}
	
	@Given("^Copy content \"([^\"]*)\" is present as heading level two in business insurers section$")
	public void copy_content_is_present_as_heading_level_two_in_business_insurers_section(String ExpectedResult) throws Throwable {
		WebDriverWait wait = new WebDriverWait(driver, 20);
		String ActualResult;
		ActualResult= wait.until(ExpectedConditions.visibilityOfElementLocated(By.cssSelector(".supplier-block__container"))).getText();
		assertEquals(ExpectedResult, ActualResult);
	}

	@Given("^Copy content \"([^\"]*)\" is present as heading level one in how it works section$")
	public void copy_content_is_present_as_heading_level_one_in_how_it_works_section(String ExpectedResult) throws Throwable {
		WebDriverWait wait = new WebDriverWait(driver, 20);
		String ActualResult;
		ActualResult= wait.until(ExpectedConditions.visibilityOfElementLocated(By.cssSelector(".how-it-works__header"))).getText();
		assertEquals(ExpectedResult, ActualResult);
	}
	
	@Given("^Copy content \"([^\"]*)\" is present as heading level two in how it works section$")
	public void copy_content_is_present_as_heading_level_two_in_how_it_works_section(String ExpectedResult) throws Throwable {
		WebDriverWait wait = new WebDriverWait(driver, 20);
		String ActualResult;
		ActualResult= wait.until(ExpectedConditions.visibilityOfElementLocated(By.cssSelector(".how-it-works__subheader"))).getText();
		assertEquals(ExpectedResult, ActualResult);
	}
	
	@Given("^Copy content \"([^\"]*)\" is present contact section$")
	public void copy_content_is_present_contact_section(String ExpectedResult) throws Throwable {
		WebDriverWait wait = new WebDriverWait(driver, 20);
		String ActualResult;
		ActualResult= wait.until(ExpectedConditions.visibilityOfElementLocated(By.cssSelector(".call-banner__copy"))).getText();
		assertEquals(ExpectedResult, ActualResult);
	}
	
	@Given("^Copy content \"([^\"]*)\" is present as heading level two in about section$")
	public void copy_content_is_present_as_heading_level_two_in_about_section(String ExpectedResult) throws Throwable {
		WebDriverWait wait = new WebDriverWait(driver, 20);
		String ActualResult;
		ActualResult= wait.until(ExpectedConditions.visibilityOfElementLocated(By.cssSelector("div.small-container:nth-child(1) > h2:nth-child(1)"))).getText();
		assertEquals(ExpectedResult, ActualResult);
	}

	@Given("^Copy content \"([^\"]*)\" is present as heading level two in insurers providers section$")
	public void copy_content_is_present_as_heading_level_two_in_insurers_providers_section(String ExpectedResult) throws Throwable {
		WebDriverWait wait = new WebDriverWait(driver, 20);
		String ActualResult;
		ActualResult= wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath("//div[6]/div/h2"))).getText();
		assertEquals(ExpectedResult, ActualResult);
	}
	
	
	@When("^User click find business button$")
	public void user_click_find_business_button() throws Throwable {
		WebDriverWait wait = new WebDriverWait(driver, 20);
		WebElement elem;
		elem= wait.until(ExpectedConditions.visibilityOfElementLocated(By.cssSelector("span.postcode-search__button-text")));
		elem.click();
	}
	
	@Then("^current url is \"([^\"]*)\"$")
	public void current_url_is(String ExpectedURL) throws Throwable {
		Thread.sleep(5000);
		String ActualURL = driver.getCurrentUrl();
		assertEquals(ExpectedURL, ActualURL );
	}

	@When("^User enter \"([^\"]*)\" into address search field textbox$")
	public void user_enter_into_address_search_field_textbox(String Address) throws Throwable {
		WebDriverWait wait = new WebDriverWait(driver, 20);
		WebElement elem;
		elem= wait.until(ExpectedConditions.visibilityOfElementLocated(By.cssSelector("input.postcode-lookup__filter-input")));
		elem.sendKeys(Address);
	}
	
	@When("^User click on found address fredericks$")
	public void user_click_on_found_address_fredericks() throws Throwable {
		WebDriverWait wait = new WebDriverWait(driver, 20);
		WebElement elem;
		elem= wait.until(ExpectedConditions.visibilityOfElementLocated(By.cssSelector("div.postcode-lookup__address-item.postcode-lookup__address-item--address > span")));
		elem.click();
	}

	@Then("^current is \"([^\"]*)\"$")
	public void current_is(String ExpectedURL) throws Throwable {
		Thread.sleep(3000);
		String ActualURL = driver.getCurrentUrl();
		assertEquals(ExpectedURL, ActualURL );
	}
	
	@Then("^Copy content \"([^\"]*)\" is present at top of whats your business address page$")
	public void copy_content_is_present_at_top_of_whats_your_business_address_page(String ExpectedResult) throws Throwable {
		WebDriverWait wait = new WebDriverWait(driver, 20);
		String ActualResult;
		ActualResult= wait.until(ExpectedConditions.visibilityOfElementLocated(By.cssSelector(".question-title > h2:nth-child(1)"))).getText();
		assertEquals(ExpectedResult, ActualResult);
	}

	@Then("^Copy content \"([^\"]*)\" sub header is present at top of whats your business address page$")
	public void copy_content_sub_header_is_present_at_top_of_whats_your_business_address_page(String ExpectedResult) throws Throwable {
		WebDriverWait wait = new WebDriverWait(driver, 20);
		String ActualResult;
		ActualResult= wait.until(ExpectedConditions.visibilityOfElementLocated(By.cssSelector(".question-title > h4:nth-child(2)"))).getText();
		assertEquals(ExpectedResult, ActualResult);
	}
	
	@Then("^Copy content \"([^\"]*)\" is present at top of whats does your business do page$")
	public void copy_content_is_present_at_top_of_whats_does_your_business_do_page(String ExpectedResult) throws Throwable {
		WebDriverWait wait = new WebDriverWait(driver, 20);
		String ActualResult;
		ActualResult= wait.until(ExpectedConditions.visibilityOfElementLocated(By.cssSelector(".question-title > h2:nth-child(1)"))).getText();
		assertEquals(ExpectedResult, ActualResult);
	}

	@Then("^Copy content \"([^\"]*)\" sub header is present at top of whats does your business do page$")
	public void copy_content_sub_header_is_present_at_top_of_whats_does_your_business_do_page(String ExpectedResult) throws Throwable {
		WebDriverWait wait = new WebDriverWait(driver, 20);
		String ActualResult;
		ActualResult= wait.until(ExpectedConditions.visibilityOfElementLocated(By.cssSelector(".question-title > h4:nth-child(2)"))).getText();
		assertEquals(ExpectedResult, ActualResult);
	}

	
	@When("^User enter \"([^\"]*)\" into business type text field$")
	public void user_enter_into_business_type_text_field(String BusinessType) throws Throwable {
		WebDriverWait wait = new WebDriverWait(driver, 20);
		WebElement elem;
		elem= wait.until(ExpectedConditions.visibilityOfElementLocated(By.id("search-dropdown")));
		elem.sendKeys(BusinessType);
	}
	
	@When("^User click on the business type found$")
	public void user_click_on_the_business_type_found() throws Throwable {
		WebDriverWait wait = new WebDriverWait(driver, 20);
		WebElement elem;
		elem= wait.until(ExpectedConditions.visibilityOfElementLocated(By.cssSelector(".dropdown-item")));
		elem.click();
	}
	
	@When("^User click on the business type Hairdresser$")
	public void user_click_on_the_business_type_Hairdresser() throws Throwable {
		WebDriverWait wait = new WebDriverWait(driver, 20);
		WebElement elem;
		elem= wait.until(ExpectedConditions.visibilityOfElementLocated(By.cssSelector("div.dropdown-item:nth-child(679)")));
		elem.click();
	}

	
	@Then("^copy content at bottom of page should be \"([^\"]*)\"$")
	public void copy_content_at_bottom_of_page_should_be(String ExpectedResult) throws Throwable {
		JavascriptExecutor js = (JavascriptExecutor) driver; 
		js.executeScript("window.scrollBy(0,1000)"); 
		
		WebDriverWait wait = new WebDriverWait(driver, 30);
		String ActualResult;
		ActualResult= wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath("//div[@id='app']/div/div/div[3]/div[2]/div/div[2]/h3/p"))).getText();
		assertEquals(ExpectedResult, ActualResult);
	}
	
	
	@When("^User click next button$")
	public void user_click_next_button() throws Throwable {
		WebDriverWait wait = new WebDriverWait(driver, 20);
		WebElement elem;
		elem= wait.until(ExpectedConditions.visibilityOfElementLocated(By.cssSelector("button.mic-button.next-btn.compact.icon-only-mobile")));
		elem.click();
	}
	
	@When("^User click Yes to A customer has an allergic reaction caused by something in your business\\?$")
	public void user_click_Yes_to_A_customer_has_an_allergic_reaction_caused_by_something_in_your_business() throws Throwable {
		WebDriverWait wait = new WebDriverWait(driver, 20);
		WebElement elem;
		elem= wait.until(ExpectedConditions.visibilityOfElementLocated(By.cssSelector("div.risk-card:nth-child(1) > div:nth-child(3) > button:nth-child(2)")));
		elem.click();
	}
	
	@Then("^User click Yes to Your equipment gets stolen or damaged\\?$")
	public void user_click_Yes_to_Your_equipment_gets_stolen_or_damaged() throws Throwable {
		WebDriverWait wait = new WebDriverWait(driver, 20);
		WebElement elem;
		elem= wait.until(ExpectedConditions.visibilityOfElementLocated(By.cssSelector("div.risk-card:nth-child(2) > div:nth-child(3) > button:nth-child(2)")));
		elem.click();
	}
	
	@Then("^User click Yes to Your equipment is damaged in a fire\\?$")
	public void user_click_Yes_to_Your_equipment_is_damaged_in_a_fire() throws Throwable {
		WebDriverWait wait = new WebDriverWait(driver, 20);
		WebElement elem;
		elem= wait.until(ExpectedConditions.visibilityOfElementLocated(By.cssSelector("div.risk-card:nth-child(3) > div:nth-child(3) > button:nth-child(2)")));
		elem.click();
	}
	
	@Then("^User click Yes to A member of staff injures a customer\\?$")
	public void user_click_Yes_to_A_member_of_staff_injures_a_customer() throws Throwable {
		WebDriverWait wait = new WebDriverWait(driver, 20);
		WebElement elem;
		elem= wait.until(ExpectedConditions.visibilityOfElementLocated(By.cssSelector("div.risk-card:nth-child(4) > div:nth-child(3) > button:nth-child(2)")));
		elem.click();
	}
	
	@Then("^User click Yes to Your computer and electrical equipment gets stolen in a burglary\\?$")
	public void user_click_Yes_to_Your_computer_and_electrical_equipment_gets_stolen_in_a_burglary() throws Throwable {
		WebDriverWait wait = new WebDriverWait(driver, 20);
		WebElement elem;
		elem= wait.until(ExpectedConditions.visibilityOfElementLocated(By.cssSelector("div.risk-card:nth-child(5) > div:nth-child(3) > button:nth-child(2)")));
		elem.click();
	}
	
	@Then("^User click Yes to A member of staff trips and injures themselves inside your business\\?$")
	public void user_click_Yes_to_A_member_of_staff_trips_and_injures_themselves_inside_your_business() throws Throwable {
		WebDriverWait wait = new WebDriverWait(driver, 20);
		WebElement elem;
		elem= wait.until(ExpectedConditions.visibilityOfElementLocated(By.cssSelector("div.risk-card:nth-child(6) > div:nth-child(3) > button:nth-child(2)")));
		elem.click();
	}
	
	@Then("^User click Yes to A member of staff has an allergic reaction whilst carrying out their work\\?$")
	public void user_click_Yes_to_A_member_of_staff_has_an_allergic_reaction_whilst_carrying_out_their_work() throws Throwable {
		WebDriverWait wait = new WebDriverWait(driver, 20);
		WebElement elem;
		elem= wait.until(ExpectedConditions.visibilityOfElementLocated(By.cssSelector("div.risk-card:nth-child(7) > div:nth-child(3) > button:nth-child(2)")));
		elem.click();
	}
	
	@Then("^User click Yes to A flood causes damage to your building$")
	public void user_click_Yes_to_A_flood_causes_damage_to_your_building() throws Throwable {
		WebDriverWait wait = new WebDriverWait(driver, 20);
		WebElement elem;
		elem= wait.until(ExpectedConditions.visibilityOfElementLocated(By.cssSelector("div.risk-card:nth-child(8) > div:nth-child(3) > button:nth-child(2)")));
		elem.click();
	}
	
	@Then("^User click Yes to Someone vandalises your building$")
	public void user_click_Yes_to_Someone_vandalises_your_building() throws Throwable {
		WebDriverWait wait = new WebDriverWait(driver, 20);
		WebElement elem;
		elem= wait.until(ExpectedConditions.visibilityOfElementLocated(By.cssSelector("button.outline:nth-child(2)")));
		elem.click();
	}
	
	@When("^User click £(\\d+) million button$")
	public void user_click_£_million_button(int arg1) throws Throwable {
		WebDriverWait wait = new WebDriverWait(driver, 20);
		WebElement elem;
		elem= wait.until(ExpectedConditions.visibilityOfElementLocated(By.cssSelector("div.option:nth-child(1)")));
		elem.click();
	}
	
	@When("^User click next button on the public liability page$")
	public void user_click_next_button_on_the_public_liability_page() throws Throwable {
		WebDriverWait wait = new WebDriverWait(driver, 20);
		WebElement elem;
		elem= wait.until(ExpectedConditions.visibilityOfElementLocated(By.cssSelector("button.mic-button.card-btn.next-btn.compact")));
		elem.click();
	}
	
	@When("^User click next button on employers liability page$")
	public void user_click_next_button_on_employers_liability_page() throws Throwable {
		WebDriverWait wait = new WebDriverWait(driver, 20);
		WebElement elem;
		elem= wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath("//div[2]/button[2]")));
		elem.click();
	}
	
	@When("^User select £(\\d+) for contents cover$")
	public void user_select_£_for_contents_cover(int arg1) throws Throwable {
		WebDriverWait wait = new WebDriverWait(driver, 20);
		WebElement elem;
		elem= wait.until(ExpectedConditions.visibilityOfElementLocated(By.cssSelector("#contents > option:nth-child(7)")));
		elem.click();
	}
	
	@When("^User click next button on contents cover page$")
	public void user_click_next_button_on_contents_cover_page() throws Throwable {
		WebDriverWait wait = new WebDriverWait(driver, 20);
		WebElement elem;
		elem= wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath("//div[3]/div[2]/div[3]/button[2]")));
		elem.click();
	}
	
	@When("^User click next button on building cover page$")
	public void user_click_next_button_on_building_cover_page() throws Throwable {
		WebDriverWait wait = new WebDriverWait(driver, 20);
		WebElement elem;
		elem= wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath("//div[4]/div[2]/div[2]/button[2]")));
		elem.click();
	}
	
	@When("^User click next button on summary model pop up$")
	public void user_click_next_button_on_summary_model_pop_up() throws Throwable {
		WebDriverWait wait = new WebDriverWait(driver, 20);
		WebElement elem;
		elem= wait.until(ExpectedConditions.visibilityOfElementLocated(By.cssSelector("button.next-btn:nth-child(1)")));
		elem.click();
	}
	

@When("^User click Yes I hhave an existing policy$")
public void user_click_Yes_I_hhave_an_existing_policy() throws Throwable {
	WebDriverWait wait = new WebDriverWait(driver, 20);
	WebElement elem;
	elem= wait.until(ExpectedConditions.visibilityOfElementLocated(By.cssSelector("div.check-option__unselected-circle")));
	elem.click();
}

@When("^User click next button for policy start date$")
public void user_click_next_button_for_policy_start_date() throws Throwable {
	WebDriverWait wait = new WebDriverWait(driver, 20);
	WebElement elem;
	elem= wait.until(ExpectedConditions.visibilityOfElementLocated(By.cssSelector("button.mic-button")));
	elem.click();
}
	@When("^User click call me now button$")
	public void user_click_call_me_now_button() throws Throwable {
		WebDriverWait wait = new WebDriverWait(driver, 20);
		WebElement elem;
		elem= wait.until(ExpectedConditions.visibilityOfElementLocated(By.cssSelector("button.mic-button.call-btn.call-now-btn")));
		elem.click();
	}
	
	@When("^User enter \"([^\"]*)\" in business name field$")
	public void user_enter_in_business_name_field(String arg1) throws Throwable {
		WebDriverWait wait = new WebDriverWait(driver, 20);
		WebElement elem;
		elem= wait.until(ExpectedConditions.visibilityOfElementLocated(By.cssSelector("input[name=\"Business name\"]")));
		elem.sendKeys(arg1);
	}
	
	@When("^User enter \"([^\"]*)\" in full name field$")
	public void user_enter_in_full_name_field(String arg1) throws Throwable {
		WebDriverWait wait = new WebDriverWait(driver, 20);
		WebElement elem;
		elem= wait.until(ExpectedConditions.visibilityOfElementLocated(By.cssSelector("input[name=\"Name\"]")));
		elem.sendKeys(arg1);
	}
	
	@When("^User enter \"([^\"]*)\" in phone number field$")
	public void user_enter_in_phone_number_field(String arg1) throws Throwable {
		WebDriverWait wait = new WebDriverWait(driver, 20);
		WebElement elem;
		elem= wait.until(ExpectedConditions.visibilityOfElementLocated(By.cssSelector("input[name=\"Phone\"]")));
		elem.sendKeys(arg1);
	}
	
	@When("^User enter \"([^\"]*)\" in email field$")
	public void user_enter_in_email_field(String arg1) throws Throwable {
		WebDriverWait wait = new WebDriverWait(driver, 20);
		WebElement elem;
		elem= wait.until(ExpectedConditions.visibilityOfElementLocated(By.cssSelector("input[name=\"Email\"]")));
		elem.sendKeys(arg1);
	}
	
	@When("^User enter call me button$")
	public void user_enter_call_me_button() throws Throwable {
		WebDriverWait wait = new WebDriverWait(driver, 20);
		WebElement elem;
		elem= wait.until(ExpectedConditions.visibilityOfElementLocated(By.cssSelector("button.mic-button.submit-btn.compact")));
		elem.click();
	}
	
	@When("^User click the call me now button on speak to us page$")
	public void user_click_the_call_me_now_button_on_speak_to_us_page() throws Throwable {
		WebDriverWait wait = new WebDriverWait(driver, 20);
		WebElement elem;
		elem= wait.until(ExpectedConditions.visibilityOfElementLocated(By.cssSelector(".call-btn")));
		elem.click();	
	}

	@When("^User click enter button on speak to us page$")
	public void user_click_enter_button_on_speak_to_us_page() throws Throwable {
		WebDriverWait wait = new WebDriverWait(driver, 20);
		WebElement elem;
		elem= wait.until(ExpectedConditions.visibilityOfElementLocated(By.cssSelector(".submit-btn")));
		elem.click();
	}
	
	@When("^User enter full name \"([^\"]*)\" on speak to us page$")
	public void user_enter_full_name_on_speak_to_us_page(String arg1) throws Throwable {
		WebDriverWait wait = new WebDriverWait(driver, 20);
		WebElement elem;
		elem= wait.until(ExpectedConditions.visibilityOfElementLocated(By.name("Name")));
		elem.sendKeys(arg1);
	}

	@When("^User enter business name \"([^\"]*)\" on speak to us page$")
	public void user_enter_business_name_on_speak_to_us_page(String arg1) throws Throwable {
		WebDriverWait wait = new WebDriverWait(driver, 20);
		WebElement elem;
		elem= wait.until(ExpectedConditions.visibilityOfElementLocated(By.name("Business name")));
		elem.sendKeys(arg1);
	}

	@When("^User enter phone number \"([^\"]*)\" on speak to us page$")
	public void user_enter_phone_number_on_speak_to_us_page(String arg1) throws Throwable {
		WebDriverWait wait = new WebDriverWait(driver, 20);
		WebElement elem;
		elem= wait.until(ExpectedConditions.visibilityOfElementLocated(By.name("Phone")));
		elem.sendKeys(arg1);
	}

	@When("^User enter email \"([^\"]*)\" on speak to us page$")
	public void user_enter_email_on_speak_to_us_page(String arg1) throws Throwable {
		WebDriverWait wait = new WebDriverWait(driver, 20);
		WebElement elem;
		elem= wait.until(ExpectedConditions.visibilityOfElementLocated(By.name("Email")));
		elem.sendKeys(arg1);
	}



}

