import 'instagram/main_page.dart';

class Page {
  String title;
  dynamic page;

  Page({
    required this.title,
    required this.page,
  });
}

final List<Page> pages = [Page(page: FeedScreen(), title: "Instagram")];
