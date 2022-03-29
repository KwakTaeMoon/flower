package kwaktaemoon.flower.dao.map;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import kwaktaemoon.flower.domain.Notice;

public interface NoticeMap {
	List<Notice> selectNotices();
	int insertNotice(Notice notice);
	int updateNotice(Notice notice);
	int deleteNotice(@Param("noticeNum")int noticeNum);
	Notice selectNotice(@Param("noticeNum") int noticeNum);
}
