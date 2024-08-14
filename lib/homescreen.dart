import 'package:flutter/material.dart';
import 'package:movie_dashboard/movie.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text('Movies', style: TextStyle(color: Colors.white),),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: movieList.length,
        itemBuilder: (context, index) {
          final movie = movieList[index];
          return MovieItemView(movie: movie);
        },
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.purple,
        child: Row(
          children: [
            Expanded(
                child: Column(
              children: [Icon(Icons.home, color: Colors.white,), Text('HOME',style: TextStyle(color: Colors.white),)],
            )),
            Expanded(
                child: Column(
              children: [Icon(Icons.search,color: Colors.white,), Text('SEARCH',style: TextStyle(color: Colors.white),)],
            )),
            Expanded(
                child: Column(
              children: [Icon(Icons.person,color: Colors.white,), Text('PROFILE',style: TextStyle(color: Colors.white),)],
            )),
          ],
        ),
      ),
    );
  }
}

class MovieItemView extends StatelessWidget {
  const MovieItemView({super.key, required this.movie});

  final movie;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          color: Colors.black54,
          elevation: 10.0,
          child: Column(
            children: [
              Card(
                color: Colors.grey.shade200,
                child: Column(
                  children: [
                    Image.asset(
                      movie.image,
                      width: double.infinity,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                    ListTile(
                      title: Text(movie.name,style: TextStyle(fontSize: 24),),
                      subtitle: Text(movie.type),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.star,size: 22,color: Colors.amber,),
                          Text('${movie.ratting}', style: TextStyle(fontSize: 20),),
                        ],
                      ),
                      leading: Icon(Icons.movie),
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}

class MovieBox extends StatelessWidget {
  const MovieBox({super.key, this.color});

  final color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200.0,
      decoration: BoxDecoration(
          color: Colors.blueAccent, borderRadius: BorderRadius.circular(6.0)),
    );
  }
}
