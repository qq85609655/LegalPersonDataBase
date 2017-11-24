package com.icinfo.frk.search.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.icinfo.framework.core.web.BaseController;
import com.icinfo.framework.mybatis.pagehelper.PageHelper;
import com.icinfo.framework.mybatis.pagehelper.datatables.PageRequest;
import com.icinfo.framework.mybatis.pagehelper.datatables.PageResponse;
import com.icinfo.frk.business.mapper.CeRyRyxxValidMapper;
import com.icinfo.frk.business.mapper.CeXkzBaxxValidMapper;
import com.icinfo.frk.business.mapper.CeXkzXzxkxxValidMapper;
import com.icinfo.frk.business.mapper.CeZzZzxxValidMapper;
import com.icinfo.frk.business.model.CeRyRyxxValid;
import com.icinfo.frk.business.model.CeXkzBaxxValid;
import com.icinfo.frk.business.model.CeXkzXzxkxxValid;
import com.icinfo.frk.business.model.CeZzZzxxValid;
import com.icinfo.frk.common.utils.AESEUtil;

/**
 * 描述:  资本资产对应的Controller类.<br>
 *
 * @author framework generator
 * @date 2017年06月27日
 */
@Controller
@RequestMapping("/data/admission")
public class AdmissionController extends BaseController {

  @Autowired
  private CeXkzXzxkxxValidMapper ceXkzXzxkxxValidMapper;

  @Autowired
  private CeXkzBaxxValidMapper ceXkzBaxxValidMapper;

  @Autowired
  private CeRyRyxxValidMapper ceRyRyxxValidMapper;

  @Autowired
  private CeZzZzxxValidMapper ceZzZzxxValidMapper;

  /**
   * 获取行政许可信息
   */
  @RequestMapping(value = "/xzxk")
  @ResponseBody
  public PageResponse<CeXkzXzxkxxValid> getxzxkDetail(PageRequest request) throws Exception {
    PageHelper.startPage(request.getPageNum(), request.getLength());
    String frwybs = (String) request.getParams().get("frwybs");
    if (null != frwybs && !"".equals(frwybs)) {
      frwybs = AESEUtil.decodeCorpid(frwybs);
    }
    List<CeXkzXzxkxxValid> list = ceXkzXzxkxxValidMapper.getList(frwybs);
    return new PageResponse<CeXkzXzxkxxValid>(list);
  }

  /**
   * 获取行政备案信息
   */
  @RequestMapping(value = "/xzba")
  @ResponseBody
  public PageResponse<CeXkzBaxxValid> getxzbaDetail(PageRequest request) throws Exception {
    PageHelper.startPage(request.getPageNum(), request.getLength());
    String frwybs = (String) request.getParams().get("frwybs");
    if (null != frwybs && !"".equals(frwybs)) {
      frwybs = AESEUtil.decodeCorpid(frwybs);
    }
    List<CeXkzBaxxValid> list = ceXkzBaxxValidMapper.getList(frwybs);
    return new PageResponse<CeXkzBaxxValid>(list);
  }

  /**
   * 获取资质信息
   */
  @RequestMapping(value = "/zzxx")
  @ResponseBody
  public PageResponse<CeZzZzxxValid> getzzxxDetail(PageRequest request) throws Exception {
    PageHelper.startPage(request.getPageNum(), request.getLength());
    String frwybs = (String) request.getParams().get("frwybs");
    if (null != frwybs && !"".equals(frwybs)) {
      frwybs = AESEUtil.decodeCorpid(frwybs);
    }
    List<CeZzZzxxValid> list = ceZzZzxxValidMapper.getList(frwybs);
    for(CeZzZzxxValid dto: list){

    }
    return new PageResponse<CeZzZzxxValid>(list);
  }

  /**
   * 获取荣誉信息
   */
  @RequestMapping(value = "/ryxx")
  @ResponseBody
  public PageResponse<CeRyRyxxValid> getryxxDetail(PageRequest request) throws Exception {
    PageHelper.startPage(request.getPageNum(), request.getLength());
    String frwybs = (String) request.getParams().get("frwybs");
    if (null != frwybs && !"".equals(frwybs)) {
      frwybs = AESEUtil.decodeCorpid(frwybs);
    }
    List<CeRyRyxxValid> list = ceRyRyxxValidMapper.getList(frwybs);
    return new PageResponse<CeRyRyxxValid>(list);
  }


}
