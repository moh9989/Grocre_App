import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grocre_app/core/resourses/color_manger.dart';
import 'package:grocre_app/core/resourses/image_name_manger.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:grocre_app/core/resourses/size_app_manger.dart';
import 'package:grocre_app/core/resourses/text_manger.dart';
import 'package:grocre_app/feature/home_screen/Widget/custom_item.dart';
import 'package:grocre_app/model/catogery_model.dart';
import 'package:grocre_app/model/item_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> bannerItem = [
    ImageName.banner1,
    ImageName.banner2,
    ImageName.banner3,
  ];
  List<ItemModel> itemPro = [
    ItemModel(
      image: ImageName.banana,
      name: TextManger.banana,
      price: "3.99",
      rate: "4.8",
    ),
    ItemModel(
      image: ImageName.pepper,
      name: TextManger.pepper,
      price: "2.99",
      rate: "4.8",
    ),
    ItemModel(
      image: ImageName.orange,
      name: TextManger.orange,
      price: "1.55",
      rate: "5.5",
    ),
    ItemModel(
      image: ImageName.banana,
      name: TextManger.banana,
      price: "3.99",
      rate: "4.8",
    ),
    ItemModel(
      image: ImageName.pepper,
      name: TextManger.pepper,
      price: "2.99",
      rate: "4.8",
    ),
    ItemModel(
      image: ImageName.orange,
      name: TextManger.orange,
      price: "1.55",
      rate: "5.5",
    ),
  ];
  List<CatogeryModel> catogrey = [
    CatogeryModel(name: TextManger.fruits, image: ImageName.fruits),
    CatogeryModel(name: TextManger.milkEgg, image: ImageName.milkEgg),
    CatogeryModel(name: TextManger.beverages, image: ImageName.beverages),
    CatogeryModel(name: TextManger.laundry, image: ImageName.laundry),
    CatogeryModel(name: TextManger.vegetables, image: ImageName.vegetables),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appbar
      appBar: AppBar(
        leading: SizedBox.shrink(),
        leadingWidth: 0,
        title: Row(
          children: [
            SvgPicture.asset(ImageName.bikeIcon),
            SizedBox(width: WidthSize.width10),
            Text(
              TextManger.titleAppBar,
              style: TextStyle(
                fontSize: FontSize.fontSize19,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(width: WidthSize.width16),
            SvgPicture.asset(
              ImageName.arrowDownIcon,
              width: WidthSize.width6,
              height: HeightSize.height12,
            ),
            Spacer(),
            SvgPicture.asset(
              ImageName.basketIcon,
              width: WidthSize.width18_5,
              height: HeightSize.height18_5,
            ),
          ],
        ),
      ),
      //CarouselSliderList
      body: ListView(
        children: [
          //CarouselSliderList
          CarouselSlider.builder(
            itemCount: bannerItem.length,
            itemBuilder:
                (BuildContext context, int itemIndex, int pageViewIndex) =>
                    Image.asset(bannerItem[itemIndex]),
            options: CarouselOptions(
              height: HeightSize.height222,
              // aspectRatio: 16 / 9,
              viewportFraction: .8,
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: true,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 5),
              autoPlayAnimationDuration: Duration(seconds: 3),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: true,
              enlargeFactor: .3,
            ),
          ),
          //catogoryList
          SizedBox(
            height: HeightSize.height105,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  children: [
                    Container(
                      width: WidthSize.width70,
                      height: HeightSize.height70,
                      decoration: BoxDecoration(
                        color: ColorManger.grey100Color,
                        shape: BoxShape.circle,
                        // borderRadius: BorderRadius.circular(50),
                      ),
                      child: Image.asset(
                        catogrey[index].image,
                        width: WidthSize.width43,
                        height: HeightSize.height43,
                        //fit: BoxFit.fill,
                      ),
                    ),
                    SizedBox(height: HeightSize.height12),
                    SizedBox(
                      width: WidthSize.width70,
                      child: Text(
                        catogrey[index].name,
                        style: TextStyle(
                          fontSize: FontSize.fontSize12,
                          fontWeight: FontWeight.bold,
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        //overflow: TextOverflow.ellipsis,
                        // softWrap: false,
                      ),
                    ),
                  ],
                ),
              ),
              separatorBuilder: (context, index) =>
                  SizedBox(width: WidthSize.width10),
              itemCount: catogrey.length,
            ),
          ),
          SizedBox(height: HeightSize.height20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  TextManger.fruits,
                  style: TextStyle(
                    fontSize: FontSize.fontSize16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  TextManger.seeAll,
                  style: TextStyle(
                    color: ColorManger.primaryColor,
                    fontSize: FontSize.fontSize14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: HeightSize.height20),
          //item
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(itemPro.length, (index) {
                final item = itemPro[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: CustomItem(
                    name: item.name,
                    image: item.image,
                    price: item.price,
                    rate: item.rate,
                  ),
                );
              }),
            ),
          ),
          SizedBox(height: HeightSize.height20),
        ],
      ),
    );
  }
}
