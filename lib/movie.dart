

class Movie{
  String name;
  String type;
  double ratting;
  String image;

  Movie({
    required this.name,
    required this.type,
    required this.ratting,
    required this.image,
});
}

final movieList = [
  Movie(name: 'AVATER', type: 'Si-Fi', ratting: 8.0, image: 'assets/images/avt.jpg'),
  Movie(name: 'DRACULA', type: 'Horror', ratting: 6.6, image: 'assets/images/drac.jpg'),
  Movie(name: 'FAST & FURIOUS', type: 'Action', ratting: 7.9, image: 'assets/images/fnf.jpg'),
  Movie(name: 'Justice League', type: 'Si-Fi', ratting: 5.9, image: 'assets/images/movie6.png'),
  Movie(name: 'CAPTAIN AMERICA', type: 'Si-Fi', ratting: 6.3, image: 'assets/images/movie7.png'),
  Movie(name: 'IRON MAN', type: 'Si-Fi', ratting: 5.8, image: 'assets/images/movie8.jpg'),
  Movie(name: 'SPIDER MAN', type: 'Si-Fi', ratting: 5.8, image: 'assets/images/movie9.jpeg'),
  Movie(name: 'THOR', type: 'Si-Fi', ratting: 5.8, image: 'assets/images/movie10.jpg'),
];