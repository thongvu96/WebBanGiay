/**
 * ProductServiceImpl.java
 * Dec 13, 2018
 */
package com.vuthong.ecommerce.services;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.vuthong.ecommerce.entities.Category;
import com.vuthong.ecommerce.entities.Image;
import com.vuthong.ecommerce.entities.Product;
import com.vuthong.ecommerce.repositories.CategoryRepository;
import com.vuthong.ecommerce.repositories.ProductRepository;
import com.vuthong.ecommerce.vo.ImageVO;
import com.vuthong.ecommerce.vo.ProductVO;

/**
 * @author VuThong
 */
@Service
public class ProductServiceImpl implements ProductService {

	@Autowired
	private ProductRepository productRepository;
	
	@Autowired
	private CategoryRepository categoryRepository;
	/* (non-Javadoc)
	 * @see com.vuthong.ecommerce.services.ProductService#getAllProduct()
	 */
	@Override
	public List<ProductVO> getAllProduct() {
		// TODO Auto-generated method stub
		List<ProductVO> productsVo = new ArrayList<ProductVO>();
		List<Product> products = productRepository.findAll();
		for (Product product : products) {
			ProductVO vo = new ProductVO();
			vo.setProductId(product.getProductId());
			vo.setProductName(product.getProductName());
			vo.setPrice(product.getPrice());
			vo.setDescription(product.getDescription());
//			vo.setImage(product.getImages().get(0).getImage());
			Category category = product.getCategory();
			vo.setCategoryName(category.getCategoryName());
			productsVo.add(vo);
		}
		return productsVo;
	}

