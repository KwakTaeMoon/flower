package kwaktaemoon.flower.dao;

import java.util.List;

import kwaktaemoon.flower.domain.Notice;

public interface NoticeDao {
	List<Notice> selectNotices();
	List<Notice> selectDetailNotices(int noticeNum);
	List<Notice> selectAdminNotices();
	List<Notice> selectAdminDetailNotices(int noticeNum);
	void insertAdminNotice(Notice notice);
	void updateAdminNotice(Notice notice);
	void deleteAdminNotice(int noticeNum);
}

