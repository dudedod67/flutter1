import 'package:flutter/material.dart';
import 'MovieModel.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<movie>? movieList = [];

  TextEditingController _searchController = TextEditingController();
  List<movie>? _searchResults = [];

  @override
  void initState() {
    super.initState();
    movie movie1 = new movie(
        "Raya and The Last Dragon",
        "2014",
        "Rating: 4.6",
        "https://akcdn.detik.net.id/community/media/visual/2023/04/21/raya-and-the-last-dragon-2021dok-disney-hotstar.jpeg?w=620&q=90",
        "Monster jahat dikenal sebagai Druun mengancam kehidupan masyarakat daratan.");


    movie movie2 = new movie(
        "Brave ",
        "2012",
        "Rating: 4.4",
        "https://akcdn.detik.net.id/community/media/visual/2023/04/21/brave-2012dokdisney-pixar.jpeg?w=620&q=90",
        "Merida, putri Raja Skotlandia Fergus dan Ratu Elinor dikenal sebagai wanita pemberani di kerajaannya.");

    movie movie3 = new movie(
        "Moana ",
        "2016",
        "Rating: 5",
        "https://akcdn.detik.net.id/community/media/visual/2023/04/21/moana-2016dok-disney.jpeg?w=620&q=90",
        "Seorang remaja perempuan bernama Moana memutuskan untuk pergi berpetualang dengan berlayar untuk menyelamatkan bangsanya.");

    movie movie4 = new movie(
        "Tangled",
        "2010",
        "Rating: 5",
        "https://akcdn.detik.net.id/community/media/visual/2023/04/21/tangled-2010dok-disney.jpeg?w=620&q=90",
        "Flynn adalah seorang bandit yang menjadi buronan kerajaan karena mencuri mahkota. Ia kemudian bersembunyi di menara Rapunzel.");

    movie movie5 = new movie(
        "Toy Story 2 ",
        "1999",
        "Rating: 5",
        "https://akcdn.detik.net.id/community/media/visual/2023/04/21/toy-story-2-1999dok-disney-pixar.jpeg?w=620&q=90",
        "Woody dicuri oleh penjual mainan Al McWhiggin yang biasa menjual mainan ke kolektor. Buzz Lightyear dan kawan Woody mencoba menyelamatkannya.");

    movie movie6 = new movie(
        "Big Hero 6",
        "2014",
        "Rating: 5",
        "https://akcdn.detik.net.id/community/media/visual/2023/04/21/big-hero-6-2014dokdisney.jpeg?w=620&q=90",
        "Ahli robot Hiro yang tinggal di kota San Fransokyo. Hiro memiliki teman dekat yaitu Baymax, sebuah robot yang tujuannya menjaga keselamatan orang.");

    movie movie7 = new movie(
        "Coco",
        "2017",
        "Rating: 5",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTjnUgkONg7sYDd6sDa9hxRxexV4fuwqayLai1pJciClNoe6we0",
        "Miguel, dilarang bermusik oleh leluhur keluarganya, memasuki Tanah Orang Mati untuk menemukan kakek buyutnya, seorang penyanyi legendaris.");

    movieList?.add(movie1);
    movieList?.add(movie2);
    movieList?.add(movie3);
    movieList?.add(movie4);
    movieList?.add(movie5);
    movieList?.add(movie6);
    movieList?.add(movie7);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Movie Catalog"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: _searchController.text.isEmpty
                  ? movieList?.length ?? 0
                  : _searchResults?.length ?? 0,
              itemBuilder: (BuildContext context, int index) {
                final movieData = _searchController.text.isEmpty
                    ? movieList![index]
                    : _searchResults![index];

                return Container(
                  padding: EdgeInsets.all(8),
                  margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  decoration: BoxDecoration(
                    color: Colors.blueGrey.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(
                            movieData.imageUrl,
                            width: 110,
                            height: 147,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              movieData.name,
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "Tahun Rilis: ${movieData.date}",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black45,
                              ),
                            ),
                            SizedBox(height: 2),
                            Wrap(
                              children: [
                                Text(
                                  movieData.rating,
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black45,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 2),
                            Wrap(
                              children: [
                                Text(
                                  movieData.desc,
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black45,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}