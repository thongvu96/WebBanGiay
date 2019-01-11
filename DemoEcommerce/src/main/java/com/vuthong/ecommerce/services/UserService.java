/**
 * UserService.java
 * Dec 29, 2018
 */
package com.vuthong.ecommerce.services;

import com.vuthong.ecommerce.entities.User;

/**
 * @author VuThong
 */
public interface UserService {

	public User findUserByEmail(String email);

	public void saveUser(User user);
}
