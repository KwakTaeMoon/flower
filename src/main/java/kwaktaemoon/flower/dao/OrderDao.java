package kwaktaemoon.flower.dao;

import java.util.List;

import kwaktaemoon.flower.domain.Order;


public interface OrderDao {
	List<Order> selectOrders(String userId);
	List<Order> detailOrders(int orderNum);
	List<Order> selectAdminOrders();
	List<Order> selectAdminReadyOrders();
	List<Order> selectAdminCancelOrders();
	void insertOrder(Order order);
	void updateDeliState(int orderNum);
	void updateAdmDeliState(int orderNum);
	void deleteOrder(int orderNum);
}
