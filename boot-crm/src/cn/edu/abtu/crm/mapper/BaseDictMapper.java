package cn.edu.abtu.crm.mapper;

import java.util.List;

import cn.edu.abtu.crm.pojo.BaseDict;

public interface BaseDictMapper {
	List<BaseDict> getBaseDictByCode(String code);
}
