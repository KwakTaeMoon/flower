package kwaktaemoon.flower.service;

import java.util.List;

import kwaktaemoon.flower.domain.Order;

public interface OrderService {
	List<Order> getOrders(String userId);
	List<Order> getdetailOrders(int orderNum);
	List<Order> getAdminOrders();
	List<Order> getAdminReadyOrders();
	List<Order> getAdminCancelOrders();
	void addOrder(Order order);
	void fixDeliState(int orderNum);
	void fixAdmDeliState(int orderNum);
	void delOrder(int orderNum);
}
