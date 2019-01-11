/**
 * RoleRepository.java
 * Dec 29, 2018
 */
package com.vuthong.ecommerce.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.vuthong.ecommerce.entities.Role;

/**
 * @author VuThong
 */
@Repository("roleRepository")
public interface RoleRepository extends JpaRepository<Role, Integer> {

	Role findByRole(String role);
}
