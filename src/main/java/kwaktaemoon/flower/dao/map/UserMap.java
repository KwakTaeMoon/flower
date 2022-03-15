package kwaktaemoon.flower.dao.map;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import kwaktaemoon.flower.domain.User;

public interface UserMap {
	User login(@Param("userId") String userId, @Param("userPw") String userPw);
	String selectId(@Param("name") String name, @Param("contactNum") String contactNum);
	String selectPw(@Param("name") String name, @Param("userId") String userId,
													@Param("email") String email);
	int insertUser(User user);
	int updatePw(@Param("userId") String userId, @Param("userPw") String userPw);
	int updateEmail(@Param("userId") String userId, @Param("email") String email);
	int updateContactNum(@Param("userId") String userId, @Param("contactNum") String contactNum);
	int updateAddress(@Param("userId") String userId, @Param("postcode") String postcode,
							@Param("addr") String addr,@Param("detailAddr") String detailaddr);
	int deleteUser(@Param("userId") String userId);
	User selectUser(@Param("userId") String userId);
	List<User> selectUsers();
	int insertUserAdmin(User user);
	int updateUserAdmin(User user);
	int deleteUserAdmin(@Param("userId") String userId);
}
