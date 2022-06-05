package cn.edu.abtu.crm.service;

import java.util.List;

import cn.edu.abtu.crm.pojo.BaseDict;

public interface BaseDictService {
	List<BaseDict> getBaseDictByCode(String code);
}
