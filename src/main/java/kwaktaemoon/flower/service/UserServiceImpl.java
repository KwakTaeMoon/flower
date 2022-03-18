package kwaktaemoon.flower.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kwaktaemoon.flower.dao.UserDao;
import kwaktaemoon.flower.domain.User;
import kwaktaemoon.flower.domain.UserDto;

@Service
public class UserServiceImpl implements UserService {
	@Autowired private UserDao userDao;
	
	@Override
	public User chkUser(String userId, String userPw) {
		return userDao.login(userId, userPw);
	}
	
	@Override
	public String chkId(String userId) {
		return userDao.selectId(userId);
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
	public int addUser(User user) {
		return userDao.insertUser(user);
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
	public int fixAddress(String userId, String postcode, String addr, String detailaddr) {
		return userDao.updateAddress(userId, postcode, addr, detailaddr);
	}
	
	@Override
	public int delUser(String userId) {
		return userDao.deleteUser(userId);
	}
	@Override
	public User getUser(String userId) {
		return userDao.selectUser(userId);
	}
	
	@Override
	public List<User> getUsers() {
		return userDao.selectUsers();
	}
	
	@Override
	public int addUserAdmin(User user) {
		return userDao.insertUserAdmin(user);
	}
	
	@Override
	public int fixUserAdmin(User user) {
		return userDao.updateUserAdmin(user);
	}
	
	@Override
	public int delUserAdmin(String userId) {
		return userDao.deleteUserAdmin(userId);
	}
}
