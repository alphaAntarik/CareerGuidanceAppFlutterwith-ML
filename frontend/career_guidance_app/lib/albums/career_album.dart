class CareerAlbum {
  final String placement;

  CareerAlbum({this.placement});

  factory CareerAlbum.fromJson(Map<String, dynamic> json) {
    return CareerAlbum(
      placement: json['placement'],
    );
  }
}
