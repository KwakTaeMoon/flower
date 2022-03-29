package kwaktaemoon.flower.dao;

import java.util.List;

import kwaktaemoon.flower.domain.Notice;

public interface NoticeDao {
	List<Notice> selectNotices();
	Notice selectNotice(int noticeNum);
	int insertNotice(Notice notice);
	int updateNotice(Notice notice);
	int deleteNotice(int noticeNum);
}

