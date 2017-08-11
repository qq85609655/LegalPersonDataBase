/*
 * Copyright© 2003-2016 浙江汇信科技有限公司, All Rights Reserved. 
 */
package com.icinfo.frk.business.service;

import com.icinfo.framework.core.service.BaseService;
import com.icinfo.frk.business.dto.CdZbGqxxValidDto;

import java.util.List;

/**
 * 描述: 资本-股权情况 cd_zb_gqxx_valid 对应的Service接口.<br>
 *
 * @author framework generator
 * @date 2017年07月06日
 */
public interface ICdZbGqxxValidService extends BaseService {

    /**
     * 获取股权信息列表
     *
     * @param frwybs 法人唯一标识
     * @return 股权信息列表
     * @throws Exception
     */
    List<CdZbGqxxValidDto> getListChange(String frwybs)throws Exception;
    List<CdZbGqxxValidDto> getListSold(String frwybs)throws Exception;
    List<CdZbGqxxValidDto> getListFrozen(String frwybs)throws Exception;
}