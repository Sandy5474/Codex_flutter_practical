// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Screen extends StatelessWidget {
  const Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Instagram',
          style: TextStyle(
              fontStyle: FontStyle.italic, fontWeight: FontWeight.w800),
        ),
        actions: [
          IconButton(
              onPressed: () {
                print('icon pressed');
              },
              icon: Icon(Icons.favorite_outline_rounded)),
          IconButton(
              onPressed: () {
                print("icon pressed");
              },
              icon: Icon(Icons.message))
        ],
      ),
      body: SizedBox(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(100)),
                              color: Color.fromARGB(255, 255, 255, 255),
                              image: DecorationImage(
                                  image: AssetImage("assets/rose.jpg"),
                                  fit: BoxFit.cover),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            child: Text("Your Story"),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(100)),
                                border: Border.all(
                                  color: Colors.red,
                                  width: 5,
                                ),
                                image: DecorationImage(
                                    image: AssetImage("assets/sandy.jpg"),
                                    fit: BoxFit.cover)),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            child: Text("Sandy"),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(100)),
                                border: Border.all(color: Colors.red, width: 5),
                                image: DecorationImage(
                                    image: AssetImage("assets/rutu.jpg"),
                                    fit: BoxFit.cover)),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            child: Text("Rutuja"),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(100)),
                                border: Border.all(
                                    color: const Color.fromARGB(
                                        255, 106, 240, 110),
                                    width: 5),
                                image: DecorationImage(
                                    image: AssetImage("assets/jidnesh.jpg"),
                                    fit: BoxFit.cover)),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            child: Text("Jidnesh"),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      margin: EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(100)),
                          //color: Color.fromARGB(255, 4, 48, 5),
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://cdn.hero.page/wallpapers/28d841fd-fa7f-44e9-b804-57ea19944052-marvel-universe-the-incredible-hulk-wallpaper-1.png"),
                              fit: BoxFit.cover)),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      child: Text("HULK", style: TextStyle(fontSize: 20)),
                    ),
                    SizedBox(
                      width: 200,
                    ),
                    Container(
                      child: IconButton(
                          onPressed: () {}, icon: Icon(Icons.more_horiz)),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 300,
                  width: 400,
                  child: Image.network(
                    'https://cdn.hero.page/wallpapers/28d841fd-fa7f-44e9-b804-57ea19944052-marvel-universe-the-incredible-hulk-wallpaper-1.png',
                    fit: BoxFit.fill,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.favorite_outline_rounded),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.insert_comment_rounded),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.near_me_outlined),
                    SizedBox(
                      width: 240,
                    ),
                    Icon(Icons.bookmark_border_outlined)
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      margin: EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(100)),
                          image: DecorationImage(
                              image: AssetImage("assets/lambo.png"),
                              fit: BoxFit.cover)),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      child: Text("Lamborgini",
                          style: TextStyle(
                            fontSize: 20,
                          )),
                    ),
                    SizedBox(
                      width: 150,
                    ),
                    Container(
                      child: IconButton(
                          onPressed: () {}, icon: Icon(Icons.more_horiz)),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 300,
                  width: 400,
                  color: Colors.black,
                  child: Image.network(
                    'https://images.unsplash.com/photo-1519245659620-e859806a8d3b?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.favorite_outline_rounded),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.insert_comment_rounded),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.near_me_outlined),
                    SizedBox(
                      width: 240,
                    ),
                    Icon(Icons.bookmark_border_outlined)
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      margin: EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(100)),
                          image: DecorationImage(
                              image: AssetImage("assets/bmw.png"),
                              fit: BoxFit.cover)),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      child: Text("B M W",
                          style: TextStyle(
                            fontSize: 20,
                          )),
                    ),
                    SizedBox(
                      width: 190,
                    ),
                    Container(
                      child: IconButton(
                          onPressed: () {}, icon: Icon(Icons.more_horiz)),
                    )
                  ],
                ),
                Container(
                  height: 300,
                  width: 400,
                  color: Colors.black,
                  child: Image.network(
                    'https://images.unsplash.com/photo-1616455164843-dc474e264ba6?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                    fit: BoxFit.fill,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.favorite_outline_rounded),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.insert_comment_rounded),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.near_me_outlined),
                    SizedBox(
                      width: 240,
                    ),
                    Icon(Icons.bookmark_border_outlined)
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      margin: EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(100)),
                          image: DecorationImage(
                              image: AssetImage("assets/supra.jpeg"),
                              fit: BoxFit.cover)),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      child: Text("Supra",
                          style: TextStyle(
                            fontSize: 20,
                          )),
                    ),
                    SizedBox(
                      width: 190,
                    ),
                    Container(
                      child: IconButton(
                          onPressed: () {}, icon: Icon(Icons.more_horiz)),
                    )
                  ],
                ),
                Container(
                  height: 300,
                  width: 400,
                  color: Colors.black,
                  child: Image.network(
                    'https://images.pexels.com/photos/3874337/pexels-photo-3874337.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                    fit: BoxFit.fill,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.favorite_outline_rounded),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.insert_comment_rounded),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.near_me_outlined),
                    SizedBox(
                      width: 240,
                    ),
                    Icon(Icons.bookmark_border_outlined)
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 50,
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Icon(Icons.home_filled),
          Icon(Icons.search_rounded),
          Icon(Icons.add_box_outlined),
          Icon(Icons.movie_filter_outlined),
          Icon(Icons.account_circle_outlined)
        ]),
      ),
    );
  }
}
