package az.employee;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.test.context.junit4.SpringRunner;

@ActiveProfiles("dev")
@RunWith(SpringRunner.class)
@SpringBootTest
public class Employeeaz1SpringApplicationTests {

	@Test
	public void contextLoads() {
		System.out.println("test...");
	}

}
