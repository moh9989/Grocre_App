import 'package:grocre_app/core/resourses/image_name_manger.dart';
import 'package:grocre_app/core/resourses/text_manger.dart';
import 'package:grocre_app/model/catogery_model.dart';
import 'package:grocre_app/model/item_model.dart';

class Content {
 static  List<String> bannerItem = [
    ImageName.banner1,
    ImageName.banner2,
    ImageName.banner3,
  ];
 static List<ItemModel> itemPro = [
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
static List<CatogeryModel> catogrey = [
    CatogeryModel(name: TextManger.fruits, image: ImageName.fruits),
    CatogeryModel(name: TextManger.milkEgg, image: ImageName.milkEgg),
    CatogeryModel(name: TextManger.beverages, image: ImageName.beverages),
    CatogeryModel(name: TextManger.laundry, image: ImageName.laundry),
    CatogeryModel(name: TextManger.vegetables, image: ImageName.vegetables),
  ];
  
}