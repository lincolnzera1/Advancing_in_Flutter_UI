import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:getx_redemption/src/config/custom_colors.dart';
import 'package:getx_redemption/src/pages/home/components/categoryTyle.dart';
import "package:getx_redemption/src/config/app_data.dart" as AppData;

class HomeTab extends StatefulWidget {
  HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {

  String selectedCategory = "Frutas";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Appbar
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text.rich(TextSpan(style: TextStyle(fontSize: 30), children: [
          TextSpan(
              text: "Lit",
              style: TextStyle(color: CustomColors.customSwatchColor)),
          TextSpan(
              text: "Fruit",
              style: TextStyle(color: CustomColors.customContrastColor))
        ])),
        actions: [
          Padding(
            padding: const EdgeInsets.only(
              top: 10,
              right: 15,
            ),
            child: GestureDetector(
              child: Badge(
                badgeColor: CustomColors.customContrastColor,
                badgeContent: const Text(
                  "2",
                  style: TextStyle(fontSize: 12, color: Colors.white),
                ),
                child: Icon(
                  Icons.shopping_cart,
                  color: CustomColors.customSwatchColor,
                ),
              ),
            ),
          )
        ],
      ),

      // Body
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
            child: TextFormField(
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: "Pesquise aqui...",
                  hintStyle: const TextStyle(color: Colors.grey, fontSize: 14),
                  prefixIcon: Icon(
                    Icons.search,
                    color: CustomColors.customContrastColor,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(60),
                      borderSide:
                          const BorderSide(width: 0, style: BorderStyle.none))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: SizedBox(
              height: 40,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return CategoryTyle(
                      category: AppData.categories[index],
                      isSelected: AppData.categories[index] == selectedCategory,
                      onPressed: (){
                        setState(() {
                          selectedCategory = AppData.categories[index];
                        });
                      },
                    );
                  },
                  separatorBuilder: (context, index) => const SizedBox(
                        width: 10,
                      ),
                  itemCount: AppData.categories.length),
            ),
          )
        ],
      ),
    );
  }
}
