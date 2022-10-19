import 'FurnitureUI/main.dart';
import 'coffeeUI/main.dart';
import 'instagram/main_page.dart';

class Page {
  String title;
  dynamic page;

  Page({
    required this.title,
    required this.page,
  });
}

final List<Page> pages = [
  Page(page: FeedScreen(), title: "Instagram"),
  Page(page: CoffeeUIMain(), title: "CoffeeUI"),
  Page(page: FurnitureUI(), title: "FurnitureUI")
];
