package com.icinfo.frk.business.service;
import com.icinfo.framework.core.service.BaseService;
import com.icinfo.framework.mybatis.pagehelper.datatables.PageRequest;
import com.icinfo.framework.mybatis.pagehelper.datatables.PageResponse;
import com.icinfo.frk.business.model.ChSfajAjdsrxxValid;
import java.util.List;


/**
 * 
 * @author Guanzhou Song
 */
 public interface IChSfajAjdsrxxValidService extends BaseService {

     /**
      * 获取
      *
      * @param frwybs 法人唯一标识
      * @return
      * @throws Exception
      */
     List<ChSfajAjdsrxxValid> getList(String frwybs) throws Exception;
     /**
      * 根据法人唯一标识查询
      *
      * @param frwybs 法人唯一标识
      * @return
      * @throws Exception 异常
      */
     int getCountByFrwybs(String frwybs) throws Exception;
     
     /**
      * 案件当事人信息查询
      * @param request
      * @return
      * @throws Exception
      */
     PageResponse<ChSfajAjdsrxxValid> getChSfajAjdsrxx(PageRequest request) throws Exception;
     
     
     
    PageResponse<ChSfajAjdsrxxValid> getAjdsrList(PageRequest request) throws Exception;
     
     
     
 }
