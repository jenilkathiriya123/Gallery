import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gallrey"),
        centerTitle: true,
      ),
      backgroundColor: Colors.grey.shade300,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding:
              const EdgeInsets.only(right: 15, left: 15, top: 15, bottom: 15),
          child: StaggeredGrid.count(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            children: [
              StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 2.5,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      Navigator.pushNamed(context, 'cars');
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Expanded(
                          flex: 9,
                          child: Container(
                            color: Colors.white,
                            child: Image.network(
                              "https://images.unsplash.com/photo-1635975229704-0a420e777a56?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8Mnx8fGVufDB8fHx8&w=1000&q=80",
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            alignment: Alignment.centerLeft,
                            color: Colors.white,
                            child: const Text(
                              "CARS",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 1.3,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      Navigator.pushNamed(context, 'naruto');
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Expanded(
                          flex: 9,
                          child: Container(
                            color: Colors.white,
                            child: Image.network(
                              "https://getwallpapers.com/wallpaper/full/8/8/9/421101.jpg",
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            alignment: Alignment.centerLeft,
                            color: Colors.white,
                            child: const Text(
                              "Naruto",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 2,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Expanded(
                        flex: 9,
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              Navigator.pushNamed(context, 'bikes');
                            });
                          },
                          child: Container(
                            color: Colors.white,
                            child: Image.network(
                              "https://eadwbdzx6ti.exactdn.com/wp-content/uploads/2014/11/Kawasaki-Ninja-H2-Official-Image-1.jpg?strip=all&lossy=1&ssl=1",
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          alignment: Alignment.centerLeft,
                          color: Colors.white,
                          child: const Text(
                            "Bikes",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 1,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      Navigator.pushNamed(context, 'cr7');
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Expanded(
                          flex: 9,
                          child: Container(
                            color: Colors.white,
                            child: Image.network(
                              "https://www.thesun.co.uk/wp-content/uploads/2020/09/NINTCHDBPICT000599038255-1.jpg",
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            alignment: Alignment.centerLeft,
                            color: Colors.white,
                            child: const Text(
                              "Ronaldo",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 2,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      Navigator.pushNamed(context, 'cricket');
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Expanded(
                          flex: 9,
                          child: Container(
                            color: Colors.white,
                            child: Image.network(
                              "https://i.pinimg.com/736x/d3/0b/27/d30b276aa01f742a72db26ba2ddc0fee.jpg",
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            alignment: Alignment.centerLeft,
                            color: Colors.white,
                            child: const Text(
                              "Cricketers",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 2,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      Navigator.pushNamed(context, 'Burj');
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Expanded(
                          flex: 9,
                          child: Container(
                            color: Colors.white,
                            child: Image.network(
                              "https://avatars.mds.yandex.net/i?id=2a00000179e7d2f43d67e66318c4318c8144-4981909-images-thumbs&ref=rim&n=33&w=143&h=225",
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            alignment: Alignment.centerLeft,
                            color: Colors.white,
                            child: const Text(
                              "Burj Khalifa",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 1.3,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Expanded(
                        flex: 9,
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              Navigator.pushNamed(context, 'ant');
                            });
                          },
                          child: Container(
                            color: Colors.white,
                            child: Image.network(
                              "https://www.relabitalia.it/wp-content/uploads/2019/10/antilia-mumbai.jpg",
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          alignment: Alignment.centerLeft,
                          color: Colors.white,
                          child: const Text(
                            "Antillia",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 2.5,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Expanded(
                        flex: 9,
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              Navigator.pushNamed(context, 'rivers');
                            });
                          },
                          child: Container(
                            color: Colors.white,
                            child: Image.network(
                              "https://avatars.mds.yandex.net/i?id=0a4949d5320c15d8514f06da151d8ff4-4422999-images-thumbs&ref=rim&n=33&w=146&h=225",
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          alignment: Alignment.centerLeft,
                          color: Colors.white,
                          child: const Text(
                            "Rivers",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
