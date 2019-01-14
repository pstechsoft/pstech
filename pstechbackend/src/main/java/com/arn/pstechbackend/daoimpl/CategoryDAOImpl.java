package com.arn.pstechbackend.daoimpl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.arn.pstechbackend.dao.CategoryDAO;
import com.arn.pstechbackend.dto.Category;

@Repository("categoryDAO")
public class CategoryDAOImpl implements CategoryDAO {
	private static List<Category> categories = new ArrayList<>();

	static {
		Category category = new Category();

		// adding first category
		category.setId(1);
		category.setName("Laptop");
		category.setDescription("This is some description for laptop");
		category.setImageURL("${images}/envyx360_4.png");

		categories.add(category);

		// adding second category
		category = new Category();
		category.setId(2);
		category.setName("Desktop");
		category.setDescription("This is some description for desktop");
		category.setImageURL("${images}/envyx360_2.png");

		categories.add(category);

		// adding third category
		category = new Category();
		category.setId(3);
		category.setName("Antivirus");
		category.setDescription("This is some description for antivirus");
		category.setImageURL("${images}/K7 Total 1User 1Year.jpg");

		categories.add(category);
	}

	@Override
	public List<Category> list() {
		// TODO Auto-generated method stub
		return categories;
	}

	@Override
	public Category get(int id) {
		// enhance for loop
		for (Category category : categories) {
			if (category.getId() == id)
				return category;
		}
		return null;
	}

}
