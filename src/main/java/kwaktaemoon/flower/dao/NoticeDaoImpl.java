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
	public List<Notice> selectNotices(){
		return noticeMap.selectNotices();
	}
	@Override
	public List<Notice> detailNotices(int noticeNum){
		return noticeMap.detailNotices(noticeNum);
	}
	
	@Override
	public void insertNotice(Notice notice) {
		noticeMap.insertNotice(notice);
	}
	@Override
	public void updateNotice(int noticeNum) {
		noticeMap.updateNotice(noticeNum);
	}
	@Override
	public void deleteNotice(int noticeNum) {
		noticeMap.deleteNotice(noticeNum);
	}
}
