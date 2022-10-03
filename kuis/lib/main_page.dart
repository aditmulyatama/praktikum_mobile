import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:kuis/books_data.dart';
import 'detail_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Buku'),
      ),
      body: GridView.builder(
        itemCount: booksData.length,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) {
          final BooksData books = booksData[index];
          return Card(
            child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return DetailPage(books: books);
                }));
              },
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height/2,
                  child: Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height/4,
                        child: Image.network(
                          books.imageLinks,
                        ),
                      ),
                       Row(
                        children: [
                          Icon(Icons.book),
                          Flexible(child: textBesar(books.title))
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.person),
                          textHalamanUtama(books.publisher),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.calendar_today_rounded),
                          textHalamanUtama(books.publishedDate),
                        ],
                      ),
                    ],
                  )),
            ),
          );
        },
      ),
    );
  }

  Widget textBesar(String text) {
    return Text(
      text,
      textAlign: TextAlign.left,
      style: TextStyle(
        color: Colors.black,
        fontSize: 25,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget textHalamanUtama(String text) {
    return Text(
      "$text",
      textAlign: TextAlign.left,
      style: TextStyle(
        color: Colors.black,
        fontSize: 18,
        fontWeight: FontWeight.normal,
      ),
    );
  }
}
