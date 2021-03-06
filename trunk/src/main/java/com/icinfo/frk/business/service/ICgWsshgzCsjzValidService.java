package com.icinfo.frk.business.service;

import com.icinfo.framework.core.service.BaseService;
import com.icinfo.framework.mybatis.pagehelper.datatables.PageRequest;
import com.icinfo.framework.mybatis.pagehelper.datatables.PageResponse;
import com.icinfo.frk.business.dto.CgWsshgzCsjzValidDto;
import com.icinfo.frk.business.model.CgWsshgzCsjzValid;

/**
 * @author Guanzhou Song
 */
public interface ICgWsshgzCsjzValidService extends BaseService {

  /**
   * 获取
   *
   * @param frwybs 法人唯一标识
   */
  PageResponse<CgWsshgzCsjzValid> getList(PageRequest request)
      throws Exception;

  /**
   * 根据法人唯一标识查询
   *
   * @param frwybs 法人唯一标识
   * @throws Exception 异常
   */
  int getCountByFrwybs(String frwybs) throws Exception;

  /**
   * 慈善捐赠
   */
  PageResponse<CgWsshgzCsjzValidDto> getCsjzDetail(PageRequest request)
      throws Exception;
}
