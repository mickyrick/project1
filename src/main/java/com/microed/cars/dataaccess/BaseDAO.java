package com.microed.cars.dataaccess;

import java.io.Reader;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import org.springframework.core.io.ClassPathResource;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;

/**
 * © 2012 Copyright ??? Probably copied more or less wholesale from ibatis examples
 * @author G.Letherby
 *
 */
public class BaseDAO {

	protected Connection connection;
	protected Statement statement;
	protected ResultSet resultSet;

	protected String insStr(String insString) {
		return "\"" + insString + "\"";
	}

	private static final SqlMapClient SQL_MAP;

	private static final String SQL_MAP_NAME = new ClassPathResource("sqlmap-config.xml").getPath();

	static {
		try {
			Reader reader = Resources.getResourceAsReader(SQL_MAP_NAME);
			SQL_MAP = SqlMapClientBuilder.buildSqlMapClient(reader);
		} catch (Exception e) {
			// If you get an error at this point, it doesn�t matter what it was. It is going to
			// be unrecoverable and we will want the app to blow up hard so we are aware of the
			// problem. You should always log such errors and re-throw them in such a way that
			// you can be made immediately aware of the problem.
			e.printStackTrace();
			throw new RuntimeException("Error initializing DAOSupport: " + e);
		}
	}

	/**
	 * Returns the SQL Map to be used by all sub-classes.
	 */
	public static SqlMapClient getSqlMap() {
		return SQL_MAP;
	}

	/**
	public Map<String, Object> getShopQueryParamsBasedOnUserResearch(User user, Long minPrice, boolean ascending) throws SQLException {
		List<String> researchList = new ArrayList<String>();
		researchList.add("-99");

		Map<String, Object> queryParams = new HashMap<String, Object>();
		queryParams.put("cResearch", researchList);
		queryParams.put("ascending", ascending);
		queryParams.put("minPrice", minPrice);

		return queryParams;
	}
	 **/

}
