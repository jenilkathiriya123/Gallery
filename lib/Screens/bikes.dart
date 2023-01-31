import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class bikes extends StatefulWidget {
  const bikes({Key? key}) : super(key: key);

  @override
  State<bikes> createState() => _bikesState();
}

class _bikesState extends State<bikes> {
  int currentPage = 0;

  List myList = [
    'https://avatars.mds.yandex.net/i?id=ba742b84d7aff739754fed27a464eee6-5226376-images-thumbs&n=13&exp=1',
    'https://yandex-images.clstorage.net/9olCH6436/bc358fzoi/S_BtShfdGXdKbdy3sFO0Rs8MRAm5qbVPIuNlwsRQ5o7A-VGYsumYTXU4e_FbEKNeOnALQ4JMmsggIqZBpQNSRwe9MFsm9B0CGyTcxuBzuFLHeTEF_djdXlaKbLL8ANq6-PFV5LLUvHgEPXqcD-E7w-Ltsr9HtUMIjFPufOhaZiZDlF3m7pX0c_JNMYdAf5QGZ80g0QGYLW6-06Aa8El6V0VsXDhWIHkgPPVzUQuBf-u-4Ubfk_nHjAjfZuzYCrO2K5y12vOd6Gt2lTXH8H9sTvet5PXlTN3S8luUssBtese9JCwohsApsLx583XvQYdDAlHCS1ety_TgUw7o2NZXmsO4YQ4_UZTz6h21O0RbyD5vxTSlpSSR9gZrUHYEzQYrrSTwODL48cB4eT_Z2zkb_wKtquvfrevMAPuOGFheZ_pfDFl-T3Xw5zatMSt0DzyKQy2waaHMGXLWm_yeWE3yq6GEBKBSvDlwNJU_vZ81e9-CVYK360UfDLyHClwQZh-SH6Q9HsPRAB-6xV1v6PfcMjPNJA153LFmNhNYXuzhrhvV7PAkqvSZcKRRm-WHDVMXskFGj6e1w6Tw0_L0wMI7wnOU4Xrb9VDzXsVR6xD7zAafTXApxUCFqv4bQHJQSTLfOax88Oo4qSDUhWfxL6lDV-4taiOLjZegUJvC-MyOI84LMH3GK90cE1ZFPVeMRwhimw3UPSHEXc4692SemF06C81UMNTyoPnYNGGD5Qu5S9MOKdrr342b-JAfenjwWhcCU2jNNpvNaNfO3fWDBEvEmncNJBHNLMmK7tPw9pTJsgdJYEzILjipEJRJK0FDRRuXJllCl0vZz2Q4Lz54aG47LtvIecLfMQCTFtW9q2znMPrjCRz1-dShosrPIOLcSX7T3aTYlOqkIUB4wfdVj_XXk0Z1JpNHHcd4fBt2jLyKHwIbuCU6e_GwB_odge88ixwab2UUIfG4KW6ak9AqdN2k',
    'https://avatars.mds.yandex.net/i?id=8e46f20405008f5461872ab1b743a9c7c490eed1-7761368-images-thumbs&n=13&exp=1',
    'https://avatars.mds.yandex.net/i?id=945033a03180f3b09d9c77c99f630523-5555892-images-thumbs&n=13&exp=1',
    'https://avatars.mds.yandex.net/i?id=006678c80a0f090e0e57c82245208717ac212b63-5500501-images-thumbs&n=13&exp=1',
  ];

  CarouselController carouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bikes"),
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
