/*
 * Copyright© 2003-2016 浙江汇信科技有限公司, All Rights Reserved. 
 */
package com.icinfo.frk.business.service.impl;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.icinfo.framework.core.service.support.MyBatisServiceSupport;
import com.icinfo.framework.mybatis.mapper.entity.Example;
import com.icinfo.frk.business.mapper.CdGdDcdyrValidMapper;
import com.icinfo.frk.business.model.CdGdDcdyrValid;
import com.icinfo.frk.business.service.ICdGdDcdyrValidService;

/**
 * 描述: 固定资产-动产抵押人信息 cd_gd_dcdyr_valid 对应的Service接口实现类.<br>
 *
 * @author framework generator
 * @date 2017年07月06日
 */
@Service
public class CdGdDcdyrValidServiceImpl extends MyBatisServiceSupport implements
    ICdGdDcdyrValidService {

  /**
   * 日志记录器
   */
  private static final Logger logger = LoggerFactory.getLogger(CdGdDcdyrValidServiceImpl.class);

  /**
   * 注入动产抵押人信息Mapper
   */
  @Autowired
  private CdGdDcdyrValidMapper cdGdDcdyrValidMapper;

  /**
   * 获取动产抵押人信息列表
   *
   * @param frwybs 法人唯一标识
   * @return 动产抵押人信息列表
   */
  @Override
  public List<CdGdDcdyrValid> getList(String frwybs) throws Exception {
    Example example = new Example(CdGdDcdyrValid.class);
    example.createCriteria().andEqualTo("frwybs",frwybs);
    return cdGdDcdyrValidMapper.selectByExample(example);
  }
}