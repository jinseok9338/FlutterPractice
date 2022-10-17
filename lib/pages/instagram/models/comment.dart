class Comment {
  String authorName;
  String authorImageUrl;
  String text;

  Comment({
    required this.authorName,
    required this.authorImageUrl,
    required this.text,
  });
}

final List<Comment> comments = [
  Comment(
    authorName: 'Angel',
    authorImageUrl: 'assets/images/image3.jpg',
    text: 'Loving this photo!!',
  ),
  Comment(
    authorName: 'Charlie',
    authorImageUrl: 'assets/images/image8.jpg',
    text: 'One of the best photos of you...',
  ),
  Comment(
    authorName: 'Angelina Martin',
    authorImageUrl: 'assets/images/image9.jpg',
    text: 'Can\'t wait for you to post more!',
  ),
  Comment(
    authorName: 'Jax',
    authorImageUrl: 'assets/images/image10.jpg',
    text: 'Nice job',
  ),
  Comment(
    authorName: 'Sam Martin',
    authorImageUrl: 'assets/images/image2.jpg',
    text: 'Thanks everyone :)',
  ),
];
