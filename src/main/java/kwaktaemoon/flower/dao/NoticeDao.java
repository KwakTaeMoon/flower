package kwaktaemoon.flower.dao;

import java.util.List;

import kwaktaemoon.flower.domain.Notice;

public interface NoticeDao {
	List<Notice> selectNotices();
	List<Notice> detailNotices(int noticeNum);
	void insertAdminNotice(Notice notice);
	void updateAdminNotice(int noticeNum);
	void deleteAdminNotice(int noticeNum);
}

