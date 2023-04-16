/**
 * 
 */
package test;

import static org.junit.jupiter.api.Assertions.assertEquals;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.Test;

import Beans.User;
import dao.UserDao;

/**
 * @author aly_d
 *
 */
class UserTest {
	private UserDao daoU = new UserDao();
	private User userA= new User();
	 
	/**
	 * @throws java.lang.Exception
	 */
	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		System.out.println("je suis apellé AVANT chaque test");
		
	}

	/**
	 * @throws java.lang.Exception
	 */
	@AfterAll
	static void tearDownAfterClass() throws Exception {
		System.out.println("je suis apellé APRES chaque test");
	}

	@Test
	void test() {
		//fail("Not yet implemented");
	}
	@Test
    public void testUserCreationWithValidData() {
		
        userA.setNickname("JohnDoe");
        userA.setEmail("johndoe@example.com");
        userA.setPassword("password123");

        assertEquals(false, daoU.create(userA));
	}

    @Test
    public void testUserCreationWithInvalidNickname() {
    	
        userA.setNickname("");
        userA.setEmail("johndoe@example.com");
        userA.setPassword("password123");
        userA.getRoleId();

        assertEquals(false, daoU.create(userA));
    }

    @Test
    public void testUserCreationWithInvalidEmail() {
 
        userA.setNickname("JohnDoe");
        userA.setEmail("invalidemail");
        userA.setPassword("password123");
        userA.getRoleId();

        assertEquals(false, daoU.create(userA));
    }

    @Test
    public void testUserCreationWithInvalidPassword() {
        userA.setNickname("JohnDoe");
        userA.setEmail("johndoe@example.com");
        userA.setPassword("123");
        userA.getRoleId();

        assertEquals(false, daoU.create(userA));
    }

}
