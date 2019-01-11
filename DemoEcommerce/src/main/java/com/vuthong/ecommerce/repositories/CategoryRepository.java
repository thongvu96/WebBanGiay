/**
 * CategoryRepository.java
 * Dec 11, 2018
 */
package com.vuthong.ecommerce.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.vuthong.ecommerce.entities.Category;
import com.vuthong.ecommerce.entities.Product;

/**
 * @author VuThong
 */
@Repository
public interface CategoryRepository extends JpaRepository<Category, Integer> {
	
}
