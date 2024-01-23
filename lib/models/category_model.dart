import 'package:flutter/material.dart';

class CategoryModel {
    String name;
    Color backgroundColor;
    String icon;

    // wtf is this
    CategoryModel({
        required this.name,
        required this.backgroundColor,
        required this.icon
    });

    static List<CategoryModel> getCategories() {
        List<CategoryModel> categories = [];

        categories.add(
            CategoryModel(name: "Salad", backgroundColor: const Color(0xff92A3FD), icon: "assets/icons/salad.svg")
        );

        categories.add(
            CategoryModel(name: "Cake", backgroundColor: const Color(0xffC58BF2), icon: "assets/icons/cake.svg")
        );

        categories.add(
            CategoryModel(name: "Pie", backgroundColor: const Color(0xff92A3FD), icon: "assets/icons/pie.svg")
        );

        categories.add(
            CategoryModel(name: "Smoothies", backgroundColor: const Color(0xffC58BF2), icon: "assets/icons/smoothies.svg")
        );

        categories.add(
            CategoryModel(name: "Dessert", backgroundColor: const Color(0xff92A3FD), icon: "assets/icons/dessert.svg")
        );

        return categories;
    }
}