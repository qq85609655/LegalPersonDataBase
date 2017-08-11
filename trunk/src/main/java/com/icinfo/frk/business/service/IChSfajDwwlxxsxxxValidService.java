package com.icinfo.frk.business.service;
import com.icinfo.framework.core.service.BaseService;
import com.icinfo.framework.mybatis.pagehelper.datatables.PageRequest;
import com.icinfo.framework.mybatis.pagehelper.datatables.PageResponse;
import com.icinfo.frk.business.model.ChSfajDwwlxxsxxxValid;
import java.util.List;


/**
 * 
 * @author Guanzhou Song
 */
 public interface IChSfajDwwlxxsxxxValidService extends BaseService {

     /**
      * 获取
      *
      * @param frwybs 法人唯一标识
      * @return
      * @throws Exception
      */
     List<ChSfajDwwlxxsxxxValid> getList(String frwybs) throws Exception;
     /**
      * 根据法人唯一标识查询
      *
      * @param frwybs 法人唯一标识
      * @return
      * @throws Exception 异常
      */
     int getCountByFrwybs(String frwybs) throws Exception;
     
     /**
      * 获取单位未履行生效裁判信息
      * @param request
      * @return
      * @throws Exception
      */
     PageResponse<ChSfajDwwlxxsxxxValid> getChSfajDwwlxxsxxx(PageRequest request) throws Exception;

     
     
     
     
     
     PageResponse<ChSfajDwwlxxsxxxValid> getWlxList(PageRequest request) throws Exception;
 }
