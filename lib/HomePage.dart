import 'package:flutter/material.dart';

class Movie {
  final String title;
  final String imageUrl;
  final double rating;
  final int releaseYear;

  Movie({
    required this.title,
    required this.imageUrl,
    required this.rating,
    required this.releaseYear,
  });
}

class MovieCatalog extends StatelessWidget {
  final List<Movie> movies = [
    Movie(
      title: "Spider-Man: Across the Spider-Verse",
      imageUrl: "https://m.media-amazon.com/images/M/MV5BMzI0NmVkMjEtYmY4MS00ZDMxLTlkZmEtMzU4MDQxYTMzMjU2XkEyXkFqcGdeQXVyMzQ0MzA0NTM@._V1_FMjpg_UX1000_.jpg",
      rating: 4.5,
      releaseYear: 2021,
    ),
    Movie(
      title: "Coco",
      imageUrl: "https://lumiere-a.akamaihd.net/v1/images/p_coco_19736_fd5fa537.jpeg",
      rating: 4.8,
      releaseYear: 2022,
    ),
    Movie(
      title: "Raya and The Last Dragon",
      imageUrl: "https://images.soco.id/724-Raya_&_The_Last_Dragon_Premier_&_Theater_Poster.jpg.jpeg",
      rating: 3.9,
      releaseYear: 2022,
    ),
    Movie(
      title: "Frozen",
      imageUrl: "https://lumiere-a.akamaihd.net/v1/images/p_frozen_18373_3131259c.jpeg?region=0%2C0%2C540%2C810",
      rating: 4.6,
      releaseYear: 2022,
    ),
    Movie(
      title: "Despicable Me",
      imageUrl: "https://m.media-amazon.com/images/M/MV5BMTY3NjY0MTQ0Nl5BMl5BanBnXkFtZTcwMzQ2MTc0Mw@@._V1_.jpg",
      rating: 4.7,
      releaseYear: 2022,
    ),
    Movie(
      title: "Finding Nemo",
      imageUrl: "https://lumiere-a.akamaihd.net/v1/images/p_findingnemo_19752_05271d3f.jpeg?region=0%2C0%2C540%2C810",
      rating: 4.8,
      releaseYear: 2022,
    ),
    Movie(
      title: "Finding Dori",
      imageUrl: "https://lumiere-a.akamaihd.net/v1/images/p_findingdory_19754_4d6d2025.jpeg?region=0%2C0%2C540%2C810",
      rating: 4,
      releaseYear: 2022,
    ),
    Movie(
      title: "Pinocchio",
      imageUrl: "https://lumiere-a.akamaihd.net/v1/images/p_pinocchio_19879_d6304938.jpeg?region=0%2C0%2C540%2C810",
      rating: 5,
      releaseYear: 2022,
    ),
    Movie(
      title: "Encanto",
      imageUrl: "https://images-na.ssl-images-amazon.com/images/S/pv-target-images/94d5552678a9ab653531ea156360ad1798d6c573d4068e1fb492f4e82bc9d668._RI_TTW_.jpg",
      rating: 5,
      releaseYear: 2022,
    ),
    Movie(
      title: "Luca",
      imageUrl: "https://lumiere-a.akamaihd.net/v1/images/id_88b38ce1.jpeg",
      rating: 4,
      releaseYear: 2022,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Movie Catalog"),
      ),
      body: ListView.builder(
        itemCount: movies.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Container(
              child: Image.network(movies[index].imageUrl, fit: BoxFit.cover),
            ),
            title: Text(movies[index].title),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Rating: ${movies[index].rating}"),
                Text("Release Year: ${movies[index].releaseYear}"),
              ],
            ),
          );
        },
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: MovieCatalog(),
  ));
}