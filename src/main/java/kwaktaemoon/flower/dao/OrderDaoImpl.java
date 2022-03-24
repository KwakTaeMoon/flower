package kwaktaemoon.flower.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kwaktaemoon.flower.dao.map.OrderMap;
import kwaktaemoon.flower.domain.Order;

@Repository
public class OrderDaoImpl implements OrderDao {
	@Autowired private OrderMap orderMap;
	
	@Override
	public List<Order> selectOrders(String userId) {
		return orderMap.selectOrders(userId);
	}
	
	@Override
	public List<Order> detailOrders(int orderNum) {
		return orderMap.detailOrders(orderNum);
	}
	
	@Override
	public List<Order> selectAdminOrders() {
		return orderMap.selectAdminOrders();
	}
	
	@Override
	public void insertOrder(Order order) {
		orderMap.insertOrder(order);
	}
	
	@Override
	public void updateDeliState(int orderNum) {
		orderMap.updateDeliState(orderNum);
	}
	
	
	@Override
	public void updateAdmDeliState(int orderNum) {
		orderMap.updateAdmDeliState(orderNum);
	}
	
	@Override
	public void deleteOrder(int orderNum) {
		orderMap.deleteOrder(orderNum);
	}
}
