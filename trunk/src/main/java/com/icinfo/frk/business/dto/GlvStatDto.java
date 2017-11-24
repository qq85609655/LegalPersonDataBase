/*
 * Copyright© 2003-2016 浙江汇信科技有限公司, All Rights Reserved. 
 */
package com.icinfo.frk.business.dto;

import java.math.BigDecimal;

import com.icinfo.frk.business.model.GlvStat;

/**
 * 描述: glv_stat对应的DTO类.<br>
 *
 * @author framework generator
 * @date 2017年06月27日
 */
public class GlvStatDto extends GlvStat {

	private static final long serialVersionUID = 1L;

	// 开始时间
	private String startTime;
	// 结束时间
	private String endTime;
	// 查询是全部还是最近一周，还是一月
	private String dataType;
	// 法人库采集量
	private BigDecimal colletNum;
	// 法人库入库量
	private BigDecimal importNum;

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

	public String getDataType() {
		return dataType;
	}

	public void setDataType(String dataType) {
		this.dataType = dataType;
	}

	public BigDecimal getColletNum() {
		return colletNum;
	}

	public void setColletNum(BigDecimal colletNum) {
		this.colletNum = colletNum;
	}

	public BigDecimal getImportNum() {
		return importNum;
	}

	public void setImportNum(BigDecimal importNum) {
		this.importNum = importNum;
	}


}