package kwaktaemoon.flower.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kwaktaemoon.flower.dao.UserDao;
import kwaktaemoon.flower.domain.User;

@Service
public class UserServiceImpl implements UserService {
	@Autowired private UserDao userDao;
	
	@Override
	public User chkUser(String userId, String userPw) {
		return userDao.login(userId, userPw);
	}
	
	@Override
	public String findId(String userName, String contactNum) {
		return userDao.selectId2(userName, contactNum);
	}
	
	@Override
	public String findPw(String userName, String userId, String email) {
		return userDao.selectPw(userName, userId, email);
	}
	
	@Override
	public User getMyPage(String userId) {
		return userDao.selectUser(userId);
	}
	
	@Override
	public int addUser(User user) {
		return userDao.insertUser(user);
	}
	
	@Override
	public String chkId(String userId) {
		return userDao.selectId(userId);
	}
	
	@Override
	public int fixPw(String userId, String userPw) {
		return userDao.updatePw(userId, userPw);
	}
	
	@Override
	public int fixEmail(String userId, String email) {
		return userDao.updateEmail(userId, email);
	}
	
	@Override
	public int fixContactNum(String userId, String contactNum) {
		return userDao.updateContactNum(userId, contactNum);
	}
	@Override
	public int fixAddr(String userId, String postcode, String addr, String detailAddr) {
		return userDao.updateAddr(userId, postcode, addr, detailAddr);
	}
	
	@Override
	public void delUser(String userId) {
		userDao.deleteUser(userId);
	}
	
	@Override
	public List<User> getUsersAdmin() {
		return userDao.selectUsersAdmin();
	}
	
	@Override
	public void fixUserAdmin(User user) {
		userDao.updateUserAdmin(user);
	}
	
	@Override
	public void delUserAdmin(String userId) {
		userDao.deleteUserAdmin(userId);
	}
}
