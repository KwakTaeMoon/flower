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
	public void insertAdminNotice(Notice notice) {
		noticeMap.insertAdminNotice(notice);
	}
	@Override
	public void updateAdminNotice(int noticeNum) {
		noticeMap.updateAdminNotice(noticeNum);
	}
	@Override
	public void deleteAdminNotice(int noticeNum) {
		noticeMap.deleteAdminNotice(noticeNum);
	}
}
