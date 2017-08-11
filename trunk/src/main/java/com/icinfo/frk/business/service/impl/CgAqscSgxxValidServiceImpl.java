/*
 * Copyright© 2003-2016 浙江汇信科技有限公司, All Rights Reserved.
 */
package com.icinfo.frk.business.service.impl;
import com.icinfo.framework.core.service.support.MyBatisServiceSupport;
import com.icinfo.framework.mybatis.pagehelper.PageHelper;
import com.icinfo.framework.mybatis.pagehelper.datatables.PageRequest;
import com.icinfo.framework.mybatis.pagehelper.datatables.PageResponse;
import com.icinfo.frk.business.dto.CgAqscSgxxValidDto;
import com.icinfo.frk.business.dto.ChNjnbWxdtnjValidDto;
import com.icinfo.frk.business.mapper.CgAqscSgxxValidMapper;
import com.icinfo.frk.business.model.CgAqscSgxxValid;
import com.icinfo.frk.business.model.ChBlJdjcbhgjlValid;
import com.icinfo.frk.business.service.ICgAqscSgxxValidService;
import com.icinfo.frk.common.utils.AESEUtil;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author framework generator
 * @date 2017年07月06日
 */
@Service
public class CgAqscSgxxValidServiceImpl extends MyBatisServiceSupport implements ICgAqscSgxxValidService {
    /**
     * 日志记录器
     */
    private static final Logger logger = LoggerFactory.getLogger(CfSsSwdjxxValidServiceImpl.class);

    @Autowired
    private CgAqscSgxxValidMapper CgAqscSgxxValidMapperimpl;

    /**
     * 获取
     *
     * @param frwybs 法人唯一标识
     * @return
     * @throws Exception
     */
    @Override
    public List<CgAqscSgxxValid> getList(String frwybs) throws Exception {
    	CgAqscSgxxValid CgAqscSgxxValidimpl = new CgAqscSgxxValid();
    	CgAqscSgxxValidimpl.setFrwybs(frwybs);
        return CgAqscSgxxValidMapperimpl.select(CgAqscSgxxValidimpl);
    }

	@Override
	public int getCountByFrwybs(String frwybs) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public PageResponse<CgAqscSgxxValidDto> findSgxxMsg(PageRequest request) {
		PageHelper.startPage(request.getPageNum(), request.getLength());
		List<CgAqscSgxxValidDto> list = CgAqscSgxxValidMapperimpl.findSgxxMsg(request.getParams());
		if(null!=list&&list.size()>0) {
			for(CgAqscSgxxValid cgAqscSgxxValid:list) {
				String originFrwybs=cgAqscSgxxValid.getFrwybs();
				if(!(originFrwybs==null||originFrwybs.trim().equals(""))) {
					String frwybs=AESEUtil.encodeCorpid(originFrwybs);
					cgAqscSgxxValid.setFrwybs(frwybs);
				}
			}
		}
		return new PageResponse<CgAqscSgxxValidDto>(list);
	}

	@Override
	public PageResponse<CgAqscSgxxValid> getSgxxDetail(PageRequest request) {
		PageHelper.startPage(request.getPageNum(), request.getLength());
		List<CgAqscSgxxValid> list = CgAqscSgxxValidMapperimpl.getList(request.getParams());
		return new PageResponse<CgAqscSgxxValid>(list);
	}

}
