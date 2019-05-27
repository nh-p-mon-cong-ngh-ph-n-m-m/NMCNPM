package DAO;

import java.util.ArrayList;

import Model.Account;

public interface AccountDAO {
	// Kiem tra dang nhap
	public boolean checkLogin(String Username, String Password);
}
