package com.justzqh.service.imp;

import java.util.List;

import com.justzqh.po.ItemsCustom;
import com.justzqh.util.Page;

/**
 * 
* @Title: ItemService.java
* @author: zqh
* @date 2016-5-1 ����3:44:15
* @Description:��Ʒ����service�ӿ�
 */
public interface ItemService {

	//��ѯ������Ϣ����
	public long getAllItemsCount();
	
	//
	public List<ItemsCustom> getItems(Page page);
}
