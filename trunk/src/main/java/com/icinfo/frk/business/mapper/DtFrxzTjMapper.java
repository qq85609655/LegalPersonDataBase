/**
 * Copyright© 2003-2016 浙江汇信科技有限公司, All Rights Reserved. <br/>
 * 描述: TODO <br/>
 *
 * @author framework generator
 * @date 2017年05月10日
 * @version 2.0
 */
package com.icinfo.frk.business.mapper;

import com.icinfo.framework.mybatis.mapper.common.Mapper;
import com.icinfo.frk.business.dto.DtFrxzTjDto;
import com.icinfo.frk.business.model.DtFrxzTj;
import java.util.List;
import java.util.Map;

/**
 * 描述:    dt_frxz_tj 对应的Mapper接口.<br>
 *
 * @author framework generator
 * @date 2017年05月10日
 */
public interface DtFrxzTjMapper extends Mapper<DtFrxzTj> {

  List<DtFrxzTjDto> doGetDtFrxzTjDtoList(Map<String,Object> map);

  Long getWeekIncreaseNum(Map<String, String> map);
  
}