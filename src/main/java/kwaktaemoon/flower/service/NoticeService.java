package kwaktaemoon.flower.service;

import java.util.List;

import kwaktaemoon.flower.domain.Notice;

public interface NoticeService {

	List<Notice> getNotices();
	List<Notice> getdetailNotices(int noticeNum);
	void addAdminNotice(Notice notice);
	void fixAdminNotice(int noticeNum);
	void delAdminNotice(int noticeNum);
}
