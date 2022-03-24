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
	public List<Notice> getdetailNotices(int noticeNum){
		return noticeDao.detailNotices(noticeNum);
	}
	@Override
	public void addNotice(Notice notice) {
		noticeDao.insertNotice(notice);
	}
	@Override
	public void fixNotice(int noticeNum) {
		noticeDao.updateNotice(noticeNum);
	}
	@Override
	public void delNotice(int noticeNum) {
		noticeDao.deleteNotice(noticeNum);
	}
}
