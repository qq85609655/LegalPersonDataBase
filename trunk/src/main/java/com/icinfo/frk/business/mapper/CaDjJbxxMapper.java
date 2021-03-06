/**
 * Copyright© 2003-2016 浙江汇信科技有限公司, All Rights Reserved. <br/>
 * 描述: TODO <br/>
 *
 * @author framework generator
 * @date 2017年06月27日
 * @version 2.0
 */
package com.icinfo.frk.business.mapper;


import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.icinfo.framework.mybatis.mapper.common.Mapper;
import com.icinfo.frk.api.dto.FrCheckDto;
import com.icinfo.frk.business.dto.AssetDto;
import com.icinfo.frk.business.dto.CaDjJbxxDto;
import com.icinfo.frk.business.model.CaDjJbxx;
/**
 * 描述:  ca_dj_jbxx 对应的Mapper接口.<br>
 *
 * @author framework generator
 * @date 2017年06月27日
 */
public interface CaDjJbxxMapper extends Mapper<CaDjJbxx> {

  /**
   * 获取法人登记基本信息。
   */
  List<CaDjJbxx> selectList(Map<String, Object> params);

  /**
   * 根据关键词获取法人登记基本信息（首页全部搜索）。
   */
  List<CaDjJbxx> selectListByKeyword(Map<String, Object> params);

  /**
   * 获取法人登记基本信息与状态。
   */
  List<CaDjJbxx> selectListWithStatus(Map<String, Object> params);

  /*
   * 获取资产列表查询
   * */
  List<AssetDto> selectAssetDtoList(Map<String, Object> ParamsMap);

  /**
   * 高级查询
   */
  List<CaDjJbxxDto> selectFrHighDetail(Map<String, Object> qryMap);

  /**
   * 法人校核
   *
   * @param tyxydm 统一信用代码
   * @param frdwmc 法人单位名称
   * @param zzjgdm 组织机构代码
   * @return 校核结果
   * @throws Exception 异常
   */
  List<FrCheckDto> frCheck(@Param("tyxydm") String tyxydm, @Param("frdwmc") String frdwmc,
      @Param("zzjgdm") String zzjgdm);

  /*  com.icinfo.frk.business.model.Status getStatus(String frwybs);*/
  /*

   */
/**
   * 查询登记状态
 *//*

  List<String> selectCxzts();
*/


  /*
   */
  /*
   * 首页查询（模糊）
   * *//*

  List<AssetDto> selectListByMap(Map<String, Object> ParamsMap);
*/


/*
  CaDjJbxx GetOne(String frwybs);
  
  CaDjJbxx GetOneByDatakeycontent(String frwybs);

  CaDjJbxx GetOneWithStatus(String frwybs);*/

  /**
   * 获取自然人详情
   */
  /*  CaDjJbxx getPerDetail(String frwybs);*/

/*
  List<CaDjJbxx> getCaDjJbxx(Map<String, Object> params);
*/

/*
  List<AssetDto> GetAssetDto(String frwybs);
*/
  /*
   *//**
   * 获取当前法人信息
   * @author hsh
   * @param paramap
   * @return
   *//*
  CaDjJbxx getCurrentCorporateInfo(Map<String, String> paramap);*/

}