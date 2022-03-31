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
	public List<Notice> selectDetailNotices(int noticeNum) {
		return noticeMap.selectDetailNotices(noticeNum);
	}
	
	@Override
	public List<Notice> selectAdminNotices() {
		return noticeMap.selectAdminNotices();
	}

	@Override
	public List<Notice> selectAdminDetailNotices(int noticeNum) {
		return noticeMap.selectAdminDetailNotices(noticeNum);
	}

	@Override
	public void insertAdminNotice(Notice notice) {
		noticeMap.insertAdminNotice(notice);
	}

	@Override
	public void updateAdminNotice(Notice notice) {
		noticeMap.updateAdminNotice(notice);
	}

	@Override
	public void deleteAdminNotice(int noticeNum) {
		noticeMap.deleteAdminNotice(noticeNum);
	}
}

