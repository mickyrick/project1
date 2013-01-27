package com.microed.cars.web;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class HomeAction extends BaseCarsAction {
	static final long serialVersionUID = 0;

	List<String> autoCompleteList = new ArrayList<String>();

	public String autoComplete() {
		autoCompleteList = new ArrayList<String>();

		autoCompleteList.add("aaaa aoiblog");
		autoCompleteList.add("abbb aoiblog");
		autoCompleteList.add("abcc aoiblog");
		autoCompleteList.add("abcd aoiblog");

		autoCompleteList.add("bbbb aoiblog");
		autoCompleteList.add("bccc aoiblog");
		autoCompleteList.add("bcdd aoiblog");
		autoCompleteList.add("bcde aoiblog");

		autoCompleteList.add("cccc aoiblog");
		autoCompleteList.add("cddd aoiblog");
		autoCompleteList.add("cdee aoiblog");
		autoCompleteList.add("cdef aoiblog");

		autoCompleteList.add("dddd aoiblog");
		autoCompleteList.add("deee aoiblog");
		autoCompleteList.add("deff aoiblog");
		autoCompleteList.add("defg aoiblog");

		autoCompleteList.add("eeee aoiblog");
		autoCompleteList.add("efff aoiblog");
		autoCompleteList.add("efgg aoiblog");
		autoCompleteList.add("efgh aoiblog");

		return SUCCESS;
	}

	/** I've no idea if it will return void, a List<String> or other ... no idea **/
	public void refreshAutoCompleteListBasedOnInput() {
		// Here I will call the service to refresh the list based on input string
	}

	public List<String> getAutoCompleteList() {
		return autoCompleteList;
	}

	public void setAutoCompleteList(List<String> autoCompleteList) {
		this.autoCompleteList = autoCompleteList;
	}

	/** How do I call this when user inputs into a text field? **/
	public void getData() throws SQLException {

	}

	@Override
	public String execute() throws Exception {

		return INPUT;
	}

}
