package com.icinfo.frk.business.service;

import com.icinfo.framework.core.service.BaseService;
import com.icinfo.framework.mybatis.pagehelper.datatables.PageRequest;
import com.icinfo.framework.mybatis.pagehelper.datatables.PageResponse;
import com.icinfo.frk.business.dto.CgGcZdcyxmValidDto;
import com.icinfo.frk.business.model.CgGcZdcyxmValid;

/**
 * @author Guanzhou Song
 */
public interface ICgGcZdcyxmValidService extends BaseService {

  /**
   * 获取
   *
   * @param frwybs 法人唯一标识
   */
  PageResponse<CgGcZdcyxmValid> getList(PageRequest request) throws Exception;

  /**
   * 根据法人唯一标识查询
   *
   * @param frwybs 法人唯一标识
   * @throws Exception 异常
   */
  int getCountByFrwybs(String frwybs) throws Exception;

  /**
   * 重大产业项目信息
   */
  PageResponse<CgGcZdcyxmValidDto> getZdcyDetail(PageRequest request)
      throws Exception;
}
