/**
 * 
 */
package Beans;

/**
 * @author aly_d
 *
 */
public class User {
	
	    private int id;
	    private String nickname;
	    private String email;
	    private String password;
	    private Role roleId;
	    private boolean isActive = true;
		/**
		 * 
		 */
		public User() {
		}
		/*
		 * constructor only for dev mock(to be deleted after developpement
		 */
		public User(String email, Role role) {
			
			this.email = email;
			this.roleId = role;
		}

		/**
		 * @param nickname
		 * @param email
		 * @param password
		 * @param isActive
		 */
		public User(String nickname, String email, String password,Role roleId ,boolean isActive) {
			this.nickname = nickname;
			this.email = email;
			this.password = password;
			this.isActive = isActive;
		}
		/**
		 * @param id
		 * @param nickname
		 * @param email
		 * @param password
		 * @param createdAt
		 * @param lastLoginAt
		 * @param isActive
		 * @param roleId
		 */
		public User(int id, String nickname, String email, String password, Role roleId) {
			this.id = id;
			this.nickname = nickname;
			this.email = email;
			this.password = password;
			this.roleId = roleId;
		}
		/**
		 * @param id
		 * @param email
		 * @param password
		 * @param roleId
		 */
		public User(int id, String email, String password, Role roleId) {
			this.id = id;
			this.email = email;
			this.password = password;
			this.roleId = roleId;
		}
		/**
		 * @param id
		 * @param email
		 * @param password
		 * @param roleId
		 * @param isActive
		 */
		public User(int id, String email, String password, Role roleId, boolean isActive) {
			this.id = id;
			this.email = email;
			this.password = password;
			this.roleId = roleId;
			this.isActive = isActive;
		}
		/**
		 * @param nickname
		 * @param email
		 * @param password
		 * @param roleId
		 */
		/*for registration*/
		public User(String nickname, String email, String password, Role roleId) {
			this.nickname = nickname;
			this.email = email;
			this.password = password;
			this.roleId = roleId;
		}
		/**
		 * @param nickname
		 * @param email
		 * @param password
		 */
		/*for registration*/
		public User(String nickname, String email, String password) {
			this.nickname = nickname;
			this.email = email;
			this.password = password;
		}
		/**
		 * @return the isActive
		 */
		public boolean isActive() {
			return isActive;
		}
		/**
		 * @param isActive the isActive to set
		 */
		public void setActive(boolean isActive) {
			this.isActive = isActive;
		}
		/**
		 * @return the id
		 */
		public int getId() {
			return id;
		}
		/**
		 * @param id the id to set
		 */
		public void setId(int id) {
			this.id = id;
		}
		/**
		 * @return the nickname
		 */
		public String getNickname() {
			return nickname;
		}
		/**
		 * @param nickname the nickname to set
		 */
		public void setNickname(String nickname) {
			this.nickname = nickname;
		}
		/**
		 * @return the email
		 */
		public String getEmail() {
			return email;
		}
		/**
		 * @param email the email to set
		 */
		public void setEmail(String email) {
			this.email = email;
		}
		/**
		 * @return the password
		 */
		public String getPassword() {
			return password;
		}
		/**
		 * @param password the password to set
		 */
		public void setPassword(String password) {
			this.password = password;
		}
		/**
		 * @return the roleId
		 */
		public Role getRoleId() {
			return roleId;
		}
		/**
		 * @param roleId the roleId to set
		 */
		public void setRoleId(Role roleId) {
			this.roleId = roleId;
		}
}