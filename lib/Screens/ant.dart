import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Antillia extends StatefulWidget {
  const Antillia({Key? key}) : super(key: key);

  @override
  State<Antillia> createState() => _AntilliaState();
}

class _AntilliaState extends State<Antillia> {
  int currentPage = 0;

  List myList = [
    'https://avatars.mds.yandex.net/i?id=ba668c22d651498aa53b2142ccc14e56dcc7e858-4824750-images-thumbs&n=13&exp=1',
    'https://e3.365dm.com/18/12/2048x1152/skynews-ambani-mumbai_4517053.jpg?20181212215827',
    'https://www.relabitalia.it/wp-content/uploads/2019/10/antilia-mumbai.jpg',
    'https://www.toptenz.net/wp-content/uploads/2014/09/luxuryhouses2.jpg',
    'https://1.bp.blogspot.com/-EL6Q85MMSkQ/VhQyGY3YsOI/AAAAAAABI8M/x8x18XA6e7w/s1600/09+Mumbai+Ambani+Antilia+Was+Built+By+Mukesh+Ambani+The+Richest+Man+In+India+And+Is+Supposedly+The+Most+Expensive+House+In+The+World.jpg',
  ];

  CarouselController carouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Antillia"),
        centerTitle: true,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CarouselSlider(
              carouselController: carouselController,
              options: CarouselOptions(
                initialPage: currentPage,
                onPageChanged: (val, _) {
                  setState(() {
                    currentPage = val;
                  });
                },
                enlargeCenterPage: true,
                height: 250,
              ),
              items: myList
                  .map((e) => SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Image.network(e, fit: BoxFit.fill),
              ))
                  .toList(),
            ),
            const SizedBox(height: 40),
            Container(
              width: 130,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: myList.map(
                      (e) {
                    int i = myList.indexOf(e);
                    return GestureDetector(
                      onTap: () {
                        carouselController.animateToPage(
                          i,
                          curve: Curves.easeInOut,
                          duration: const Duration(milliseconds: 500),
                        );
                      },
                      child: CircleAvatar(
                        radius: 8,
                        backgroundColor: (i == currentPage)
                            ? Colors.blue
                            : Colors.grey.shade300,
                      ),
                    );
                  },
                ).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
