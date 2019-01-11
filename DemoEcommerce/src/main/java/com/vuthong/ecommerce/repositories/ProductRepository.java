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
	
	// Lấy tất cả ảnh của 1 product
	final String SELECT_IMAGE_BY_PRODUCT_ID = "Select i From Image i, Product p Where i.product = p AND p.productId =:productId";
	
	// Sắp xếp product theo thứ tự
	final String SELECT_PRODUCT_BY_PRICE_ASC = "Select p From Product p Order By p.price ASC";
	final String SELECT_PRODUCT_BY_PRICE_DESC = "Select p From Product p Order By p.price DESC";
	
	// Lấy product theo khoảng giá
	final String SELECT_PRODUCT_BY_PRICE = "Select p From Product p Where p.price >=:priceLower AND p.price <=:priceUpper";
	
	// Tìm kiếm product theo tên
	final String SELECT_PRODUCT_BY_NAME = "Select p From Product p Where p.productName LIKE CONCAT('%',:productName,'%')";
	
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
	
	// Lấy product theo khoảng giá
	@Query(SELECT_PRODUCT_BY_PRICE)
	List<Product> listProductByPrice(@Param("priceLower") Integer priceLower, @Param("priceUpper") Integer priceUpper);
	
	// Lấy product theo name
	@Query(SELECT_PRODUCT_BY_NAME)
	List<Product> listProductByName(@Param("productName") String productName);
}
