/*
 * Copyright© 2003-2016 浙江汇信科技有限公司, All Rights Reserved. 
 */
package com.icinfo.frk.business.service;

import com.icinfo.framework.core.service.BaseService;
import com.icinfo.framework.mybatis.pagehelper.PageInfo;
import com.icinfo.framework.mybatis.pagehelper.datatables.PageRequest;
import com.icinfo.frk.business.model.DtBmsjtj;

import java.util.List;
import java.util.Map;

/**
 * 描述:  dt_bm_sjtj 对应的Service接口.<br>
 *
 * @author framework generator
 * @date 2017年07月12日
 */
public interface IDtBmsjtjService extends BaseService {
    /**
    * 描述：
    * @author gqf
    * @param  
    * @return 
     *@date 2017/7/13 
    */
    public List<DtBmsjtj> doGetPageDtBmsjtj(PageRequest reques) throws Exception;
     /**
     * 描述：
     * @author gqf
     * @param
     * @return
      *@date 2017/7/13
     */
    public PageInfo<DtBmsjtj> doGetDefinedPage(Map<String, Object> map, int pageNum, int pageSize) throws Exception;
}