import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class cars extends StatefulWidget {
  const cars({Key? key}) : super(key: key);

  @override
  State<cars> createState() => _carsState();
}

class _carsState extends State<cars> {
  int currentPage = 0;

  List myList = [
    'https://avatars.mds.yandex.net/i?id=d3323ba64e02a98d431dca6d134d967b2ea2d9d4-4935648-images-thumbs&n=13&exp=1',
    'https://yandex-images.clstorage.net/9olCH6436/bc358fzoi/S_BtShfdGXdKbdy3sFO0Rs8MRAm5qbVPIuNlwt0k68uZrXm8u7WZBVBQdrAufJ4mKmAGG55Fy6glb-cNtQtLDwb8fEcm9B0SOyTM0uBzuFLHeTEF_djdXlaKbLL8ANq6-PFV5LLUvHgEPXqcD-E7w-Ltsr9HtUMIjFPufOhaZiZDlF3m7pX0c_JNMYdAf5QGZ80g0QGYLW6-06Aa8El6V0VsXDhWIHkgPPVzUQuBf-u-4Ubfk_nHjAjfZuzYCrO2K5y12vOd6Gt2lTXH8H9sTvet5PXlTN3S8luUssBtese9JCwohsApsLx583XvQYdDAlHCS1ety_TgUw7o2NZXmsO4YQ4_UZTz6h21O0RbyD5vxTSlpSSR9gZrUHYEzQYrrSTwODL48cB4eT_Z2zkb_wKtquvfrevMAPuOGFheZ_pfDFl-T3Xw5zatMSt0DzyKQy2waaHMGXLWm_yeWE3yq6GEBKBSvDlwNJU_vZ81e9-CVYK360UfDLyHClwQZh-SH6Q9HsPRAB-6xV1v6PfcMjPNJA153LFmNhNYXuzhrhvV7PAkqvSZcKRRm-WHDVMXskFGj6e1w6Tw0_L0wMI7wnOU4Xrb9VDzXsVR6xD7zAafTXApxUCFqv4bQHJQSTLfOax88Oo4qSDUhWfxL6lDV-4taiOLjZegUJvC-MyOI84LMH3GK90cE1ZFPVeMRwhimw3UPSHEXc4692SemF06C81UMNTyoPnYNGGD5Qu5S9MOKdrr342b-JAfenjwWhcCU2jNNpvNaNfO3fWDBEvEmncNJBHNLMmK7tPw9pTJsgdJYEzILjipEJRJK0FDRRuXJllCl0vZz2Q4Lz54aG47LtvIecLfMQCTFtW9q2znMPrjCRz1-dShosrPIOLcSX7T3aTYlOqkIUB4wfdVj_XXk0Z1JpNHHcd4fBt2jLyKHwIbuCU6e_GwB_odge88ixwab2UUIfG4KW6ak9AqdN2k',
    'https://avatars.mds.yandex.net/i?id=55f842c1bc932e8aaea3bb46d7db7544055bb71a-8258224-images-thumbs&n=13&exp=1',
    'https://avatars.mds.yandex.net/i?id=c7e531b8314beae6fe6c6acb3d1ddc7eca978039-8349641-images-thumbs&n=13&exp=1',
    'https://avatars.mds.yandex.net/i?id=665a4dbcec6971d7c6750c103c883a592cd0198a-4901375-images-thumbs&n=13&exp=1',
  ];

  CarouselController carouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("cars"),
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
