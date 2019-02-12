/**
 * ProductService.java
 * Dec 11, 2018
 */
package com.vuthong.ecommerce.services;

import java.util.List;

import com.vuthong.ecommerce.vo.ImageVO;
import com.vuthong.ecommerce.vo.ProductVO;

/**
 * @author VuThong
 */
public interface ProductService {
	public List<ProductVO> getAllProduct();

	public boolean createProduct(ProductVO vo);

	public boolean editProduct(ProductVO vo);

	public boolean deleteProduct(Integer productId);

	public ProductVO findProductById(Integer productId);

	// Lấy tất cả product của 1 Category qua categoryId
	public List<ProductVO> findProductByCategoryId(Integer categoryId);

	// Tìm ảnh qua productID
	public List<ImageVO> findImageByProductId(Integer productId);

	// Lấy listProduct theo thứ tự price
	public List<ProductVO> listProductByPrice(Integer order);
	
	// Lấy listProduct theo khoảng price
	public List<ProductVO> listProductByPriceRange(Integer priceLower, Integer priceUpper);
	
	// Lấy product theo name
	public List<ProductVO> listProductByName(String productName);
	
	// Tính tổng số product
	public int countProduct();
	
	// Phân trang
	public List<ProductVO> listProductByPageNumber(int pageNumber, int pageSize);
}
