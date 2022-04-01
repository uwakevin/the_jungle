import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'The Jungle',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'BNR, Kota Bogor',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          Icon(
            Icons.favorite_border_outlined,
            color: Colors.black,
            size: 20,
          ),
          const Text('7.5'),
        ],
      ),
    );

    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(Colors.black, Icons.call_outlined, 'CALL'),
        _buildButtonColumn(Colors.black, Icons.near_me_outlined, 'ROUTE'),
        _buildButtonColumn(Colors.black, Icons.share_outlined, 'SHARE'),
      ],
    );

    Widget textSection = Container(
      padding: EdgeInsets.all(32),
      child: Text(
        'The Jungle Waterpark Bogor'
        'Jungle WaterPark terletak di Bogor Nirwana Residence, Bogor, tepatnya 15 menit dari exit gerbang tol Bogor, merupakan waterpark dengan luas 3,8ha yang memiliki 12 wahana yang tidak kalah menarik dengan waterpark manapun. The Jungle waterpark Bogor berdiri sejak tahun 2008 dan sudah mendapatkan banyak Top Brand. Kejernihan air dan udara yang segar membuat kenyaman untuk kita berenang karena posisi The Jungle Waterpark Bogor berada di dekat Gunung Salak dan sudah banyakny pohon yang tumbuh membuat udara semakin sejuk.airnya bersumber dari mata air Gunung salak'
        'Wahana-wahana The Jungle Waterpark Bogor yaitu Kiddy Pool, Aqua Pool, Fountain Futsal, Leisure Pool, Tower Slide, Kawah ratu ( Kolam Air Hangat ), Lazy River, Taman Burung, Giant Aquarium, Wave Pool, dan Racer Slide. Sebuah konsep water park yang berbeda, Untuk cinema 4D sekarang perbayar'
        'The Jungle WaterPark juga merupakan wahana wisata di Indonesia yang memiliki sertifikat IAAPA (The International Association of Amusement Parks and Recreations), sehingga dapat dipastikan bahwa wahana-wahana kami sangat aman untuk dimainkan'
        'Agar bisa menikmati berbagai wahana yang ada disana tentunya kamu harus membayar htm the jungle bogor, berikut ini merupakan daftar harga tiket per orang yang tersedia berdasarkan hari yang telah mereka tentukan.',
        textAlign: TextAlign.justify,
      ),
    );
    
    return MaterialApp(
      title: 'The jungle',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView(
          children: [
            Image.asset(
              'asset/jungle.jpeg',
              width: 600,
              height: 600,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}