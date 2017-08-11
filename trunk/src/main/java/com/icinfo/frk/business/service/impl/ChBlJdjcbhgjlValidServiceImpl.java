/*
 * Copyright© 2003-2016 浙江汇信科技有限公司, All Rights Reserved.
 */
package com.icinfo.frk.business.service.impl;
import com.icinfo.framework.core.service.support.MyBatisServiceSupport;
import com.icinfo.framework.mybatis.pagehelper.PageHelper;
import com.icinfo.framework.mybatis.pagehelper.datatables.PageRequest;
import com.icinfo.framework.mybatis.pagehelper.datatables.PageResponse;
import com.icinfo.frk.business.dto.ChBlJdjcbhgjlValidDto;
import com.icinfo.frk.business.dto.ChBlXzcfxxValidDto;
import com.icinfo.frk.business.mapper.ChBlJdjcbhgjlValidMapper;
import com.icinfo.frk.business.model.ChBlJdjcbhgjlValid;
import com.icinfo.frk.business.model.ChCcjcJdccValid;
import com.icinfo.frk.business.model.ChXzqzValid;
import com.icinfo.frk.business.service.IChBlJdjcbhgjlValidService;
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
public class ChBlJdjcbhgjlValidServiceImpl extends MyBatisServiceSupport implements IChBlJdjcbhgjlValidService {
    /**
     * 日志记录器
     */
    private static final Logger logger = LoggerFactory.getLogger(CfSsSwdjxxValidServiceImpl.class);

    @Autowired
    private ChBlJdjcbhgjlValidMapper ChBlJdjcbhgjlValidMapperimpl;

    /**
     * 获取
     *
     * @param frwybs 法人唯一标识
     * @return
     * @throws Exception
     */
    @Override
    public List<ChBlJdjcbhgjlValid> getList(String frwybs) throws Exception {
    	ChBlJdjcbhgjlValid ChBlJdjcbhgjlValidimpl = new ChBlJdjcbhgjlValid();
    	ChBlJdjcbhgjlValidimpl.setFrwybs(frwybs);
        return ChBlJdjcbhgjlValidMapperimpl.select(ChBlJdjcbhgjlValidimpl);
    }

	@Override
	public int getCountByFrwybs(String frwybs) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public PageResponse<ChBlJdjcbhgjlValidDto> findBadRecordMsg(PageRequest request) {
		PageHelper.startPage(request.getPageNum(), request.getLength());
		List<ChBlJdjcbhgjlValidDto> list = ChBlJdjcbhgjlValidMapperimpl.findBadRecordMsg(request.getParams());
		if(null!=list&&list.size()>0) {
			for(ChBlJdjcbhgjlValid chBlJdjcbhgjlValid:list) {
				String originFrwybs=chBlJdjcbhgjlValid.getFrwybs();
				if(!(originFrwybs==null||originFrwybs.trim().equals(""))) {
					String frwybs=AESEUtil.encodeCorpid(originFrwybs);
					chBlJdjcbhgjlValid.setFrwybs(frwybs);
				}
				
				
			}
		}
		return new PageResponse<ChBlJdjcbhgjlValidDto>(list);
	}

	@Override
	public PageResponse<ChBlJdjcbhgjlValid> getBadRecordDetail(PageRequest request) {
		PageHelper.startPage(request.getPageNum(), request.getLength());
		List<ChBlJdjcbhgjlValid> list = ChBlJdjcbhgjlValidMapperimpl.getList(request.getParams());
		return new PageResponse<ChBlJdjcbhgjlValid>(list);
	}

}
