class Post {
  String authorName;
  String authorImageUrl;
  String timeAgo;
  String imageUrl;

  Post({
    required this.authorName,
    required this.authorImageUrl,
    required this.timeAgo,
    required this.imageUrl,
  });
}

final List<Post> posts = [
  Post(
    authorName: 'Sam Martin',
    authorImageUrl: 'assets/images/image1.jpg',
    timeAgo: '5 min',
    imageUrl: 'assets/images/image2.jpg',
  ),
  Post(
    authorName: 'Sam Martin',
    authorImageUrl: 'assets/images/image3.jpg',
    timeAgo: '10 min',
    imageUrl: 'assets/images/image5.jpg',
  ),
];

final List<String> stories = [
  'assets/images/image1.jpg',
  'assets/images/image2.jpg',
  'assets/images/image3.jpg',
  'assets/images/image4.jpg',
  'assets/images/image5.jpg',
  'assets/images/image6.jpg',
  'assets/images/image7.jpg',
  'assets/images/image8.jpg',
];
