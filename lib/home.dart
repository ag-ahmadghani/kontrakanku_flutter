import 'package:flutter/material.dart';

/// Flutter code sample for [CarouselView].

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25.0),
      child: ListView(
        children: [
          Text(
            "KONTRAKANKU",
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
              color: Colors.indigo
            ),
          ),
          SizedBox(height: 50.0,),
          const Carousel(),
          SizedBox(height: 50.0,),
          const Fitur(),
          SizedBox(height: 50.0,),
          const Pesan(),
          SizedBox(height: 50.0,),
        ],
      )
    );
  }
}

class Carousel extends StatefulWidget {
  const Carousel({super.key});

  @override
  State<Carousel> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  final CarouselController controller = CarouselController(initialItem: 1);

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.sizeOf(context).height;

    return 
    ConstrainedBox(
      constraints: BoxConstraints(maxHeight: height / 2),
      child: CarouselView.weighted(
        controller: controller,
        itemSnapping: true,
        flexWeights: const <int>[1, 7, 1],
        children:
            ImageInfo.values.map((ImageInfo image) {
              return HeroLayoutCard(imageInfo: image);
            }).toList(),
      ),
    );
  }
}

class HeroLayoutCard extends StatelessWidget {
  const HeroLayoutCard({super.key, required this.imageInfo});

  final ImageInfo imageInfo;

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.sizeOf(context).width;
    return Stack(
      alignment: AlignmentDirectional.bottomStart,
      children: <Widget>[
        ClipRect(
          child: OverflowBox(
            maxWidth: width * 7 / 8,
            minWidth: width * 7 / 8,
            child: Image.asset(
              "images/${imageInfo.url}"
            ),
          ),
        ),
        // Padding(
        //   padding: const EdgeInsets.all(18.0),
        //   child: Column(
        //     crossAxisAlignment: CrossAxisAlignment.start,
        //     mainAxisSize: MainAxisSize.min,
        //     children: <Widget>[
        //       Text(
        //         imageInfo.title,
        //         overflow: TextOverflow.clip,
        //         softWrap: false,
        //         style: Theme.of(
        //           context,
        //         ).textTheme.headlineLarge?.copyWith(color: Colors.indigo),
        //       ),
        //       const SizedBox(height: 10),
        //       Text(
        //         imageInfo.subtitle,
        //         overflow: TextOverflow.clip,
        //         softWrap: false,
        //         style: Theme.of(
        //           context,
        //         ).textTheme.bodyMedium?.copyWith(color: Colors.indigo),
        //       ),
        //     ],
        //   ),
        // ),
      ],
    );
  }
}

enum ImageInfo {
  image0(
    'The Flow',
    'Sponsored | Season 1 Now Streaming',
    'no_image.png',
  ),
  image1(
    'Through the Pane',
    'Sponsored | Season 1 Now Streaming',
    'no_image.png',
  ),
  image2(
    'Iridescence',
    'Sponsored | Season 1 Now Streaming',
    'no_image.png',
  ),
  image3(
    'Sea Change',
    'Sponsored | Season 1 Now Streaming',
    'no_image.png',
  ),
  image4(
    'Blue Symphony',
    'Sponsored | Season 1 Now Streaming',
    'no_image.png',
  ),
  image5(
    'When It Rains',
    'Sponsored | Season 1 Now Streaming',
    'no_image.png',
  );

  const ImageInfo(this.title, this.subtitle, this.url);
  final String title;
  final String subtitle;
  final String url;
}


class Fitur extends StatelessWidget {
  const Fitur({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Fitur",
            style: TextStyle(
              fontSize: 24.0,
              color: Colors.grey[800],
            ),
            textAlign: TextAlign.left,
          ),
          SizedBox(height: 10.0,),
          Container(
            padding: EdgeInsets.all(35.0),
            decoration: BoxDecoration(
              color: Colors.indigo,
              borderRadius: BorderRadius.circular(20), // Radius semua sudut
            ),
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: 100.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Icon(
                        Icons.wifi, 
                        color: Colors.white,
                      ),
                      Text(
                        "Free Wifi",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.wifi, 
                        color: Colors.white,
                      ),
                      Text(
                        "Free Wifi",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.wifi, 
                        color: Colors.white,
                      ),
                      Text(
                        "Free Wifi",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.wifi, 
                        color: Colors.white,
                      ),
                      Text(
                        "Free Wifi",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}


class Pesan extends StatelessWidget {
  const Pesan({super.key});

   @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Pesan Sekarang",
            style: TextStyle(fontSize: 24.0, color: Colors.grey[800]),
            textAlign: TextAlign.left,
          ),
          SizedBox(height: 10.0),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 8,
                  offset: Offset(0, 4),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Gambar
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16.0),
                    topRight: Radius.circular(16.0),
                  ),
                  child: Container(
                    height: 150,
                    width: double.infinity,
                    color: Colors.grey[300],
                    child: Image.asset(
                      "images/no_image.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "title",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                        ),
                      ),
                      SizedBox(height: 4.0),
                      Text("price", style: TextStyle(color: Colors.grey[600])),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Ikon
                      Row(
                        children: [
                          Icon(Icons.favorite_border, color: Colors.indigo),
                          SizedBox(width: 10),
                          Icon(Icons.share, color: Colors.indigo),
                        ],
                      ),

                      // Tombol Pesan Sekarang
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.indigo,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: 20.0,
                            vertical: 12.0,
                          ),
                        ),
                        child: Text(
                          'Pesan sekarang',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
