package com.microed.cars.dataaccess;

import java.sql.SQLException;
import java.util.List;

public class CarsDAO extends BaseDAO {


	@SuppressWarnings("unchecked")
	public List<String> loadTagsMatching(String search) throws SQLException {
		return getSqlMap().queryForList("Cars.loadTagsMatching", search);
	}

}
