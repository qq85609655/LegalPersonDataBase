/*
 * Copyright© 2003-2016 浙江汇信科技有限公司, All Rights Reserved. 
 */
package com.icinfo.frk.business.dto;


import com.icinfo.frk.business.model.GlvStat;

/**
 * 描述:  glv_stat对应的DTO类.<br>
 *
 * @author framework generator
 * @date 2017年06月27日
 */
public class GlvStatDto extends GlvStat {

  private static final long serialVersionUID = 1L;

  //开始时间
  private String startTime;
  //结束时间
  private String endTime;

  public String getStartTime() {
    return startTime;
  }

  public void setStartTime(String startTime) {
    this.startTime = startTime;
  }

  public String getEndTime() {
    return endTime;
  }

  public void setEndTime(String endTime) {
    this.endTime = endTime;
  }

}