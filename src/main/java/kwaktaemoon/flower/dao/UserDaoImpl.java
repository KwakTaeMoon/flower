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
	public String selectId2(String userName, String contactNum) {
		return userMap.selectId2(userName, contactNum);
	}
	
	@Override
	public String selectPw(String userName, String userId, String email) {
		return userMap.selectPw(userName, userId, email);
	}
	
	@Override
	public User selectUser(String userId) {
		return userMap.selectUser(userId);
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
	public int updateAddr(String userId, String postcode, String addr, String detailAddr) {
		return userMap.updateAddr(userId, postcode, addr, detailAddr);
	}
	
	@Override
	public void deleteUser(User user) {
		userMap.deleteUser(user);
	}
	
	@Override
	public List<User> selectUsersAdmin() {
		return userMap.selectUsersAdmin();
	}
	
	@Override
	public void updateUserAdmin(User user) {
		userMap.updateUserAdmin(user);
	}
	
	@Override
	public void deleteUserAdmin(String userId) {
		userMap.deleteUserAdmin(userId);
	}
}
