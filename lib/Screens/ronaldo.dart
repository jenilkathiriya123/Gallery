import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class cr7 extends StatefulWidget {
  const cr7({Key? key}) : super(key: key);

  @override
  State<cr7> createState() => _cr7State();
}

class _cr7State extends State<cr7> {
  int currentPage = 0;

  List myList = [
    'https://avatars.mds.yandex.net/i?id=e34da177daee198dadc05392dcd180884a3a4c07-6898356-images-thumbs&n=13&exp=1',
    'https://yandex-images.clstorage.net/9olCH6436/bc358fzoi/S_BtShfdGXdKbdy3sFO0Rs8MRAm5qbVPIuNlw6kho-LtpV2Z7vT0WUBNMrFfCJ4fbn1CG5cIh6FxYqMQ6QdSXwbNME8mxB0CHzzMzuBzuFLHeTEF_djdXlaKbLL8ANq6-PFV5LLUvHgEPXqcD-E7w-Ltsr9HtUMIjFPufOhaZiZDlF3m7pX0c_JNMYdAf5QGZ80g0QGYLW6-06Aa8El6V0VsXDhWIHkgPPVzUQuBf-u-4Ubfk_nHjAjfZuzYCrO2K5y12vOd6Gt2lTXH8H9sTvet5PXlTN3S8luUssBtese9JCwohsApsLx583XvQYdDAlHCS1ety_TgUw7o2NZXmsO4YQ4_UZTz6h21O0RbyD5vxTSlpSSR9gZrUHYEzQYrrSTwODL48cB4eT_Z2zkb_wKtquvfrevMAPuOGFheZ_pfDFl-T3Xw5zatMSt0DzyKQy2waaHMGXLWm_yeWE3yq6GEBKBSvDlwNJU_vZ81e9-CVYK360UfDLyHClwQZh-SH6Q9HsPRAB-6xV1v6PfcMjPNJA153LFmNhNYXuzhrhvV7PAkqvSZcKRRm-WHDVMXskFGj6e1w6Tw0_L0wMI7wnOU4Xrb9VDzXsVR6xD7zAafTXApxUCFqv4bQHJQSTLfOax88Oo4qSDUhWfxL6lDV-4taiOLjZegUJvC-MyOI84LMH3GK90cE1ZFPVeMRwhimw3UPSHEXc4692SemF06C81UMNTyoPnYNGGD5Qu5S9MOKdrr342b-JAfenjwWhcCU2jNNpvNaNfO3fWDBEvEmncNJBHNLMmK7tPw9pTJsgdJYEzILjipEJRJK0FDRRuXJllCl0vZz2Q4Lz54aG47LtvIecLfMQCTFtW9q2znMPrjCRz1-dShosrPIOLcSX7T3aTYlOqkIUB4wfdVj_XXk0Z1JpNHHcd4fBt2jLyKHwIbuCU6e_GwB_odge88ixwab2UUIfG4KW6ak9AqdN2k',
    'https://avatars.mds.yandex.net/i?id=186213b8d7a5c8197b46c5a3a64b359540d745d4-6339443-images-thumbs&n=13&exp=1',
    'https://yandex-images.clstorage.net/9olCH6436/bc358fzoi/S_BtShfdGXdKbdy3sFO0Rs8MRAm5qbVPIuNlw4hY18-A5Vmwo6WtDXENKrAvCc9CJyQrTsZJ1ulpYqcRzRtOVwrhCFcnsWBLYmncu4R32GLTIGQ1mbnlUyuCOa7MdffvmdRZifIcAZCU1cdVg7lb494BSjufBb6UOAveuAVOpyLDmMkSh71MH8LdzW94NyhSO3monZXwRb6WHzByKIEyt6EcUET2fEW4yNkzNVf132dajcKrr1VrBFADNoQYRrs6R0DNUje9tFdSvQlLnOPY7nfxnDWl1EUubldAYvhhYichkNBgEry9EHRpt6GTodMfsgGqr6-Jjyi4J-JQ1IrHotvITa6DmRAnytXZG9yLlMqDwVjxYXQ5wn5XnHJMWbpX5ZAczCbEIax0ld8BG6HzJ1KpKl8vAb9IJJPaIKSuo7YHeMm-s83kk-Y9XdfYYxxOUzH0GT30zUJy92jqLB1y56l8HKhiyEGM9G33XS9JB-fu1a4bZznHIGQ7vkAoClNOixCl-i81BCuW3cmzAHO0WrO5UNmJWJHyBp-cbtRV0uc5uLjwevBpRMR5M2VjudtPooFWs7ed43AIC2IkMC4Dom8QqX7XORQfOl2dl7zvgJZ7sUj1NfANNurfELqUmeK3SWxE5NJUeQSYFR_JT4GPSwLJZr-70ft8cK_-mMAGT0JnkMXCS4XQez4dOYNYa1jyv11sGf3kBeIeJ1yejAGyT6mIoPD2RHGAeBGvARuBgxPCTd4_hwXPsCj3TmhwFjuG_wgNFsOJHIPSHcmvtIPMtmt5-HHxcI3umhMgglCZ4ocJoAhUvrghxFBhN32P1dePan2aPx8x45ygV_qcNOpTwicART6rJejjRhnxS4B7pJ5PZShlufBBOg7XtN6UBWrX5SjUQHII7cAwTVN5gxHfky5J0svL1cewYCemZJAq41bLyHl6-0nEA8p1-Z-IFyxSHznYrRFkmaIOL-iqiOkA',
    'https://yandex-images.clstorage.net/9olCH6436/bc358fzoi/S_BtShfdGXdKbdy3sFO0Rs8MRAm5qbVPIuNlw4kE4orU9Uj147GwVBhRKrFOXJNeKmwWE4Z11vQtZ-cdtSoPClbsbHsm9B0GOyjc0uBzuFLHeTEF_djdXlaKbLL8ANq6-PFV5LLUvHgEPXqcD-E7w-Ltsr9HtUMIjFPufOhaZiZDlF3m7pX0c_JNMYdAf5QGZ80g0QGYLW6-06Aa8El6V0VsXDhWIHkgPPVzUQuBf-u-4Ubfk_nHjAjfZuzYCrO2K5y12vOd6Gt2lTXH8H9sTvet5PXlTN3S8luUssBtese9JCwohsApsLx583XvQYdDAlHCS1ety_TgUw7o2NZXmsO4YQ4_UZTz6h21O0RbyD5vxTSlpSSR9gZrUHYEzQYrrSTwODL48cB4eT_Z2zkb_wKtquvfrevMAPuOGFheZ_pfDFl-T3Xw5zatMSt0DzyKQy2waaHMGXLWm_yeWE3yq6GEBKBSvDlwNJU_vZ81e9-CVYK360UfDLyHClwQZh-SH6Q9HsPRAB-6xV1v6PfcMjPNJA153LFmNhNYXuzhrhvV7PAkqvSZcKRRm-WHDVMXskFGj6e1w6Tw0_L0wMI7wnOU4Xrb9VDzXsVR6xD7zAafTXApxUCFqv4bQHJQSTLfOax88Oo4qSDUhWfxL6lDV-4taiOLjZegUJvC-MyOI84LMH3GK90cE1ZFPVeMRwhimw3UPSHEXc4692SemF06C81UMNTyoPnYNGGD5Qu5S9MOKdrr342b-JAfenjwWhcCU2jNNpvNaNfO3fWDBEvEmncNJBHNLMmK7tPw9pTJsgdJYEzILjipEJRJK0FDRRuXJllCl0vZz2Q4Lz54aG47LtvIecLfMQCTFtW9q2znMPrjCRz1-dShosrPIOLcSX7T3aTYlOqkIUB4wfdVj_XXk0Z1JpNHHcd4fBt2jLyKHwIbuCU6e_GwB_odge88ixwab2UUIfG4KW6ak9AqdN2k',
  ];

  CarouselController carouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CR7"),
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
