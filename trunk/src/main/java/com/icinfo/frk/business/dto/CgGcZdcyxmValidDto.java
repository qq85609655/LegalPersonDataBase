package com.icinfo.frk.business.dto;

import com.icinfo.frk.business.model.CgGcZdcyxmValid;

public class CgGcZdcyxmValidDto extends CgGcZdcyxmValid{

	//开始时间
    private String startTime;
    
    //结束时间
    private String endTime;
    
    private static final long serialVersionUID = 1L;

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