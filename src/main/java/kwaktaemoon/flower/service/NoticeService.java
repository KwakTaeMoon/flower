package kwaktaemoon.flower.service;

import java.util.List;

import kwaktaemoon.flower.domain.Notice;

public interface NoticeService {

	List<Notice> getNotices();
	List<Notice> getdetailNotices(int noticeNum);
	void addNotice(Notice notice);
	void fixNotice(int noticeNum);
	void delNotice(int noticeNum);
}
