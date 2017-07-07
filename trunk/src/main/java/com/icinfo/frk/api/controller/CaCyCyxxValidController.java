/*
 * Copyright© 2003-2016 浙江汇信科技有限公司, All Rights Reserved. 
 */
package com.icinfo.frk.api.controller;

import com.icinfo.framework.core.web.BaseController;
import com.icinfo.framework.tools.utils.StringUtils;
import com.icinfo.frk.api.dto.CaCyCyxxValidDto;
import com.icinfo.frk.api.dto.CaCyFddbrValidDto;
import com.icinfo.frk.business.model.CaCyCyxxValid;
import com.icinfo.frk.business.service.ICaCyCyxxValidService;
import com.icinfo.frk.common.response.ApiResponse;
import com.icinfo.frk.common.utils.BeanUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.List;

/**
 * 描述:  ca_cy_cyxx_valid 对应的Controller类.<br>
 *
 * @author framework generator
 * @date 2017年07月04日
 */
@RestController("apiCaCyCyxxValidController")
@RequestMapping("/api/cacycyxx")
public class CaCyCyxxValidController extends BaseController {
    /**
     * 日志记录器
     */
    private static final Logger logger = LoggerFactory.getLogger(CaCyCyxxValidController.class);

    @Autowired
    private ICaCyCyxxValidService caCyCyxxValidService;

    /**
     * 根据统一社会信用代码识获取成员信息
     *
     * @param tyxydm 统一社会信用代码
     * @return 查询结果
     * @throws Exception 异常
     */
    @RequestMapping(value = "/get", method = {RequestMethod.GET,RequestMethod.POST}, produces = "application/json;charset=UTF-8")
    public ApiResponse get(@RequestParam(name = "tyxydm", required = false) final String tyxydm,
                           @RequestParam(name = "zzjgdm", required = false) final String zzjgdm,
                           @RequestParam(name = "djzch", required = false) final String djzch) throws Exception {
        if (StringUtils.isBlank(tyxydm) && StringUtils.isBlank(zzjgdm) && StringUtils.isBlank(djzch)) {
            return new ApiResponse(ApiResponse.FAIL_MISS_PARAM_CODE, ApiResponse.FAIL_MISS_PARAM_MSG);
        }
        // 传参执行查询
        List<CaCyCyxxValid> caCyCyxxValids = caCyCyxxValidService.getList(new HashMap<String, Object>() {{
            this.put("tyxydm", tyxydm);
            this.put("zzjgdm", zzjgdm);
            this.put("djzch", djzch);
        }});

        return new ApiResponse(BeanUtils.copyList(CaCyCyxxValidDto.class, caCyCyxxValids));
    }
}