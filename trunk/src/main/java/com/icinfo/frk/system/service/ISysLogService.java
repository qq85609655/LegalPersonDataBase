/*
 * Copyright© 2003-2016 浙江汇信科技有限公司, All Rights Reserved. 
 */
package com.icinfo.frk.system.service;

import java.util.List;

import com.icinfo.framework.core.service.BaseService;
import com.icinfo.framework.mybatis.pagehelper.datatables.PageRequest;
import com.icinfo.frk.system.model.SysLog;

/**
 * 描述: 系统操作日志sys_log  对应的Service接口.<br>
 *
 * @author framework generator
 * @date 2017年07月22日
 */
public interface ISysLogService extends BaseService {
	
	/**
	 * 查询信息列表
	 * 
	 * @author zhuyong
	 * @param request
	 * @return
	 * @throws Exception
	 */
	public List<SysLog> queryByPage(PageRequest request) throws Exception;
	
	/**
	 * 保存日志信息
	 * 
	 * @author zhuyong
	 * @param logLoc
	 * @param logType
	 * @return
	 * @throws Exception
	 */
	public int save(String logType) throws Exception;
	/**
	 * 保存日志信息
	 * 
	 * @author zhuyong
	 * @param logLoc
	 * @param logType
	 * @param logRemark
	 * @return
	 * @throws Exception
	 */
	public int save(String logType,String logRemark) throws Exception;
	
	/**
	 * 保存接口日志
	 * @param logType
	 * @param logRemark
	 * @return
	 * @throws Exception
	 */
	public int saveImpl(String logType,String logRemark)throws Exception;
}