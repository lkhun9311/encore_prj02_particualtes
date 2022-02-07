package test.testdb;

public class TestVO {
	
	String userId;
    String userPwd;
    
    TestVO(){}
    TestVO(String userId, String userPwd){
    	this.userId = userId;
    	this.userPwd = userPwd;
    }
	
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserPwd() {
		return userPwd;
	}
	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}

}
