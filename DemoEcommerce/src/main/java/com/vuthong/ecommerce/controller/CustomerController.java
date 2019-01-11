/**
 * CustomerController.java
 * Jan 9, 2019
 */
package com.vuthong.ecommerce.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.validation.Valid;

import org.apache.catalina.servlet4preview.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.vuthong.ecommerce.services.CategoryService;
import com.vuthong.ecommerce.services.ImageService;
import com.vuthong.ecommerce.services.ProductService;
import com.vuthong.ecommerce.vo.CategoryVO;
import com.vuthong.ecommerce.vo.ImageVO;
import com.vuthong.ecommerce.vo.ProductVO;
import com.vuthong.ecommerce.vo.Sort;

/**
 * @author VuThong
 */
@Controller
public class CustomerController {

	@Autowired
	private ProductService productService;

	@Autowired
	private ImageService imageService;

	@Autowired
	private CategoryService categoryService;

	@RequestMapping("/product")
	public ModelAndView listProduct() {
		ModelAndView mav = new ModelAndView("product");
		List<ProductVO> listProduct = productService.getAllProduct();
		List<ProductVO> showProduct = new ArrayList<>();
		for (ProductVO vo : listProduct) {
			vo.setImage(productService.findImageByProductId(vo).get(0).getImage());
			showProduct.add(vo);
		}
		mav.addObject("allCategory", categoryService.getAllCategory());
		mav.addObject("showProduct", showProduct);
		
		Sort sort = new Sort();
		mav.addObject("sort", sort);
		return mav;
	}

	@RequestMapping(value = "/{id}")
	public ModelAndView listProductByCategory(@PathVariable(value = "id") Integer categoryId) {
		ModelAndView mav = new ModelAndView("product");
		List<ProductVO> listProductVo = productService.findProductByCategoryId(categoryId);
		List<ProductVO> showProduct = new ArrayList<>();
		for (ProductVO vo : listProductVo) {
			vo.setImage(productService.findImageByProductId(vo).get(0).getImage());
			showProduct.add(vo);
		}
		mav.addObject("allCategory", categoryService.getAllCategory());
		mav.addObject("showProduct", showProduct);
		Sort sort = new Sort();
		mav.addObject("sort", sort);
		return mav;
	}

	// Sắp xếp product theo giá
//	@RequestMapping(value="/sort", method = RequestMethod.POST)
//	public ModelAndView listProductByPrice(@RequestParam(required = false, name = "sorting") String sorting) {
//
//		// String sorting = request.getParameter("sorting");
//		System.out.println(sorting);
//		Integer order = 0;
//		if ("0".equals(sorting)) {
//			return new ModelAndView("redirect:/product");
//		} else if ("1".equals(sorting)) {
//			order = 1;
//		} else if ("2".equals(sorting)) {
//			order = -1;
//		}
//
//		ModelAndView mav = new ModelAndView("product");
//		List<ProductVO> listProduct = productService.listProductByPrice(order);
//		List<ProductVO> showProduct = new ArrayList<>();
//		for (ProductVO vo : listProduct) {
//			vo.setImage(productService.findImageByProductId(vo).get(0).getImage());
//			showProduct.add(vo);
//		}
//		mav.addObject("allCategory", categoryService.getAllCategory());
//		mav.addObject("showProduct", showProduct);
//		return mav;
//	}
	
	@RequestMapping(value="/sort", method = RequestMethod.POST)
	public ModelAndView listProductByPrice(@ModelAttribute("sort") Sort sort) {
		
		Integer order = sort.getSortId();
		if (order == 0) {
			return new ModelAndView("redirect:/product");
		} else if (order == 1) {
			order = 1;
		} else if (order == 2) {
			order = -1;
		}

		ModelAndView mav = new ModelAndView("product");
		List<ProductVO> listProduct = productService.listProductByPrice(order);
		List<ProductVO> showProduct = new ArrayList<>();
		for (ProductVO vo : listProduct) {
			vo.setImage(productService.findImageByProductId(vo).get(0).getImage());
			showProduct.add(vo);
		}
		mav.addObject("allCategory", categoryService.getAllCategory());
		mav.addObject("showProduct", showProduct);
		mav.addObject("sort", sort);
		return mav;
	}

	// Get List Sort
	@ModelAttribute("sortList")
	public Map<Integer, String> getSortList() {
		Map<Integer, String> sortList = new HashMap<Integer, String>();

		sortList.put(0, "Default Sorting");
		sortList.put(1, "Price: low to high");
		sortList.put(2, "Price: high to low");

		return sortList;
	}
}
