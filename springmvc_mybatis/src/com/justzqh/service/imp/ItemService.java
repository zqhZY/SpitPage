package com.justzqh.service.imp;

import java.util.List;

import com.justzqh.po.ItemsCustom;
import com.justzqh.util.Page;

/**
 * 
* @Title: ItemService.java
* @author: zqh
* @date 2016-5-1 下午3:44:15
* @Description:商品处理service接口
 */
public interface ItemService {

	//查询所有信息数量
	public long getAllItemsCount();
	
	//
	public List<ItemsCustom> getItems(Page page);
}
