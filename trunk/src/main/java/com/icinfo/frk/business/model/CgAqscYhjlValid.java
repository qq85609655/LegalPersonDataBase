package com.icinfo.frk.business.model;

import com.fasterxml.jackson.annotation.JsonFormat;
import javax.persistence.Table;

/**
 * @AUTHOR:Code Templates
 * @DATE:- 2017-07-11 11:26:08
 **/


/**
 * @author Guanzhou Song
 */
@Table(name = "frk.cg_aqsc_yhjl_valid")
public class CgAqscYhjlValid implements java.io.Serializable {

  private static final long serialVersionUID = 5454155825314635342L;

  //columns START
  //
  private java.lang.String id;
  //
  private java.lang.String hashUnique;
  //
  private java.lang.String frwybs;
  //
  private java.lang.String tyxydm;
  //
  private java.lang.String dwmc;
  //
  private java.lang.String czzdaqyhnr;
  //
  @JsonFormat(pattern = "yyyy-MM-dd", timezone = "GMT+8")
  private java.util.Date rdsj;
  //
  private java.lang.String rdyj;
  //
  private java.lang.String rdjg;
  //
  @JsonFormat(pattern = "yyyy-MM-dd", timezone = "GMT+8")
  private java.util.Date xasj;
  //
  private java.lang.String datasrdep;
  //
  private java.lang.String datasource;
  //
  private java.lang.String datakeycontent;
  //
  private java.lang.String createtime;
  //
  @JsonFormat(pattern = "yyyy-MM-dd", timezone = "GMT+8")
  private java.util.Date updatetime;
  //columns END

  public java.lang.String getId() {
    return this.id;
  }

  public void setId(java.lang.String value) {
    this.id = value;
  }

  public java.lang.String getHashUnique() {
    return this.hashUnique;
  }

  public void setHashUnique(java.lang.String value) {
    this.hashUnique = value;
  }

  public java.lang.String getFrwybs() {
    return this.frwybs;
  }

  public void setFrwybs(java.lang.String value) {
    this.frwybs = value;
  }

  public java.lang.String getTyxydm() {
    return this.tyxydm;
  }

  public void setTyxydm(java.lang.String value) {
    this.tyxydm = value;
  }

  public java.lang.String getDwmc() {
    return this.dwmc;
  }

  public void setDwmc(java.lang.String value) {
    this.dwmc = value;
  }

  public java.lang.String getCzzdaqyhnr() {
    return this.czzdaqyhnr;
  }

  public void setCzzdaqyhnr(java.lang.String value) {
    this.czzdaqyhnr = value;
  }

  public java.util.Date getRdsj() {
    return this.rdsj;
  }

  public void setRdsj(java.util.Date value) {
    this.rdsj = value;
  }

  public java.lang.String getRdyj() {
    return this.rdyj;
  }

  public void setRdyj(java.lang.String value) {
    this.rdyj = value;
  }

  public java.lang.String getRdjg() {
    return this.rdjg;
  }

  public void setRdjg(java.lang.String value) {
    this.rdjg = value;
  }

  public java.util.Date getXasj() {
    return this.xasj;
  }

  public void setXasj(java.util.Date value) {
    this.xasj = value;
  }

  public java.lang.String getDatasrdep() {
    return this.datasrdep;
  }

  public void setDatasrdep(java.lang.String value) {
    this.datasrdep = value;
  }

  public java.lang.String getDatasource() {
    return this.datasource;
  }

  public void setDatasource(java.lang.String value) {
    this.datasource = value;
  }

  public java.lang.String getDatakeycontent() {
    return this.datakeycontent;
  }

  public void setDatakeycontent(java.lang.String value) {
    this.datakeycontent = value;
  }

  public java.lang.String getCreatetime() {
    return this.createtime;
  }

  public void setCreatetime(java.lang.String value) {
    this.createtime = value;
  }

  public java.util.Date getUpdatetime() {
    return this.updatetime;
  }

  public void setUpdatetime(java.util.Date value) {
    this.updatetime = value;
  }

}

