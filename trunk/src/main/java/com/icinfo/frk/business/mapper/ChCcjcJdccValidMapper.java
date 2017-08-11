/**
 * Copyright© 2003-2016 浙江汇信科技有限公司, All Rights Reserved. <br/>
 * @author Guanzhou Song
 * @date 2017年07月11日
 * @version 2.0
 */
package com.icinfo.frk.business.mapper;
import java.util.List;
import java.util.Map;

import com.icinfo.framework.mybatis.mapper.common.Mapper;
import com.icinfo.frk.business.dto.ChCcjcJdccValidDto;
import com.icinfo.frk.business.model.ChCcjcJdccValid;
/**
 * 描述:  ChCcjcJdccValid 对应的Mapper接口.<br>
 *
 * @author framework generator
 * @date 2017年07月06日
 */
public interface ChCcjcJdccValidMapper extends Mapper<ChCcjcJdccValid> {
  List<ChCcjcJdccValid> getList(Map<String, Object> map);

List<ChCcjcJdccValidDto> findJdccMsg(Map<String, Object> params);
}
