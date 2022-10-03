import 'package:flutter/material.dart';
import 'tourism_place.dart';
import 'package:flutter/painting.dart';
import 'halaman_detail.dart';


class HalamanUtama extends StatefulWidget {
  const HalamanUtama({Key? key}) : super(key: key);

  @override
  State<HalamanUtama> createState() => _HalamanUtamaState();
}

class _HalamanUtamaState extends State<HalamanUtama> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Halaman Utama'),
      ),
      body: ListView.builder(
        itemCount: tourismPlaceList.length,
        // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
        itemBuilder: (context, index) {
          final TourismPlace place = tourismPlaceList[index];
          return Card(
            child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return HalamanDetail(place: place);
                }));
              },
              child: Container(
                height: MediaQuery.of(context).size.height / 4,
                width: MediaQuery.of(context).size.width / 2,
                child: Stack(
                  children: [
                    Image.network(
                      place.imageUrls[0],
                      fit: BoxFit.cover,
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      alignment: Alignment.bottomLeft,
                      child: textAlignLeftWhite(place.name),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Icon(
                                Icons.location_on_outlined,
                                color: Colors.white,
                              ),
                              textHalamanUtama(place.location),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Icon(
                                Icons.attach_money,
                                color: Colors.white,
                              ),
                              textHalamanUtama(place.ticketPrice),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      child: Row(
                        children: [
                          Icon(
                            Icons.calendar_today_rounded,
                            color: Colors.white,
                          ),
                          textHalamanUtama(place.openDays),
                        ],
                      ),
                    ),
                    Container(
                        alignment: Alignment.bottomRight,
                        child: IconButton(
                          onPressed: () {
                            setState(() {
                              place.isFavorite = !place.isFavorite;
                            });
                          },
                          icon: (place.isFavorite)
                              ? Icon(Icons.favorite)
                              : Icon(Icons.favorite_border),
                          color:
                              (place.isFavorite) ? Colors.pink : Colors.white,
                        )),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget textAlignLeftWhite(String text) {
    return Text(
      text,
      textAlign: TextAlign.left,
      style: TextStyle(
        color: Colors.white,
        fontSize: 25,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget textHalamanUtama(String text) {
    return Text(
      text,
      textAlign: TextAlign.left,
      style: TextStyle(
        color: Colors.white,
        fontSize: 18,
        fontWeight: FontWeight.normal,
      ),
    );
  }
}
