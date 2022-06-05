package cn.edu.abtu.crm.service.impl;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.edu.abtu.crm.mapper.BaseDictMapper;
import cn.edu.abtu.crm.pojo.BaseDict;
import cn.edu.abtu.crm.service.BaseDictService;
@Service
public class BaseDictServiceImpl implements BaseDictService{

	@Autowired
	private BaseDictMapper baseDictMapper;
	@Override
	public List<BaseDict> getBaseDictByCode(String code) {
		// TODO Auto-generated method stub
		return baseDictMapper.getBaseDictByCode(code);
	}
	
}
