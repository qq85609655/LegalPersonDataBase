package com.icinfo.frk.business.service;

import com.icinfo.framework.core.service.BaseService;
import com.icinfo.framework.mybatis.pagehelper.datatables.PageRequest;
import com.icinfo.framework.mybatis.pagehelper.datatables.PageResponse;
import com.icinfo.frk.business.dto.CgGcJtjsxmValidDto;
import com.icinfo.frk.business.model.CgGcJtjsxmValid;

import java.util.List;

/**
 * 
 * @author Guanzhou Song
 */
public interface ICgGcJtjsxmValidService extends BaseService {

	/**
	 * 获取
	 *
	 * @param frwybs
	 *            法人唯一标识
	 * @return
	 * @throws Exception
	 */
	PageResponse<CgGcJtjsxmValid> getList(PageRequest request)
			throws Exception;

	/**
	 * 根据法人唯一标识查询
	 *
	 * @param frwybs
	 *            法人唯一标识
	 * @return
	 * @throws Exception
	 *             异常
	 */
	int getCountByFrwybs(String frwybs) throws Exception;

	/**
	 * 交通建设项目信息
	 * 
	 * @param request
	 * @return
	 * @throws Exception
	 */
	PageResponse<CgGcJtjsxmValidDto> getJtjsDetail(PageRequest request)
			throws Exception;
}
