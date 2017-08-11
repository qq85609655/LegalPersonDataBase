/*
 * Copyright© 2003-2016 浙江汇信科技有限公司, All Rights Reserved.
 */
package com.icinfo.frk.business.service.impl;
import com.icinfo.framework.core.service.support.MyBatisServiceSupport;
import com.icinfo.framework.mybatis.pagehelper.PageHelper;
import com.icinfo.framework.mybatis.pagehelper.datatables.PageRequest;
import com.icinfo.framework.mybatis.pagehelper.datatables.PageResponse;
import com.icinfo.frk.business.mapper.CgQtSsxxValidMapper;
import com.icinfo.frk.business.model.CgQtSsxxValid;
import com.icinfo.frk.business.service.ICgQtSsxxValidService;
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
public class CgQtSsxxValidServiceImpl extends MyBatisServiceSupport implements ICgQtSsxxValidService {
    /**
     * 日志记录器
     */
    private static final Logger logger = LoggerFactory.getLogger(CfSsSwdjxxValidServiceImpl.class);

    @Autowired
    private CgQtSsxxValidMapper CgQtSsxxValidMapperimpl;

    /**
     * 获取
     *
     * @param frwybs 法人唯一标识
     * @return
     * @throws Exception
     */
    @Override
    public PageResponse<CgQtSsxxValid> getList(PageRequest request)
			throws Exception {
		PageHelper.startPage(request.getPageNum(), request.getLength());
		Map<String, Object> params = request.getParams();
		List<CgQtSsxxValid> ssxxDetail = CgQtSsxxValidMapperimpl.getList(params);
		return new PageResponse<CgQtSsxxValid>(ssxxDetail);
	}

	@Override
	public int getCountByFrwybs(String frwybs) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	 /**
     * 上市信息
     * @param request
     * @return
     * @throws Exception
     */
	@Override
	public PageResponse<CgQtSsxxValid> getSsxxDetail(PageRequest request)
			throws Exception {
		PageHelper.startPage(request.getPageNum(), request.getLength());
		Map<String, Object> params = request.getParams();
		List<CgQtSsxxValid> ssxxDetail = CgQtSsxxValidMapperimpl.selectSsxxDetail(params);
		for(CgQtSsxxValid ssxx : ssxxDetail){
			String corpid = ssxx.getFrwybs();
			if(null != corpid && !"".equals(corpid)){
				String frwybs = AESEUtil.encodeCorpid(corpid);
				ssxx.setFrwybs(frwybs);
			}
		}
		return new PageResponse<CgQtSsxxValid>(ssxxDetail);
	}

}
