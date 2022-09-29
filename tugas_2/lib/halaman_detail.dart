import 'package:flutter/material.dart';
import 'tourism_place.dart';
import 'package:url_launcher/url_launcher.dart';

class HalamanDetail extends StatefulWidget {
  final TourismPlace place;

  const HalamanDetail({Key? key, required this.place}) : super(key: key);

  @override
  State<HalamanDetail> createState() => _HalamanDetailState();
}

class _HalamanDetailState extends State<HalamanDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${widget.place.name}'),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                widget.place.isFavorite = !widget.place.isFavorite;
              });
            },
            icon: (widget.place.isFavorite)
                ? Icon(Icons.favorite)
                : Icon(Icons.favorite_border),
            color: (widget.place.isFavorite) ? Colors.pink : Colors.white,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child:       Column(
          children: [
            Container(
              padding: EdgeInsets.all(30),
              height: MediaQuery.of(context).size.height / 3,
              child: ListView.builder(
                  itemCount: widget.place.imageUrls.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      child: Image.network(widget.place.imageUrls[index]),
                    );
                  }),
            ),
            Container(
              padding: EdgeInsets.all(18),
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  textBesarBold(" > " + widget.place.name + " < "),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.location_on),
                      textBiasa(widget.place.location),
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
                      textBiasa(widget.place.openDays),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.access_time),
                      textBiasa(widget.place.openTime),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.attach_money),
                      textBiasa(widget.place.ticketPrice),
                    ],
                  ),
                  SizedBox(height: 15,),
                  Text('Deskripsi lokasi :'),
                  Text(widget.place.description),
                ],
              ),
            )
          ],
        ),
      )

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
}
