package com.icinfo.frk.business.service;
import com.icinfo.framework.core.service.BaseService;
import com.icinfo.framework.mybatis.pagehelper.datatables.PageRequest;
import com.icinfo.framework.mybatis.pagehelper.datatables.PageResponse;
import com.icinfo.frk.business.dto.ChNjnbLdbzsmscValidDto;
import com.icinfo.frk.business.model.ChNjnbLdbzsmscValid;
import java.util.List;


/**
 * 
 * @author Guanzhou Song
 */
 public interface IChNjnbLdbzsmscValidService extends BaseService {

     /**
      * 获取
      *
      * @param frwybs 法人唯一标识
      * @return
      * @throws Exception
      */
     List<ChNjnbLdbzsmscValid> getList(String frwybs) throws Exception;
     /**
      * 根据法人唯一标识查询
      *
      * @param frwybs 法人唯一标识
      * @return
      * @throws Exception 异常
      */
     int getCountByFrwybs(String frwybs) throws Exception;
	PageResponse<ChNjnbLdbzsmscValidDto> findNdsmscMsg(PageRequest request);
	PageResponse<ChNjnbLdbzsmscValid> getNdsmscDetail(PageRequest request);
 }
