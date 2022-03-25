package kwaktaemoon.flower.dao.map;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import kwaktaemoon.flower.domain.Notice;

public interface NoticeMap {
	List<Notice> selectNotices();
	List<Notice> detailNotices(@Param("noticeNum") int noticeNum);
	void insertAdminNotice(Notice notice);
	void updateAdminNotice(int noticeNum);
	void deleteAdminNotice(int noticeNum);
}
