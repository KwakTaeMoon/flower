package kwaktaemoon.flower.service;

import java.util.List;

import kwaktaemoon.flower.domain.Order;

public interface OrderService {
	List<Order> getOrders(String userId);
	List<Order> getdetailOrders(int orderNum);
	List<Order> getAdminOrders();	
	void addOrder(Order order);
	void fixDeliState(int orderNum);
	void fixAdmDeliState(int orderNum);
	void delOrder(int orderNum);
}
