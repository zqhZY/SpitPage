package com.justzqh.mapper;

import java.util.List;

import com.justzqh.po.ItemsCustom;
import com.justzqh.util.Page;

/**
 * 
* @Title: ItemsMapperCustom.java
* @author: zqh
* @date 2016-5-1 ����3:31:52
* @Description:��Ʒ��Ϣ��չ��
 */
public interface ItemsMapperCustom {
	
	//�õ�ȫ����¼����
	public long getAllItemsCount();
	
	//��ȡ��ǰҳ��Ʒ��Ϣ
	public List<ItemsCustom> getItems(Page page);
	
	

}
