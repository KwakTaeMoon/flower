package kwaktaemoon.flower.dao.map;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import kwaktaemoon.flower.domain.Notice;

public interface NoticeMap {
	List<Notice> selectNotices();
	List<Notice> detailNotices(@Param("noticeNum") int noticeNum);
	void insertNotice(Notice notice);
	void updateNotice(int noticeNum);
	void deleteNotice(int noticeNum);
}
