import 'package:catalog_app/data/dummy_data.dart';
import 'package:catalog_app/models/item_model.dart';
import 'package:catalog_app/utils/constants.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndexOfCategory = 0;
  int _selectedIndexOfFeatured = 0;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          topCategoriesWidget(width, height),
          const SizedBox(height: 10),
          middleCategoriesWidget(width, height),
          const SizedBox(height: 5),
        ],
      ),
    ));
  }

  topCategoriesWidget(width, height) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          width: width,
          height: height / 18,
          child: ListView.builder(
              itemCount: categories.length,
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedIndexOfCategory = index;
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      categories[index],
                      style: TextStyle(
                          fontSize: _selectedIndexOfCategory == index ? 21 : 18,
                          color: _selectedIndexOfCategory == index
                              ? AppConstantsColor.darkTextColor
                              : AppConstantsColor.unSelectedTextColor,
                          fontWeight: _selectedIndexOfCategory == index
                              ? FontWeight.bold
                              : FontWeight.w400),
                    ),
                  ),
                );
              }),
        )
      ],
    );
  }

  middleCategoriesWidget(width, height) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          width: width / 16,
          height: height / 2.7,
          child: RotatedBox(
            quarterTurns: -1,
            child: ListView.builder(
                physics: BouncingScrollPhysics(),
                itemCount: featured.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        _selectedIndexOfFeatured = index;
                      });
                    },
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: Text(
                        featured.elementAt(index),
                        style: TextStyle(
                            fontSize:
                                _selectedIndexOfFeatured == index ? 19 : 17,
                            color: _selectedIndexOfFeatured == index
                                ? AppConstantsColor.darkTextColor
                                : AppConstantsColor.unSelectedTextColor,
                            fontWeight: _selectedIndexOfFeatured == index
                                ? FontWeight.bold
                                : FontWeight.w400),
                      ),
                    ),
                  );
                }),
          ),
        ),
        Container(
          width: width / 1.2,
          height: height / 2.4,
          child: ListView.builder(
              itemCount: availableItems.length,
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                ItemModel model = availableItems[index];

                return GestureDetector(
                  child: Container(
                    width: width / 1.5,
                    child: Stack(
                      children: [
                        Container(
                          width: width / 1.81,
                          decoration: BoxDecoration(
                              color: model.modelColor,
                              borderRadius: BorderRadius.circular(30)),
                        ),
                        Positioned(
                            left: 10,
                            child: Row(
                              children: [
                                Text(
                                  model.name,
                                ),
                                SizedBox(
                                  width: 120,
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.favorite_border,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            )),
                        Positioned(top: 45, left: 10, child: Text(model.model)),
                        Positioned(
                            top: 80,
                            left: 10,
                            child: Text("\$${model.price.toStringAsFixed(2)}")),
                        Positioned(
                            left: 20,
                            top: 60,
                            child: Hero(
                                tag: model.imgAddress,
                                child: Container(
                                  width: 250,
                                  height: 230,
                                  child: Image(
                                    image: AssetImage(model.imgAddress),
                                  ),
                                ))),
                        Positioned(
                          bottom: 10,
                          left: 170,
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.arrow_circle_right),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              }),
        )
      ],
    );
  }
}
