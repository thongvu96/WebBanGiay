/**
 * UserRepository.java
 * Dec 29, 2018
 */
package com.vuthong.ecommerce.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.vuthong.ecommerce.entities.User;

/**
 * @author VuThong
 */
@Repository("userRepository")
public interface UserRepository extends JpaRepository<User, Long> {

	User findByEmail(String email);
}
