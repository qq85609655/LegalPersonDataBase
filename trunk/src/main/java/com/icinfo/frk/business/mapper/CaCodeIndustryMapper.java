package com.icinfo.frk.business.mapper;

import com.icinfo.framework.mybatis.mapper.common.Mapper;
import com.icinfo.frk.business.model.CaCodeIndustry;
import java.util.List;

/**
 * 描述:   frk.ca_code_industry 对应的Service接口.<br>
 *
 * @author hujianping
 */
public interface CaCodeIndustryMapper extends Mapper<CaCodeIndustry> {

  List<CaCodeIndustry> getIndustrys();

}
