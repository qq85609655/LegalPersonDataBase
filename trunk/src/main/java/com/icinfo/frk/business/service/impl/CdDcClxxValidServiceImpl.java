/*
 * Copyright© 2003-2016 浙江汇信科技有限公司, All Rights Reserved. 
 */
package com.icinfo.frk.business.service.impl;

import com.icinfo.framework.core.service.support.MyBatisServiceSupport;
import com.icinfo.frk.business.mapper.CdDcClxxValidMapper;
import com.icinfo.frk.business.model.CdDcClxxValid;
import com.icinfo.frk.business.service.ICdDcClxxValidService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * 描述:  cd_dc_clxx_valid 对应的Service接口实现类.<br>
 *
 * @author framework generator
 * @date 2017年07月06日
 */
@Service
public class CdDcClxxValidServiceImpl extends MyBatisServiceSupport implements ICdDcClxxValidService {
    /**
     * 日志记录器
     */
    private static final Logger logger = LoggerFactory.getLogger(CdDcClxxValidServiceImpl.class);

    //车辆信息mapper注入
    @Autowired
    private CdDcClxxValidMapper cdDcClxxValidMapper;

    /**
     * 根据法人唯一标识查询车辆数量
     *
     * @param frwybs 法人唯一标识
     * @return 车辆数量
     * @throws Exception 异常
     */
    @Override
    public int getCountByFrwybs(String frwybs) throws Exception {
        CdDcClxxValid q = new CdDcClxxValid();
        q.setFrwybs(frwybs);
        return cdDcClxxValidMapper.selectCount(q);
    }
}