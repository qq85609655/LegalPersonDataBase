/*
 * Copyright© 2003-2016 浙江汇信科技有限公司, All Rights Reserved. 
 */
package com.icinfo.frk.business.service.impl;

import com.icinfo.framework.core.service.support.MyBatisServiceSupport;
import com.icinfo.frk.business.mapper.CaCxBgxxValidMapper;
import com.icinfo.frk.business.model.CaCxBgxxValid;
import com.icinfo.frk.business.service.ICaCxBgxxValidService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 描述:  ca_cx_bgxx_valid 对应的Service接口实现类.<br>
 *
 * @author framework generator
 * @date 2017年07月05日
 */
@Service
public class CaCxBgxxValidServiceImpl extends MyBatisServiceSupport implements ICaCxBgxxValidService {
    /**
     * 日志记录器
     */
    private static final Logger logger = LoggerFactory.getLogger(CaCxBgxxValidServiceImpl.class);

    @Autowired
    private CaCxBgxxValidMapper caCxBgxxValidMapper;


    /**
     * 获取变更信息列表
     *
     * @param frwybs 法人唯一标识
     * @return
     * @throws Exception
     */
    @Override
    public List<CaCxBgxxValid> getList(String frwybs) throws Exception {
        CaCxBgxxValid caCxBgxxValid = new CaCxBgxxValid();
        caCxBgxxValid.setFrwybs(frwybs);
        return caCxBgxxValidMapper.select(caCxBgxxValid);
    }
}