/*
 * Copyright© 2003-2016 浙江汇信科技有限公司, All Rights Reserved.
 */
package com.icinfo.frk.business.service.impl;
import com.icinfo.framework.core.service.support.MyBatisServiceSupport;
import com.icinfo.framework.mybatis.pagehelper.PageHelper;
import com.icinfo.framework.mybatis.pagehelper.datatables.PageRequest;
import com.icinfo.framework.mybatis.pagehelper.datatables.PageResponse;
import com.icinfo.frk.business.mapper.ChSfajAjdsrxxValidMapper;
import com.icinfo.frk.business.model.CaCyFddbrValid;
import com.icinfo.frk.business.model.ChSfajAjdsrxxValid;
import com.icinfo.frk.business.service.IChSfajAjdsrxxValidService;
import com.icinfo.frk.common.utils.AESEUtil;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

/**
 * @author framework generator
 * @date 2017年07月06日
 */
@Service
public class ChSfajAjdsrxxValidServiceImpl extends MyBatisServiceSupport implements IChSfajAjdsrxxValidService {
    /**
     * 日志记录器
     */
    private static final Logger logger = LoggerFactory.getLogger(CfSsSwdjxxValidServiceImpl.class);

    @Autowired
    private ChSfajAjdsrxxValidMapper ChSfajAjdsrxxValidMapperimpl;

    /**
     * 获取
     *
     * @param frwybs 法人唯一标识
     * @return
     * @throws Exception
     */
    @Override
    public List<ChSfajAjdsrxxValid> getList(String frwybs) throws Exception {
    	ChSfajAjdsrxxValid ChSfajAjdsrxxValidimpl = new ChSfajAjdsrxxValid();
    	ChSfajAjdsrxxValidimpl.setFrwybs(frwybs);
        return ChSfajAjdsrxxValidMapperimpl.select(ChSfajAjdsrxxValidimpl);
    }

	@Override
	public int getCountByFrwybs(String frwybs) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	
	
	@Override
    public PageResponse<ChSfajAjdsrxxValid> getChSfajAjdsrxx(PageRequest request) throws Exception {
		PageHelper.startPage(request.getPageNum(), request.getLength());
		List<ChSfajAjdsrxxValid> list = ChSfajAjdsrxxValidMapperimpl.getChSfajAjdsrxx(request.getParams());
		
		if(list!=null && list.size()>0){
			for(ChSfajAjdsrxxValid chsfajajdsr: list){
				
				String frwybs=chsfajajdsr.getFrwybs();	
				 if(!(frwybs==null||frwybs.trim().equals(""))) {  	
				String frwybss = AESEUtil.encodeCorpid(frwybs);
				chsfajajdsr.setFrwybs(frwybss);
				 }
			}
		}
		return new PageResponse<ChSfajAjdsrxxValid>(list);
    }
	
	
	
	
	
	@Override
	public PageResponse<ChSfajAjdsrxxValid> getAjdsrList(PageRequest request)
			throws Exception {
		PageHelper.startPage(request.getPageNum(), request.getLength());
		Map<String, Object> params = request.getParams();
		List<ChSfajAjdsrxxValid> list = ChSfajAjdsrxxValidMapperimpl.getAjdsrList(params);
		return new PageResponse<ChSfajAjdsrxxValid>(list);
	}
}
