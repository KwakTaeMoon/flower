package kwaktaemoon.flower.service;

import java.util.List;

import kwaktaemoon.flower.domain.Notice;

public interface NoticeService {
	List<Notice> getNotices();
	Notice getNotice(int noticeNum);
	int addNotice(Notice notice);
	int fixNotice(Notice notice);
	int delNotice(int noticeNum);
}
