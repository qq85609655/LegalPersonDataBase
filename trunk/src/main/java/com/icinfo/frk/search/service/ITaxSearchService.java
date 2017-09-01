/*
 * Copyright© 2003-2016 浙江汇信科技有限公司, All Rights Reserved. 
 */
package com.icinfo.frk.search.service;

import com.icinfo.framework.core.service.BaseService;
import com.icinfo.framework.mybatis.pagehelper.datatables.PageRequest;
import com.icinfo.framework.mybatis.pagehelper.datatables.PageResponse;
import com.icinfo.frk.business.dto.InsuranceCountDto;
import com.icinfo.frk.business.model.CfGgzfWxdValid;
import com.icinfo.frk.business.model.CfGgzfZyxxValid;
import com.icinfo.frk.business.model.CfSbCdhbxxValid;
import com.icinfo.frk.business.model.CfSsNsjlDsValid;
import com.icinfo.frk.business.model.CfSsNsjlGsValid;
import com.icinfo.frk.business.model.CfSsSwdjxxValid;
import com.icinfo.frk.business.model.InsuranceCount;

/**
 * 描述:    dt_frfl_tj 对应的Service接口.<br>
 *
 * @author framework generator
 * @date 2017年05月10日
 */
public interface ITaxSearchService extends BaseService {

  PageResponse<CfSsNsjlGsValid> getDetail0(PageRequest request) throws Exception;

  PageResponse<CfSsNsjlDsValid> getDetail1(PageRequest request) throws Exception;

  PageResponse<CfSsSwdjxxValid> getDetail2(PageRequest request) throws Exception;

  PageResponse<CfSbCdhbxxValid> getDetail3(PageRequest request) throws Exception;

  PageResponse<CfGgzfZyxxValid> getDetail4(PageRequest request) throws Exception;

  PageResponse<CfGgzfWxdValid> getDetail5(PageRequest request) throws Exception;

  PageResponse<InsuranceCountDto> getDetail6(PageRequest request) throws Exception;
}