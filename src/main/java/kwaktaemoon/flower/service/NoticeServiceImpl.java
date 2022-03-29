package kwaktaemoon.flower.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kwaktaemoon.flower.dao.NoticeDao;
import kwaktaemoon.flower.domain.Notice;

@Service
public class NoticeServiceImpl implements NoticeService{
	@Autowired private NoticeDao noticeDao;
	
	@Override
	public List<Notice> getNotices(){
		return noticeDao.selectNotices();
	}
	@Override
	public Notice getNotice(int noticeNum) {
		return noticeDao.selectNotice(noticeNum);
	}
	@Override
	public int addNotice(Notice notice) {
		return noticeDao.insertNotice(notice);
	}
	@Override
	public int fixNotice(Notice notice) {
		return noticeDao.updateNotice(notice);
	}
	@Override
	public int delNotice(int noticeNum) {
		return noticeDao.deleteNotice(noticeNum);
	}
}

