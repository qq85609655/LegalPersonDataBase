/**
 * Copyright© 2003-2016 浙江汇信科技有限公司, All Rights Reserved. <br/>
 * 描述: TODO <br/>
 *
 * @author framework generator
 * @date 2017年06月30日
 * @version 2.0
 */



package com.icinfo.frk.business.mapper;

import java.util.List;
import java.util.Map;

import com.icinfo.framework.mybatis.mapper.common.Mapper;
import com.icinfo.frk.business.dto.CaCyFddbrValidDto;
import com.icinfo.frk.business.model.CaCyFddbr;
import com.icinfo.frk.business.model.CaCyFddbrValid;

/**
 * 描述: ca_cy_fddbr_valid 对应的Mapper接口.<br>
 *
 * @author framework generator
 * @date 2017年06月30日
 */
public interface CaCyFddbrValidMapper extends Mapper<CaCyFddbrValid> {
/*    List<CaCyFddbrValid> GetList(String frwybs);*/

    /**
     * 获取法定代表人信息
     */
    List<CaCyFddbrValid> selectList(Map<String, Object> params);

    List<CaCyFddbrValid> selectListByMap(Map<String, Object> params);

/*    List<CaCyFddbrValid> getCaCyFddbr(Map<String, Object> params);*/

/*    List<CaCyFddbrValid> getFddbrList(Map<String, Object> qryMap);*/

    /**
     * 获取Frwybs总数
     * @param zjhm
     * @return
     */
    int getFrwybsCount(String zjhm);


    /**
    * 查询基本信息
    * @author Guanzhou
    * @param caCyFddbr
    * @return CaCyFddbrValid
    */
    List<CaCyFddbrValid> getPerson(CaCyFddbrValidDto caCyFddbr);

    int getPersonCount(CaCyFddbrValidDto CaCyFddbrValidDto);


    /**
    * 查询基本信息
    * @author Guanzhou
    * @param caCyFddbr
    * @return caCyFddbr
    */
    List<CaCyFddbr> getPersonList(CaCyFddbrValidDto caCyFddbr);

    /**
    * 根据姓名获取证件号数量
    * @author Guanzhou
    * @param CaCyFddbrValidDto
    * @return int
    */
    int getZjhmCount(CaCyFddbrValidDto CaCyFddbrValidDto);
}


