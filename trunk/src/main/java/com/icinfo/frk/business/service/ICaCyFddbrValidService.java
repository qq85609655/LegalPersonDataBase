/*
 * Copyright© 2003-2016 浙江汇信科技有限公司, All Rights Reserved. 
 */
package com.icinfo.frk.business.service;

import com.icinfo.framework.core.service.BaseService;
import com.icinfo.framework.mybatis.pagehelper.datatables.PageRequest;
import com.icinfo.framework.mybatis.pagehelper.datatables.PageResponse;
import com.icinfo.frk.business.model.CaCyFddbrValid;

import java.io.UnsupportedEncodingException;
import java.util.List;
import java.util.Map;

/**
 * 描述:  ca_cy_fddbr_valid 对应的Service接口.<br>
 *
 * @author framework generator
 * @date 2017年06月30日
 */
public interface ICaCyFddbrValidService extends BaseService {
    /**
     * 获取法定代表人信息
     * @param map 参数map
     * @return 法定代表人信息列表
     */

	List<CaCyFddbrValid> getList(PageRequest request) throws Exception;

	List<CaCyFddbrValid> getList(Map<String, Object> map) throws Exception;
	
	/**
	 * 获取法定代表人-高管信息
	 * @param request
	 * @return
	 * @throws Exception
	 */
	PageResponse<CaCyFddbrValid> getCaCyFddbr(PageRequest request) throws Exception;


	PageResponse<CaCyFddbrValid> getFddbrList(PageRequest request) throws Exception; 

}