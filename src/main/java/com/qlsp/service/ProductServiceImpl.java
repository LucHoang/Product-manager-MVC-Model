package com.qlsp.service;

import com.qlsp.model.Product;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ProductServiceImpl implements ProductService{
    private static Map<Integer, Product> products;

    static {
        products = new HashMap<>();
        products.put(1, new Product(1, "Banh my", 10000, 10, "pate", "1.png", 1));
        products.put(2, new Product(2, "Banh bao", 9000, 133, "nhan thit", "2.png", 1));
        products.put(3, new Product(3, "Banh kem", 30000, 90, "huong dau", "3.png", 4));
        products.put(4, new Product(4, "Banh u", 15000, 18, "uuuuu", "4.png", 2));
        products.put(5, new Product(5, "Banh muot", 12000, 60, "mmmmmm", "5.png", 3));
    }

    @Override
    public List<Product> findAll() {
        return new ArrayList<>(products.values());
    }

    @Override
    public void save(Product product) {
        products.put(product.getProductId(), product);
    }

    @Override
    public Product findById(int id) {
        return products.get(id);
    }

    @Override
    public void update(int id, Product product) {
        products.put(id, product);
    }

    @Override
    public void remove(int id) {
        products.remove(id);
    }

    @Override
    public Product findByName(String name) {
        return products.get(name);
    }
}
