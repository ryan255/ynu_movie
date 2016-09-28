package com.ynu;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.ynu.dto.Order;
import com.ynu.dto.OrderSeat;
import com.ynu.dto.Seat;
import com.ynu.service.OrderService;

@Controller
@Service
public class OrderController {
	
	@Autowired
	private OrderService orderService;
	
	@RequestMapping(value="/orderInsert",method = RequestMethod.POST)
	public String orderInsert(@RequestParam("seatList")String seatList,
			@RequestParam("counter")Integer counter,
			@RequestParam("total")Long total,
			@RequestParam("state")Integer state,
			@RequestParam("uid")Integer uid,
			@RequestParam("pid")Integer pid,
			@RequestParam("price")Long price,
			@RequestParam("aid")Integer aid){
		
		Order order = new Order();
		order.setIdPrice(pid);
		order.setIdUser(uid);
		order.setOrder_state(state);
		order.setOrder_total(total);
		order.setOrder_number(counter);
		order.setTrue_price(price);
		String[] seat3 = seatList.split(";");
		orderService.insertOrder(order);
		Order order2 = orderService.selectOrderLast();
		int idOrder2 = order2.getIdOrder();
		System.out.println("idOrder:"+order2.getIdOrder());
		for(int i=0;i<seat3.length;i++){
			Seat seat = new Seat();
			seat.setSeat_order(seat3[i]);
			System.out.println("seat_order:"+seat3[i]);
			seat.setFk_seat_idAuditorium(aid);
			int idSeat = orderService.selectSeatId(seat).getIdSeat();
			System.out.println("idSeat:"+idSeat);
			int idOrder = order2.getIdOrder();
			System.out.println("idOrder"+idOrder);
			OrderSeat orderSeat = new OrderSeat();
			orderSeat.setFk_orderSeat_idSeat(idSeat);
			orderSeat.setFk_orderSeat_idOrder(idOrder);
			orderService.insertOrderSeat(orderSeat);
		}
		System.out.println(seatList);
		System.out.println(counter);
		System.out.println(total);
		System.out.println(state);
		String url="updateUser?idUser="+uid+"&total="+total+"&state="+state+"&idOrder2="+idOrder2;
		System.out.println(url);
		return "redirect:"+url;
	}
	
	@RequestMapping(value="/perrorupdateOrderState")
	public String updateOrderState(@RequestParam("idOrder")Integer idOrder,Model model,HttpSession session){
		orderService.updateOrderState(idOrder);
		int uid = (Integer) session.getAttribute("userid");
		System.out.println(uid);
		model.addAttribute("payError", "支付失败，余额不足");
		return "redirect:selectUserInforOrder?idUser="+uid;
	}
}
