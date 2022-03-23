package kwaktaemoon.flower.dao;

import java.util.List;

import kwaktaemoon.flower.domain.User;

public interface UserDao {
	User login(String userId, String userPw);
	String selectId(String userId);
	String selectId2(String userName, String contactNum);
	String selectPw(String userName, String userId, String email);
	User selectUser(String userId);
	int insertUser(User user);
	int updatePw(String userId, String userPw);
	int updateEmail(String userId, String email);
	int updateContactNum(String userId, String contactNum);
	int updateAddr(String userId, String postcode, String addr, String detailAddr);
	void deleteUser(User user);
	List<User> selectUsersAdmin();
	void updateUserAdmin(User user);
	void deleteUserAdmin(String userId);
}
