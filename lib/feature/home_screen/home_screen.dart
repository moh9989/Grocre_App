import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grocre_app/core/resourses/color_manger.dart';
import 'package:grocre_app/core/resourses/content.dart';
import 'package:grocre_app/core/resourses/image_name_manger.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:grocre_app/core/resourses/size_app_manger.dart';
import 'package:grocre_app/core/resourses/text_manger.dart';
import 'package:grocre_app/feature/home_screen/Widget/cistom_catogry_list.dart';
import 'package:grocre_app/feature/home_screen/Widget/custom%20_row_details.dart';
import 'package:grocre_app/feature/home_screen/Widget/custom_davinder.dart';
import 'package:grocre_app/feature/home_screen/Widget/custom_item.dart';
import 'package:grocre_app/feature/home_screen/Widget/custom_selecte_item.dart';
import 'package:grocre_app/model/item_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List basketList = [];

  void addAndRemove(ItemModel itemModel) {
    setState(() {
      if (basketList.contains(itemModel)) {
        basketList.remove(itemModel);
      } else {
        basketList.add(itemModel);
      }
    });
  }

  bool isSelected(ItemModel itemModel) => basketList.contains(itemModel);
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
            itemCount: Content.bannerItem.length,
            itemBuilder:
                (BuildContext context, int itemIndex, int pageViewIndex) =>
                    Image.asset(Content.bannerItem[itemIndex]),
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
                child: CistomCatogryList(
                  image: Content.catogrey[index].image,
                  name: Content.catogrey[index].name,
                ),
              ),
              separatorBuilder: (context, index) =>
                  SizedBox(width: WidthSize.width10),
              itemCount: Content.catogrey.length,
            ),
          ),
          SizedBox(height: HeightSize.height20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: CustomRowDetails(),
          ),
          SizedBox(height: HeightSize.height20),
          //item
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(Content.itemPro.length, (index) {
                final item = Content.itemPro[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: CustomItem(
                    ontap: () {},
                   
                    icon: IconButton(
                      onPressed: () {
                     
                      },
                      icon: Icon(Icons.add),
                    ),
                    name: item.name,
                    image: item.image,
                    price: item.price,
                    rate: item.rate,
                  ),
                );
              }),
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Container(
              decoration: BoxDecoration(
                color: ColorManger.primaryColor,
                borderRadius: BorderRadius.circular(15),
              ),
              width: double.infinity,
              height: HeightSize.height105,
              child: Row(
                children: [
                  SizedBox(
                    width: WidthSize.width100,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) => CustomSelecteItem(
                          image: Content.itemPro[index].image,
                        ),
                        separatorBuilder: (context, index) =>
                            SizedBox(width: WidthSize.width6),
                        itemCount: 5,
                      ),
                    ),
                  ),
                  Spacer(),
                 CustomDavinder(),
                  SizedBox(width: WidthSize.width6),
                  Text("View Basket"),
                  SizedBox(width: WidthSize.width6),

                  SvgPicture.asset(
                    ImageName.basketIcon,
                    width: WidthSize.width18_5,
                    height: HeightSize.height18_5,
                    color: Colors.white,
                  ),
                  Spacer(),
                ],
              ),
            ),
          ),

        
          SizedBox(height: HeightSize.height20),
        ],
      ),

    );
  }
}






                              