package kwaktaemoon.flower.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kwaktaemoon.flower.dao.map.NoticeMap;
import kwaktaemoon.flower.domain.Notice;

@Repository
public class NoticeDaoImpl implements NoticeDao{
	@Autowired private NoticeMap noticeMap;
	
	@Override
	public List<Notice> selectNotices() {
		return noticeMap.selectNotices();
	}

	@Override
	public Notice selectNotice(int noticeNum) {
		return noticeMap.selectNotice(noticeNum);
	}

	@Override
	public int insertNotice(Notice notice) {
		return noticeMap.insertNotice(notice);
	}

	@Override
	public int updateNotice(Notice notice) {
		return noticeMap.updateNotice(notice);
	}

	@Override
	public int deleteNotice(int noticeNum) {
		return noticeMap.deleteNotice(noticeNum);
	}
}

