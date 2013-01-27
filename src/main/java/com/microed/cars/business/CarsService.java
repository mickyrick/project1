package com.microed.cars.business;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Required;

import com.microed.cars.dataaccess.CarsDAO;

public class CarsService {

	CarsDAO carsDAO;

	@Required
	public void setCarsDAO(CarsDAO carsDAO) {
		this.carsDAO = carsDAO;
	}

	public List<String> loadTagsMatching(String search) throws SQLException {
		return carsDAO.loadTagsMatching(search);
	}


}
