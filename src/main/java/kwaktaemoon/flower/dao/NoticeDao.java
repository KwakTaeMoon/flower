package kwaktaemoon.flower.dao;

import java.util.List;

import kwaktaemoon.flower.domain.Notice;

public interface NoticeDao {
	List<Notice> selectNotices();
	List<Notice> detailNotices(int noticeNum);
	void insertNotice(Notice notice);
	void updateNotice(int noticeNum);
	void deleteNotice(int noticeNum);
}
