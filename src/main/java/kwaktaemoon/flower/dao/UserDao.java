package kwaktaemoon.flower.dao;

import java.util.List;

import kwaktaemoon.flower.domain.User;

public interface UserDao {
	User login(String userId, String userPw);
	String selectId(String name, String contactNum);
	String selectPw(String name, String userId,	String email);
	int insertUser(User user);
	int updatePw(String userId, String userPw);
	int updateEmail(String userId, String email);
	int updateContactNum(String userId, String contactNum);
	int updateAddress(String userId, String postcode, String addr, String detailaddr);
	int deleteUser(String userId);
	User selectUser(String userId);
	List<User> selectUsers();
	int insertUserAdmin(User user);
	int updateUserAdmin(User user);
	int deleteUserAdmin(String userId);
}
