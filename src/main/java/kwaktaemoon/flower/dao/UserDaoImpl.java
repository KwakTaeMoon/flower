package kwaktaemoon.flower.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kwaktaemoon.flower.dao.map.UserMap;
import kwaktaemoon.flower.domain.User;

@Repository
public class UserDaoImpl implements UserDao {
	@Autowired private UserMap userMap;
	
	@Override
	public User login(String userId, String userPw) {
		return userMap.login(userId, userPw);
	}
	
	@Override
	public String selectId(String userId) {
		return userMap.selectId(userId);
	}
	
	@Override
	public String selectPw(String userName, String userId,	String email) {
		return userMap.selectPw(userName, userId, email);
	}
	
	@Override
	public int insertUser(User user) {
		return userMap.insertUser(user);
	}
	
	@Override
	public int updatePw(String userId, String userPw) {
		return userMap.updatePw(userId, userPw);
	}
	
	@Override
	public int updateEmail(String userId, String email) {
		return userMap.updateEmail(userId, email);
	}
	
	@Override
	public int updateContactNum(String userId, String contactNum) {
		return userMap.updateContactNum(userId, contactNum);
	}
	@Override
	public int updateAddress(String userId, String postcode, String addr, String detailaddr) {
		return userMap.updateAddress(userId, postcode, addr, detailaddr);
	}
	
	@Override
	public int deleteUser(String userId) {
		return userMap.deleteUser(userId);
	}
	@Override
	public User selectUser(String userId) {
		return userMap.selectUser(userId);
	}
	
	@Override
	public List<User> selectUsers() {
		return userMap.selectUsers();
	}
	
	@Override
	public int insertUserAdmin(User user) {
		return userMap.insertUserAdmin(user);
	}
	
	@Override
	public int updateUserAdmin(User user) {
		return userMap.updateUserAdmin(user);
	}
	
	@Override
	public int deleteUserAdmin(String userId) {
		return userMap.deleteUserAdmin(userId);
	}
}
