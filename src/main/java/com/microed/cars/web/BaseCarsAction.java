package com.microed.cars.web;

import org.springframework.beans.factory.annotation.Required;

import com.microed.cars.business.CarsService;
import com.opensymphony.xwork2.ActionSupport;

public class BaseCarsAction extends ActionSupport {

	protected CarsService carsService;
	protected String searchTags;
	@Required
	public void setCarsService(CarsService carsService) {
		this.carsService = carsService;
	}
	
}
