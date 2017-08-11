package com.icinfo.frk.business.model;

import javax.persistence.Table;
/**
 * @AUTHOR:Code Templates
 * @DATE:- 2017-07-11 17:04:53
 **/

import com.fasterxml.jackson.annotation.JsonFormat;



/**
 * 
 * @author Guanzhou Song
 */
@Table(name="frk.ch_xzqz_valid")
public class ChXzqzValid  implements java.io.Serializable{

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
	private java.lang.String zzjgdm;
	//
	@JsonFormat(pattern = "yyyy-MM-dd",timezone="GMT+8")
	private java.util.Date xzqzLscsrq;
	//
	@JsonFormat(pattern = "yyyy-MM-dd",timezone="GMT+8")
	private java.util.Date xzqzJclsrq;
	//
	private java.lang.String xzqzWh;
	//
	@JsonFormat(pattern = "yyyy-MM-dd",timezone="GMT+8")
	private java.util.Date xzqzLsrq;
	//
	private java.lang.String xzqzLsnr;
	//
	private java.lang.String xzqzZxwh;
	//
	private java.lang.String xzqzZxnr;
	//
	@JsonFormat(pattern = "yyyy-MM-dd",timezone="GMT+8")
	private java.util.Date xzqzZxrq;
	//
	@JsonFormat(pattern = "yyyy-MM-dd",timezone="GMT+8")
	private java.util.Date xzqzJcrq;
	//
	private java.lang.String xzqzJcwh;
	//
	private java.lang.String xzqzZxbm;
	//
	private java.lang.String datasrdep;
	//
	private java.lang.String datasource;
	//
	private java.lang.String datakeycontent;
	//
	@JsonFormat(pattern = "yyyy-MM-dd",timezone="GMT+8")
	private java.lang.String createtime;
	//
	@JsonFormat(pattern = "yyyy-MM-dd",timezone="GMT+8")
	private java.util.Date updatetime;
	//columns END



	public void setId(java.lang.String value) {
		this.id = value;
	}

	public java.lang.String getId() {
		return this.id;
	}

	public void setHashUnique(java.lang.String value) {
		this.hashUnique = value;
	}

	public java.lang.String getHashUnique() {
		return this.hashUnique;
	}

	public void setFrwybs(java.lang.String value) {
		this.frwybs = value;
	}

	public java.lang.String getFrwybs() {
		return this.frwybs;
	}

	public void setTyxydm(java.lang.String value) {
		this.tyxydm = value;
	}

	public java.lang.String getTyxydm() {
		return this.tyxydm;
	}

	public void setDwmc(java.lang.String value) {
		this.dwmc = value;
	}

	public java.lang.String getDwmc() {
		return this.dwmc;
	}

	public void setZzjgdm(java.lang.String value) {
		this.zzjgdm = value;
	}

	public java.lang.String getZzjgdm() {
		return this.zzjgdm;
	}

	public void setXzqzLscsrq(java.util.Date value) {
		this.xzqzLscsrq = value;
	}

	public java.util.Date getXzqzLscsrq() {
		return this.xzqzLscsrq;
	}

	public void setXzqzJclsrq(java.util.Date value) {
		this.xzqzJclsrq = value;
	}

	public java.util.Date getXzqzJclsrq() {
		return this.xzqzJclsrq;
	}

	public void setXzqzWh(java.lang.String value) {
		this.xzqzWh = value;
	}

	public java.lang.String getXzqzWh() {
		return this.xzqzWh;
	}

	public void setXzqzLsrq(java.util.Date value) {
		this.xzqzLsrq = value;
	}

	public java.util.Date getXzqzLsrq() {
		return this.xzqzLsrq;
	}

	public void setXzqzLsnr(java.lang.String value) {
		this.xzqzLsnr = value;
	}

	public java.lang.String getXzqzLsnr() {
		return this.xzqzLsnr;
	}

	public void setXzqzZxwh(java.lang.String value) {
		this.xzqzZxwh = value;
	}

	public java.lang.String getXzqzZxwh() {
		return this.xzqzZxwh;
	}

	public void setXzqzZxnr(java.lang.String value) {
		this.xzqzZxnr = value;
	}

	public java.lang.String getXzqzZxnr() {
		return this.xzqzZxnr;
	}

	public void setXzqzZxrq(java.util.Date value) {
		this.xzqzZxrq = value;
	}

	public java.util.Date getXzqzZxrq() {
		return this.xzqzZxrq;
	}

	public void setXzqzJcrq(java.util.Date value) {
		this.xzqzJcrq = value;
	}

	public java.util.Date getXzqzJcrq() {
		return this.xzqzJcrq;
	}

	public void setXzqzJcwh(java.lang.String value) {
		this.xzqzJcwh = value;
	}

	public java.lang.String getXzqzJcwh() {
		return this.xzqzJcwh;
	}

	public void setXzqzZxbm(java.lang.String value) {
		this.xzqzZxbm = value;
	}

	public java.lang.String getXzqzZxbm() {
		return this.xzqzZxbm;
	}

	public void setDatasrdep(java.lang.String value) {
		this.datasrdep = value;
	}

	public java.lang.String getDatasrdep() {
		return this.datasrdep;
	}

	public void setDatasource(java.lang.String value) {
		this.datasource = value;
	}

	public java.lang.String getDatasource() {
		return this.datasource;
	}

	public void setDatakeycontent(java.lang.String value) {
		this.datakeycontent = value;
	}

	public java.lang.String getDatakeycontent() {
		return this.datakeycontent;
	}

	public void setCreatetime(java.lang.String value) {
		this.createtime = value;
	}

	public java.lang.String getCreatetime() {
		return this.createtime;
	}

	public void setUpdatetime(java.util.Date value) {
		this.updatetime = value;
	}

	public java.util.Date getUpdatetime() {
		return this.updatetime;
	}

}

