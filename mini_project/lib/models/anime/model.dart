class anime {
  String? author;
  String? description;
  String? genres;
  String? image;
  String? name;
  String? view;

  anime(
      {this.author,
      this.description,
      this.genres,
      this.image,
      this.name,
      this.view});

  anime.fromJson(Map<String, dynamic> json) {
    author = json['author'];
    description = json['description'];
    genres = json['genres'];
    image = json['image'];
    name = json['name'];
    view = json['view'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['author'] = this.author;
    data['description'] = this.description;
    data['genres'] = this.genres;
    data['image'] = this.image;
    data['name'] = this.name;
    data['view'] = this.view;
    return data;
  }
}