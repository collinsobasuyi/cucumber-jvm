package testRunner;

import java.io.File;

import org.junit.AfterClass;
import org.junit.runner.RunWith;

import com.cucumber.listener.Reporter;

import cucumber.api.CucumberOptions;
import cucumber.api.junit.Cucumber;

@RunWith(Cucumber.class)
@CucumberOptions(
		features = "src/test/resources/functionalTestCases/integration.feature",
		plugin =  { "pretty", "junit:target/cucumber-reports/Cucumber.xml" },
		monochrome = true,
		glue= {"stepDefinition"}
//		,tags= {"@TestInsuranceHairdresserCategoryG"}
		)

public class Runner {
	@AfterClass
	public static void writeExtentReport() {
		Reporter.loadXMLConfig(new File("reportConfig/report.xml"));

	}

}