	/* (non-Javadoc)
	 * @see com.vuthong.ecommerce.services.ProductService#createProduct(com.vuthong.ecommerce.vo.ProductVO)
	 */
	@Override
	public boolean createProduct(ProductVO vo) {
		// TODO Auto-generated method stub
		try {
			Category category = categoryRepository.getOne(vo.getCategory());
			if (category != null) {
				Product product = new Product();
				product.setProductName(vo.getProductName());
				product.setCategory(category);
				product.setDescription(vo.getDescription());
				product.setPrice(vo.getPrice());
				productRepository.save(product);
				return true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	/* (non-Javadoc)
	 * @see com.vuthong.ecommerce.services.ProductService#editProduct(com.vuthong.ecommerce.vo.ProductVO)
	 */
	@Override
	public boolean editProduct(ProductVO vo) {
		// TODO Auto-generated method stub
		try {
			Product product = productRepository.getOne(vo.getProductId());
			Category category = categoryRepository.getOne(vo.getCategory());
			if (category != null) {
				product.setProductName(vo.getProductName());
				product.setCategory(category);
				product.setDescription(vo.getDescription());
				product.setPrice(vo.getPrice());
				productRepository.save(product);
				return true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	/* (non-Javadoc)
	 * @see com.vuthong.ecommerce.services.ProductService#deleteProduct(java.lang.Integer)
	 */
	@Override
	public boolean deleteProduct(Integer productId) {
		// TODO Auto-generated method stub
		try {
			productRepository.deleteById(productId);
			return true;
		} catch (Exception e) {
			// TODO: handle exception
			e.getMessage();
		}
		return false;
	}

	/* (non-Javadoc)
	 * @see com.vuthong.ecommerce.services.ProductService#findProductById(java.lang.Integer)
	 */
	@Override
	public ProductVO findProductById(Integer productId) {
		// TODO Auto-generated method stub
		Product product = productRepository.getOne(productId);
		ProductVO vo = new ProductVO();
		vo.setProductId(product.getProductId());
		vo.setProductName(product.getProductName());
		vo.setCategory(product.getCategory().getCategoryId());
		vo.setDescription(product.getDescription());
		vo.setPrice(product.getPrice());
		
		return vo;
	}

	/* (non-Javadoc)
	 * @see com.vuthong.ecommerce.services.CategoryService#findProductByCategoryId(com.vuthong.ecommerce.vo.CategoryVO)
	 */
	@Override
	public List<ProductVO> findProductByCategoryId(Integer categoryId) {
		// TODO Auto-generated method stub
		List<Product> listProduct = productRepository.findProductByCategoryId(categoryId);
		System.out.println(listProduct.size());
		List<ProductVO> listProductVo = new ArrayList<>();
		for (Product product : listProduct) {
			ProductVO vo = new ProductVO();
			vo.setProductId(product.getProductId());
			vo.setPrice(product.getPrice());
			vo.setProductName(product.getProductName());
			vo.setDescription(product.getDescription());
			Category category = product.getCategory();
			vo.setCategoryName(category.getCategoryName());
			listProductVo.add(vo);
		}
		return listProductVo;
	}
	
	/* (non-Javadoc)
	 * @see com.vuthong.ecommerce.services.ProductService#findImageByProductId(java.lang.Integer)
	 */
	@Override
	public List<ImageVO> findImageByProductId(ProductVO productVo) {
		// TODO Auto-generated method stub
		
		List<Image> listImage = productRepository.findImageByProductId(productVo.getProductId());
		List<ImageVO> listImageVo = new ArrayList<>();
		for (Image image : listImage) {
			ImageVO vo = new ImageVO();
			vo.setImage(image.getImage());
			vo.setImageId(image.getImageId());
			listImageVo.add(vo);
		}
		return listImageVo;
	}

	/* (non-Javadoc)
	 * @see com.vuthong.ecommerce.services.ProductService#listProductByPrice(java.lang.String)
	 */
	@Override
	public List<ProductVO> listProductByPrice(Integer order) {
		// TODO Auto-generated method stub
		List<ProductVO> productsVo = new ArrayList<ProductVO>();
		List<Product> products = new ArrayList<>();
		if (order == 1) {
			products = productRepository.listProductByPriceASC();
		} else if (order == -1){
			products = productRepository.listProductByPriceDESC();
		}
		for (Product product : products) {
			ProductVO vo = new ProductVO();
			vo.setProductId(product.getProductId());
			vo.setProductName(product.getProductName());
			vo.setPrice(product.getPrice());
			vo.setDescription(product.getDescription());
//			vo.setImage(product.getImages().get(0).getImage());
			Category category = product.getCategory();
			vo.setCategoryName(category.getCategoryName());
			productsVo.add(vo);
		}
		return productsVo;
	}

	/* (non-Javadoc)
	 * @see com.vuthong.ecommerce.services.ProductService#listProductByPriceRange(java.lang.Integer, java.lang.Integer)
	 */
	@Override
	public List<ProductVO> listProductByPriceRange(Integer priceLower, Integer priceUpper) {
		// TODO Auto-generated method stub
		List<ProductVO> productsVo = new ArrayList<ProductVO>();
		List<Product> products = productRepository.listProductByPrice(priceLower, priceUpper);
		for (Product product : products) {
			ProductVO vo = new ProductVO();
			vo.setProductId(product.getProductId());
			vo.setProductName(product.getProductName());
			vo.setPrice(product.getPrice());
			vo.setDescription(product.getDescription());
//			vo.setImage(product.getImages().get(0).getImage());
			Category category = product.getCategory();
			vo.setCategoryName(category.getCategoryName());
			productsVo.add(vo);
		}
		return productsVo;
	}

	/* (non-Javadoc)
	 * @see com.vuthong.ecommerce.services.ProductService#listProductByName(java.lang.String)
	 */
	@Override
	public List<ProductVO> listProductByName(String productName) {
		// TODO Auto-generated method stub
		List<ProductVO> productsVo = new ArrayList<ProductVO>();
		List<Product> products = productRepository.listProductByName(productName);
		for (Product product : products) {
			ProductVO vo = new ProductVO();
			vo.setProductId(product.getProductId());
			vo.setProductName(product.getProductName());
			vo.setPrice(product.getPrice());
			vo.setDescription(product.getDescription());
//			vo.setImage(product.getImages().get(0).getImage());
			Category category = product.getCategory();
			vo.setCategoryName(category.getCategoryName());
			productsVo.add(vo);
		}
		return productsVo;
	}

	/* (non-Javadoc)
	 * @see com.vuthong.ecommerce.services.ProductService#countProduct()
	 */
	@Override
	public int countProduct() {
		// TODO Auto-generated method stub
		return productRepository.countProduct();
	}

}
