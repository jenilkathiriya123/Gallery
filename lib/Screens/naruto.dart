import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class naruto extends StatefulWidget {
  const naruto({Key? key}) : super(key: key);

  @override
  State<naruto> createState() => _narutoState();
}

class _narutoState extends State<naruto> {
  int currentPage = 0;

  List myList = [
    'https://avatars.mds.yandex.net/i?id=9ddae8005b5ea0197e268cbb8a1bd230ecdcde96-6402780-images-thumbs&n=13&exp=1',
    'https://avatars.mds.yandex.net/i?id=b1075a207565a584406789207e376fc732c61b98-8174067-images-thumbs&n=13&exp=1',
    'https://avatars.mds.yandex.net/i?id=eed50467c921ac4ff1258b2c4953dbf7-5328534-images-thumbs&n=13&exp=1',
    'https://avatars.mds.yandex.net/i?id=39eb3d0784f950983aef6f5a03b1dbce066ff075-8497423-images-thumbs&n=13&exp=1',
    'https://mobimg.b-cdn.net/v3/fetch/11/11e1a09b83fe59ea14e8db2644db03bc.jpeg',
  ];

  CarouselController carouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Naruto"),
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
