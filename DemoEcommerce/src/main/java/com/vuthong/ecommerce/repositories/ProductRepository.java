/**
 * ProductRepository.java
 * Dec 11, 2018
 */
package com.vuthong.ecommerce.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.vuthong.ecommerce.entities.Image;
import com.vuthong.ecommerce.entities.Product;

/**
 * @author VuThong
 */
@Repository
public interface ProductRepository extends JpaRepository<Product, Integer> {
	final String SELECT_IMAGE_BY_PRODUCT_ID = "Select i From Image i, Product p Where i.product = p AND p.productId =:productId";
	final String SELECT_PRODUCT_BY_PRICE_ASC = "Select p From Product p Order By p.price ASC";
	final String SELECT_PRODUCT_BY_PRICE_DESC = "Select p From Product p Order By p.price DESC";

	final String SELECT_PRODUCT_BY_CATEGORY_ID = "Select p From Category c, Product p Where p.category = c AND c.categoryId =:categoryId";
//	final String SELECT_PRODUCT_BY_CATEGORY_ID_SORT_ASC = "Select p From Category c, Product p Where p.category = c AND c.categoryId =:categoryId";
//	final String SELECT_PRODUCT_BY_CATEGORY_ID_SORT_DESC = "Select p From Category c, Product p Where p.category = c AND c.categoryId =:categoryId";

	// Lấy tất cả các product của 1 category theo categoryId
	@Query(SELECT_PRODUCT_BY_CATEGORY_ID)
	List<Product> findProductByCategoryId(@Param("categoryId") Integer categoryId);

	// Lấy tất cả ảnh của 1 product theo productId
	@Query(SELECT_IMAGE_BY_PRODUCT_ID)
	List<Image> findImageByProductId(@Param("productId") Integer productId);

	// Lấy list Product theo price tăng dần
	@Query(SELECT_PRODUCT_BY_PRICE_ASC)
	List<Product> listProductByPriceASC();

	// Lấy list Product theo price giảm dần
	@Query(SELECT_PRODUCT_BY_PRICE_DESC)
	List<Product> listProductByPriceDESC();
}
