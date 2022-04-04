package kwaktaemoon.flower.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.lang.Nullable;
import org.springframework.stereotype.Service;

import kwaktaemoon.flower.dao.OrderDao;
import kwaktaemoon.flower.domain.Order;

@Service
public class OrderServiceImpl implements OrderService {
	@Autowired private OrderDao orderDao;
	
	@Override
	public List<Order> getOrders(String userId) {
		return orderDao.selectOrders(userId);
	}
	
	@Override
	public List<Order> getdetailOrders(int orderNum) {
		return orderDao.detailOrders(orderNum);
	}
	
	@Override
	public List<Order> getAdminOrders() {
		return orderDao.selectAdminOrders();
	}
	
	@Override
	public List<Order> getAdminReadyOrders() {
		return orderDao.selectAdminReadyOrders();
	}
	
	@Override
	public List<Order> getAdminCancelOrders() {
		return orderDao.selectAdminCancelOrders();
	}
	
	@Override
	public void addOrder(Order order) {
		orderDao.insertOrder(order);
	}
	
	@Override
	public void fixDeliState(int orderNum) {
		orderDao.updateDeliState(orderNum);
	}
	
	@Override
	public void fixAdmDeliState(int orderNum) {
		orderDao.updateAdmDeliState(orderNum);
	}
	
	@Override
	public void delOrder(int orderNum) {
		orderDao.deleteOrder(orderNum);
	}
}
