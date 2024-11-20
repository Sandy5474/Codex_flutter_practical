import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerce/color_constants.dart';
import 'package:ecommerce/pages/Detail/detail_screen.dart';

import 'package:ecommerce/pages/categoryProducts.dart';
import 'package:ecommerce/services/firebase_services.dart';

import 'package:flutter/material.dart';

import 'Widget/home_app_bar.dart';
import 'Widget/image_slider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController searchController = TextEditingController();
  bool search = false;
  var queryResultSet = [];
  var tempSearchStore = [];
  Stream? productStream;
  getontheload() async {
    productStream = await FirebaseServices().getAllProduct();
    setState(() {});
  }

  @override
  void initState() {
    getontheload();
    super.initState();
  }

  initiateSearch(value) {
    if (value.length == 0) {
      setState(() {
        queryResultSet = [];
        tempSearchStore = [];
      });
    }
    setState(() {
      search = true;
    });

    var capitalizedValue =
        value.substring(0, 1).toUpperCase() + value.substring(1);
    if (queryResultSet.isEmpty && value.length == 1) {
      FirebaseServices().search(value).then(
        (QuerySnapshot docs) {
          for (int i = 0; i < docs.docs.length; ++i) {
            queryResultSet.add(docs.docs[i].data());
          }
        },
      );
    } else {
      tempSearchStore = [];
      queryResultSet.forEach(
        (element) {
          if (element["UpdatedName"].startsWith(capitalizedValue)) {
            setState(() {
              tempSearchStore.add(element);
            });
          }
        },
      );
    }
  }

  List categories = [
    "images/download.jpeg",
    "images/TV.jpeg",
    "images/watch.jpeg",
    "images/mobile.jpeg",
    "images/images.jpeg"
  ];

  List categoryName = ["Headphone", "T.V", "Watch", "Mobile", "Laptop"];
  int currentSlider = 0;
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              const CustomAppBar(),
              const SizedBox(height: 20),
              Container(
                height: 55,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: contentColor,
                  borderRadius: BorderRadius.circular(30),
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
                child: Row(
                  children: [
                    search
                        ? GestureDetector(
                            onTap: () {
                              search = false;
                              tempSearchStore = [];
                              queryResultSet = [];
                              searchController.text = "";

                              setState(() {});
                            },
                            child: Icon(
                              Icons.close,
                              size: 30,
                              color: Colors.grey,
                            ))
                        : Icon(
                            Icons.search,
                            color: Colors.grey,
                            size: 30,
                          ),
                    const SizedBox(width: 10),
                    Flexible(
                      flex: 4,
                      child: TextField(
                        controller: searchController,
                        onChanged: (value) {
                          initiateSearch(value);
                        },
                        decoration: InputDecoration(
                            hintText: "Search...", border: InputBorder.none),
                      ),
                    ),
                    Container(
                      height: 25,
                      width: 1.5,
                      color: Colors.grey,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.tune,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              search
                  ? ListView(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      primary: false,
                      shrinkWrap: true,
                      children: tempSearchStore.map(
                        (element) {
                          return resultCard(element);
                        },
                      ).toList(),
                    )
                  : Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ImageSlider(
                          currentSlide: currentSlider,
                          onChange: (value) {
                            setState(
                              () {
                                currentSlider = value;
                              },
                            );
                          },
                        ),
                        const SizedBox(height: 20),
                        if (selectedIndex == 0)
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Categories",
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                              Text(
                                "See all",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  color: Colors.black54,
                                ),
                              ),
                            ],
                          ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 20),
                              height: 100,
                              width: 50,
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                  color: Color(0xfffd6f3e)),
                              child: Center(
                                  child: Text(
                                "All",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              )),
                            ),
                            Expanded(
                              child: Container(
                                height: 100,
                                child: ListView.builder(
                                  itemCount: categories.length,
                                  shrinkWrap: true,
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context, index) {
                                    return GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  CategoryProducts(
                                                      category:
                                                          categoryName[index]),
                                            ));
                                        debugPrint(categoryName[index]);
                                      },
                                      child: Container(
                                        margin: EdgeInsets.only(right: 20),
                                        height: 90,
                                        width: 90,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20)),
                                          color: const Color.fromARGB(
                                              255, 241, 241, 241),
                                        ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Image.asset(
                                              categories[index],
                                              height: 50,
                                              width: 50,
                                              fit: BoxFit.cover,
                                            ),
                                            Icon(Icons.arrow_forward_rounded)
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "All Products",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                            Text(
                              "See all",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: Colors.black54,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 10),
                          width: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color.fromARGB(255, 234, 235, 231),
                          ),
                          child: Column(
                            children: [
                              Container(
                                height: 100,
                                width: 100,
                                child: Image.asset(
                                  "images/headphone.PNG",
                                  fit: BoxFit.contain,
                                ),
                              ),
                              Text("Headphone"),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text("\$100"),
                                  GestureDetector(
                                    child: Container(
                                      padding: EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(7),
                                          color: Color(0xfffd6f3e)),
                                      child: Icon(
                                        Icons.add,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
            ],
          ),
        ),
      ),
    );
  }

  Widget allcategoryProducts() {
    return StreamBuilder(
      stream: productStream,
      builder: (context, AsyncSnapshot snapshot) {
        return snapshot.hasData
            ? GridView.builder(
                padding: EdgeInsets.only(left: 10, right: 10),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.6,
                    mainAxisSpacing: 10.0,
                    crossAxisSpacing: 10),
                itemCount: snapshot.data.docs.length,
                itemBuilder: (context, index) {
                  DocumentSnapshot product = snapshot.data.docs[index];

                  return Container(
                    padding: EdgeInsets.only(top: 30),
                    height: 100,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(255, 234, 235, 231),
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 150,
                          width: 150,
                          child: Image.network(
                            product["imageUrl"],
                            fit: BoxFit.contain,
                          ),
                        ),
                        Text(product["productName"]),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("\$" + product["productPrice"]),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => DetailScreen(
                                        desc: product["productDesc"],
                                        image: product["imageUrl"],
                                        name: product["productName"],
                                        price: product["productPrice"],
                                      ),
                                    ));
                              },
                              child: Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(7),
                                    color: Color(0xfffd6f3e)),
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  );
                },
              )
            : Center(child: CircularProgressIndicator());
      },
    );
  }

  Widget resultCard(data) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailScreen(
                  desc: data["productDesc"],
                  image: data["imageUrl"],
                  name: data["productName"],
                  price: data["productPrice"]),
            ));
      },
      child: Material(
        elevation: 3.0,
        borderRadius: BorderRadius.circular(20),
        child: Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20), color: Colors.grey[300]),
          padding: EdgeInsets.only(left: 20),
          height: 100,
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  data["imageUrl"],
                  height: 70,
                  width: 70,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                data["productName"],
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              )
            ],
          ),
        ),
      ),
    );
  }
}
