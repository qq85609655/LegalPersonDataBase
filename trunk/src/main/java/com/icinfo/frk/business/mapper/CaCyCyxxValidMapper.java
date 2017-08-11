/**
 * Copyright© 2003-2016 浙江汇信科技有限公司, All Rights Reserved. <br/>
 * 描述: TODO <br/>
 *
 * @author framework generator
 * @date 2017年07月04日
 * @version 2.0
 */
package com.icinfo.frk.business.mapper;


import com.icinfo.framework.mybatis.mapper.common.Mapper;
import com.icinfo.frk.business.model.CaCyCyxxValid;

import java.util.List;
import java.util.Map;

/**
 * 描述:  ca_cy_cyxx_valid 对应的Mapper接口.<br>
 *
 * @author framework generator
 * @date 2017年07月04日
 */
public interface CaCyCyxxValidMapper extends Mapper<CaCyCyxxValid> {
    /**
     * 获取成员信息
     *
     * @param params
     * @return
     */
    List<CaCyCyxxValid> selectList(Map<String, Object> params);
    
    List<CaCyCyxxValid> getCaCyCyxx(Map<String, Object> params);
    
    
    List<CaCyCyxxValid> getCydwxxList(Map<String, Object> params);
}