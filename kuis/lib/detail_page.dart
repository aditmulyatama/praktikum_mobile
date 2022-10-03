import 'package:flutter/painting.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'books_data.dart';

class DetailPage extends StatefulWidget {
  final BooksData books;

  const DetailPage({Key? key, required this.books}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: (isFavorite) ? Colors.lightBlueAccent : Colors.white,
      appBar: AppBar(
        title: Text(widget.books.title),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                isFavorite = !isFavorite;
              });
            },
            icon: (isFavorite)
                ? Icon(Icons.favorite)
                : Icon(Icons.favorite_border),
            color: (isFavorite) ? Colors.pink : Colors.white,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(30),
                child: Image.network(widget.books.imageLinks),
              ),
              Container(
                padding: EdgeInsets.all(18),
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    textBesarBold(" > " + widget.books.title + " < "),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.person),
                        textBiasa(widget.books.authors[0]),
                      ],
                    ),
                    // SizedBox(height: 15,),
                    // Text('Deskripsi lokasi :'),
                    // Text(widget.place.description),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.calendar_today_rounded),
                        textBiasa(widget.books.publishedDate),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.category_rounded),
                        textBiasa(widget.books.categories[0]),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      child: ElevatedButton(
                        onPressed: () {
                          _launchURL(widget.books.previewLink);
                        },
                        child: Text("Halaman Website"),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text('Deskripsi lokasi :'),
                    Text(widget.books.description),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
  Widget textBesarBold(String text) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.blue,
      ),
    );
  }

  Widget textBiasa(String text) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    );
  }
  void _launchURL(_url) async {
    if (!await launch(_url)) throw 'Could not launch $_url';
  }
}
