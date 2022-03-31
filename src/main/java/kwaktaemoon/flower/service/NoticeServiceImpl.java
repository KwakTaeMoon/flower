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
	public List<Notice> getDetailNotices(int noticeNum){
		return noticeDao.selectDetailNotices(noticeNum);
	}
	
	@Override
	public List<Notice> getAdminNotices(){
		return noticeDao.selectAdminNotices();
	}
	
	@Override
	public List<Notice> getAdminDetailNotices(int noticeNum){
		return noticeDao.selectAdminDetailNotices(noticeNum);
	}
	
	@Override
	public void addAdminNotice(Notice notice) {
		noticeDao.insertAdminNotice(notice);
	}
	@Override
	public void fixAdminNotice(Notice notice) {
		noticeDao.updateAdminNotice(notice);
	}
	@Override
	public void delAdminNotice(int noticeNum) {
		noticeDao.deleteAdminNotice(noticeNum);
	}
}

