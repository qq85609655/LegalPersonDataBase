/*
 * Copyright© 2003-2016 浙江汇信科技有限公司, All Rights Reserved. 
 */
package com.icinfo.frk.business.service;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.icinfo.framework.core.service.BaseService;
import com.icinfo.frk.business.dto.DtYwclNodesDto;
import com.icinfo.frk.business.model.Jbxx;
import java.util.List;

/**
 * 描述:    dt_ywcl_nodes 对应的Service接口.<br>
 *
 * @author framework generator
 * @date 2017年05月09日
 */
public interface IDtYwclNodesService extends BaseService {

  /**
   * 获取节点列表
   *
   * @auther ylr
   * @date 2017年5月9日
   */
  List<DtYwclNodesDto> doGetDtYwclNodesDtoList(String type) throws Exception;

  /**
   * 获取节点列表
   *
   * @auther ylr
   * @date 2017年5月9日
   */
  List<DtYwclNodesDto> doGetAllNodesList(String type) throws Exception;

  /**
   * 获取饼图json
   *
   * @auther ylr
   * @date 2017年5月9日
   */
  DtYwclNodesDto doGetPieChart(String id) throws Exception;

  /**
   * 获取nodejsonarray
   *
   * @auther ylr
   * @date 2017年5月9日
   */
  JSONArray doGetAllNodesJsonArray(String type) throws Exception;

  /**
   * 获取nodejsonarray
   *
   * @auther ylr
   * @date 2017年5月9日
   */
  JSONArray doGetAllLinksJsonArray(String type) throws Exception;

  List<Jbxx> doGetJbxxList(String frmc) throws Exception;

  JSONObject doGetAllLinksAndNodesJsonObject(String type) throws Exception;

}