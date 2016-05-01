package com.justzqh.controller;

import java.util.List;


import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.justzqh.po.ItemsCustom;
import com.justzqh.service.imp.ItemService;
import com.justzqh.util.Page;

/**
 * 
* @Title: HomeEnterController.java
* @author: zqh
* @date 2016-4-26 下午2:45:25
* @Description:
 */
@Controller
public class HomeController {
	
	
	@Autowired
	private ItemService itemService;
	
	/**
	 * 
	* @Title: HomeEnter
	* @author: zqh
	* @date 2016-4-22 涓嬪崍08:40:25
	* @Description:home浠庢澶勮繘鍏�
	* @return
	*http://iammr.7.blog.163.com/blog/static/49102699201222643458216/
	 */
	@RequestMapping("/")
	public String Home(Model model, HttpServletRequest request) {

		//获取当前页数
		String pageNow = request.getParameter("pageNow");
		//分页工具类
		Page page = null;	
		//本页商品信息
		List<ItemsCustom> items = null;
		//获得总页数
		int itemsCount = (int) itemService.getAllItemsCount();
		
		//得到一页的列表信息
		if(pageNow != null){
			
			page = new Page(itemsCount, Integer.parseInt(pageNow));
			
			int pagePos = page.getStartPos();
			page.setStartPos(pagePos);
			
			items = itemService.getItems(page);
			
		}
		else {
			
			page = new Page(itemsCount , 1);
			items = itemService.getItems(page);
			
		}
		
		//向页面添加模型
		model.addAttribute("items", items);
		model.addAttribute("page" , page);
		//返回页面
		return "/index";
	}
	
}





