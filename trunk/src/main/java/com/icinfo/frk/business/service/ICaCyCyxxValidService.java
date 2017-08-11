/*
 * Copyright© 2003-2016 浙江汇信科技有限公司, All Rights Reserved. 
 */
package com.icinfo.frk.business.service;

import com.icinfo.framework.core.service.BaseService;
import com.icinfo.framework.mybatis.pagehelper.datatables.PageRequest;
import com.icinfo.framework.mybatis.pagehelper.datatables.PageResponse;
import com.icinfo.frk.business.model.CaCyCyxxValid;

import java.util.List;
import java.util.Map;

/**
 * 描述:  ca_cy_cyxx_valid 对应的Service接口.<br>
 *
 * @author framework generator
 * @date 2017年07月04日
 */
public interface ICaCyCyxxValidService extends BaseService {
    /**
     * 获取成员信息
     *
     * @param map 参数map
     * @return 成员信息列表
     */
    List<CaCyCyxxValid> getList(Map<String, Object> map);

    /**
     * 获取成员信息列表
     *
     * @param request 请求
     * @return
     * @throws Exception
     */
    List<CaCyCyxxValid> getList(PageRequest request) throws Exception;
    
    
    PageResponse<CaCyCyxxValid> getCaCyCyxx(PageRequest request) throws Exception;
    
    
    PageResponse<CaCyCyxxValid> getCydwxxList(PageRequest request) throws Exception;
    
    
}