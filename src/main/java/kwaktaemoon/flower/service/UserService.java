package kwaktaemoon.flower.service;

import java.util.List;

import kwaktaemoon.flower.domain.User;

public interface UserService {
	User chkUser(String userId, String userPw);
	String getId(String name, String contactNum);
	String getPw(String name, String userId,	String email);
	int addUser(User user);
	int fixPw(String userId, String userPw);
	int fixEmail(String userId, String email);
	int fixContactNum(String userId, String contactNum);
	int fixAddress(String userId, String postcode, String addr, String detailaddr);
	int delUser(String userId);
	User getUser(String userId);
	List<User> getUsers();
	int addUserAdmin(User user);
	int fixUserAdmin(User user);
	int delUserAdmin(String userId);
}