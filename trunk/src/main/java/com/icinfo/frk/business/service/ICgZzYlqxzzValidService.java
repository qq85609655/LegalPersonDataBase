package com.icinfo.frk.business.service;
import com.icinfo.framework.core.service.BaseService;
import com.icinfo.framework.mybatis.pagehelper.datatables.PageRequest;
import com.icinfo.framework.mybatis.pagehelper.datatables.PageResponse;
import com.icinfo.frk.business.model.CgZzYlqxzzValid;

import java.util.List;


/**
 * 
 * @author Guanzhou Song
 */
 public interface ICgZzYlqxzzValidService extends BaseService {

     /**
      * 获取
      *
      * @param frwybs 法人唯一标识
      * @return
      * @throws Exception
      */
	 PageResponse<CgZzYlqxzzValid> getList(PageRequest request)
				throws Exception;
     /**
      * 根据法人唯一标识查询
      *
      * @param frwybs 法人唯一标识
      * @return
      * @throws Exception 异常
      */
     int getCountByFrwybs(String frwybs) throws Exception;
     
     /**
      * 获取医疗器械详情
      * @param request
      * @return
      * @throws Exception
      */
     PageResponse<CgZzYlqxzzValid> getYlqxDetail(PageRequest request) throws Exception;
 }
