class Anime {
  final String name;
  final double score;
  final int number;
  final String poster;
  Anime(
      {required this.name,
      required this.number,
      required this.poster,
      required this.score});
}

List<Anime> trendsData = [
  Anime(
      name: 'One Piece ',
      number: 1,
      poster: 'assets/images/one_piece.jpg',
      score: 10),
  Anime(
      name: 'Naruto Shippuden',
      number: 2,
      poster: 'assets/images/naruto_shippuden.jpg',
      score: 8),
  Anime(
      name: 'Death Note',
      number: 3,
      poster: 'assets/images/deathnote.jpg',
      score: 8),
  Anime(
      name: 'Erased', number: 4, poster: 'assets/images/erased.jpg', score: 9),
  Anime(
      name: 'Attack on Titan',
      number: 5,
      poster: 'assets/images/aot.jpg',
      score: 9),
];

