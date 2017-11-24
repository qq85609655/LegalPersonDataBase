package com.icinfo.frk.business.model;

import javax.persistence.Column;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonFormat;

/**
 * @AUTHOR:Code Templates
 * @DATE:- 2017-07-11 17:04:44
 **/


/**
 * @author Guanzhou Song
 */
@Table(name = "frk.ch_bl_hmdxx_valid")
public class ChBlHmdxxValid implements java.io.Serializable {

  private static final long serialVersionUID = 5454155825314635342L;

  //columns START
  //
  private java.lang.String id;
  //
  private java.lang.String hashUnique;
  //
  private java.lang.String frwybs;
  //
  @Column(name ="hmdmc")
  private java.lang.String hmdmc;
  //
  private java.lang.String yzwfsxqymd;
  //
  private java.lang.String nyhzqyhdmyy;
  //
  private java.lang.String lryzwfsxqymdyy;
  //
  @JsonFormat(pattern="yyyy-MM-dd",timezone="GMT+8")
  private java.util.Date lrhmdrq;
  //
  private java.lang.String lrzcjdjg;
  //
  private java.lang.String ycyzwfsxqymdyy;
  //
  @JsonFormat(pattern="yyyy-MM-dd",timezone="GMT+8")
  private java.util.Date ychmdrq;
  //
  private java.lang.String yczcjdjg;
  //
  private java.lang.String datasrdep;
  //
  private java.lang.String datasource;
  //
  private java.lang.String datakeycontent;
  //
  private java.lang.String createtime;
  //
  @JsonFormat(pattern="yyyy-MM-dd",timezone="GMT+8")
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

  public java.lang.String getHmdmc() {
    return this.hmdmc;
  }

  public void setHmdmc(java.lang.String value) {
    this.hmdmc = value;
  }

  public java.lang.String getYzwfsxqymd() {
    return this.yzwfsxqymd;
  }

  public void setYzwfsxqymd(java.lang.String value) {
    this.yzwfsxqymd = value;
  }

  public java.lang.String getNyhzqyhdmyy() {
    return this.nyhzqyhdmyy;
  }

  public void setNyhzqyhdmyy(java.lang.String value) {
    this.nyhzqyhdmyy = value;
  }

  public java.lang.String getLryzwfsxqymdyy() {
    return this.lryzwfsxqymdyy;
  }

  public void setLryzwfsxqymdyy(java.lang.String value) {
    this.lryzwfsxqymdyy = value;
  }

  public java.util.Date getLrhmdrq() {
    return this.lrhmdrq;
  }

  public void setLrhmdrq(java.util.Date value) {
    this.lrhmdrq = value;
  }

  public java.lang.String getLrzcjdjg() {
    return this.lrzcjdjg;
  }

  public void setLrzcjdjg(java.lang.String value) {
    this.lrzcjdjg = value;
  }

  public java.lang.String getYcyzwfsxqymdyy() {
    return this.ycyzwfsxqymdyy;
  }

  public void setYcyzwfsxqymdyy(java.lang.String value) {
    this.ycyzwfsxqymdyy = value;
  }

  public java.util.Date getYchmdrq() {
    return this.ychmdrq;
  }

  public void setYchmdrq(java.util.Date value) {
    this.ychmdrq = value;
  }

  public java.lang.String getYczcjdjg() {
    return this.yczcjdjg;
  }

  public void setYczcjdjg(java.lang.String value) {
    this.yczcjdjg = value;
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

