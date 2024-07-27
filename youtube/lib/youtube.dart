import 'package:flutter/material.dart';

class Youtube extends StatelessWidget {
  const Youtube({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [
        Container(
          height: 40,
          width: 70,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                  image: AssetImage("image/youtube.png"), fit: BoxFit.cover)),
        ),
        Container(
          margin: EdgeInsets.only(right: 125),
          child: Text(
            "YouTube",
            style: TextStyle(fontSize: 20),
          ),
        ),
        Container(
            margin: EdgeInsets.only(right: 5),
            child: Icon(Icons.cast_outlined)),
        Container(
            margin: EdgeInsets.only(right: 5),
            child: Icon(Icons.add_alert_rounded)),
        Icon(Icons.search),
      ]),
      body: ListView.builder(
        itemCount: 4,
        itemBuilder: (context, index) {
          return Column(children: [
            Container(
              height: 200,
              width: double.infinity,
              color: Colors.red,
              child: Image.asset(
                "image/rega.jpeg",
                fit: BoxFit.cover,
              ),
            ),
            Row(
              children: [
                Container(
                  height: 50,
                  width: 50,
                  margin: EdgeInsets.only(left: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      image: DecorationImage(
                          image: AssetImage("image/parv.jpeg"))),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10, top: 10, bottom: 10),
                  child: Text(
                      "SERIOUS GAMEPLAY TODAY | ONLY \nCHICKEN DINNER | REGALTOS IS LIVE \nSouL Regaltos"),
                ),
                Container(
                    margin: EdgeInsets.only(left: 10, bottom: 10),
                    child: Icon(Icons.more_horiz_rounded))
              ],
            )
          ]);
        },
      ),
      bottomNavigationBar: Container(
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Icon(Icons.home_filled),
                Container(margin: EdgeInsets.only(left: 5), child: Text("Home"))
              ],
            ),
            Column(
              children: [
                Icon(Icons.video_collection_rounded),
                Container(
                    margin: EdgeInsets.only(left: 5), child: Text("Shorts"))
              ],
            ),
            Icon(Icons.add_circle_outline_sharp),
            Column(
              children: [
                Icon(Icons.subscriptions),
                Container(
                    margin: EdgeInsets.only(left: 5),
                    child: Text("Subscription"))
              ],
            ),
            Column(
              children: [
                Container(
                    margin: EdgeInsets.only(right: 5),
                    child: Icon(Icons.account_circle_rounded)),
                Container(margin: EdgeInsets.only(right: 5), child: Text("You"))
              ],
            )
          ],
        ),
      ),
    );
  }
}
