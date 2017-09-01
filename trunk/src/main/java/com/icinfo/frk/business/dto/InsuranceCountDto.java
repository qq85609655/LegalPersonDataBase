/**
 * Copyright© 2003-2016 浙江汇信科技有限公司, All Rights Reserved. <br/>
 */
package com.icinfo.frk.business.dto;

import com.icinfo.frk.business.model.CaDjJbxx;
import java.io.Serializable;
import javax.persistence.Column;

/**
 * 描述:  ca_dj_jbxx 对应的实体类.<br>
 * WARNING：不是表中字段的属性必须加@Transient注解
 *
 * @author framework generator
 * @date 2017年06月27日
 */

public class InsuranceCountDto extends CaDjJbxx {

  private static final long serialVersionUID = 1L;
  @Column(name = "yl_count")
  private Integer yl_count;
  @Column(name = "yb_count")
  private Integer yb_count;
  @Column(name = "syu_count")
  private Integer syu_count;
  @Column(name = "gs_count")
  private Integer gs_count;
  @Column(name = "sye_count")
  private Integer sye_count;
  @Column(name = "gjj_count")
  private Integer gjj_count;

  public Integer getYl_count() {
    return yl_count;
  }

  public void setYl_count(Integer yl_count) {
    this.yl_count = yl_count;
  }

  public Integer getYb_count() {
    return yb_count;
  }

  public void setYb_count(Integer yb_count) {
    this.yb_count = yb_count;
  }

  public Integer getSyu_count() {
    return syu_count;
  }

  public void setSyu_count(Integer syu_count) {
    this.syu_count = syu_count;
  }

  public Integer getGs_count() {
    return gs_count;
  }

  public void setGs_count(Integer gs_count) {
    this.gs_count = gs_count;
  }

  public Integer getSye_count() {
    return sye_count;
  }

  public void setSye_count(Integer sye_count) {
    this.sye_count = sye_count;
  }

  public Integer getGjj_count() {
    return gjj_count;
  }

  public void setGjj_count(Integer gjj_count) {
    this.gjj_count = gjj_count;
  }
}