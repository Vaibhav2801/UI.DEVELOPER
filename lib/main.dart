import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Chat App",
      home: new HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new FlutterLogo(colors: Colors.green, size: 25.0),
        elevation: 1.0,
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {},
          color: Colors.grey,
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
            color: Colors.grey,
          )
        ],
      ),
      body: ListView(
        shrinkWrap: true,
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                alignment: Alignment(0.0, -0.4),
                height: 100.0,
                color: Colors.white,
                child: Text(
                  "GET COACHING",
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(25.0, 90.0, 25.0, 0.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0),
                    boxShadow: [
                      BoxShadow(blurRadius: 2.0, color: Colors.grey)
                    ]),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      children: [
                        Stack(
                          children: <Widget>[
                            Container(
                              padding:
                                  EdgeInsets.fromLTRB(25.0, 25.0, 5.0, 5.0),
                              child: Text(
                                "YOU HAVE",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14.0,
                                ),
                              ),
                            ),
                            Container(
                              padding:
                                  EdgeInsets.fromLTRB(25.0, 40.0, 5.0, 25.0),
                              child: Text(
                                "206",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 40.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 90.0),
                        Container(
                          height: 50.0,
                          width: 100.0,
                          decoration: BoxDecoration(
                              color: Colors.greenAccent[100].withOpacity(0.5),
                              borderRadius: BorderRadius.circular(10.0)),
                          child: Center(
                            child: Text(
                              "Buy More",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.green),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 30.0),
          Container(
            padding: EdgeInsets.only(left: 25.0, right: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "My Coaches",
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 12.0),
                ),
                Text(
                  "VIEW PAST SESSIONS",
                  style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: 12.0),
                )
              ],
            ),
          ),
          SizedBox(height: 10.0),
          GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 2.0,
            primary: false,
            mainAxisSpacing: 4.0,
            shrinkWrap: true,
            children: <Widget>[
              _buildcard("Tom", "Available", 1),
              _buildcard("Vaibhav", "Away", 2),
              _buildcard("Shivam", "Away", 3),
              _buildcard("Chintu", "Available", 4),
              _buildcard("Sarthak", "Available", 5),
              _buildcard("Levi", "Avway", 6),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildcard(String name, String status, int cardIndex) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      elevation: 7.0,
      child: Column(children: <Widget>[
        Container(
          height: 60.0,
          width: 60.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0),
              color: Colors.green,
              image: DecorationImage(
                  image: NetworkImage(
                      "https://www.biography.com/.image/t_share/MTE5NDg0MDU0OTM2NTg1NzQz/tom-cruise-9262645-1-402.jpg"))),
        ),
        Container(
          margin: EdgeInsets.only(left: 35.0),
          height: 20.0,
          width: 20.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            color: status == "Away" ? Colors.amber : Colors.green,
            border: Border.all(
                color: Colors.white, style: BorderStyle.solid, width: 2.0),
          ),
        ),
        SizedBox(height: 8.0),
        Text(
          status,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 12.0,
            color: Colors.grey,
          ),
        ),
        SizedBox(height: 15.0),
        Expanded(
          child: Container(
            width: 175.0,
            decoration: BoxDecoration(
                color: status == 'Away' ? Colors.grey : Colors.green,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10.0),
                  bottomRight: Radius.circular(10.0),
                )),
            child: Center(
              child: Text(
                "Request",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
      ]),
      margin: cardIndex.isEven
          ? EdgeInsets.fromLTRB(10.0, 0.0, 25.0, 0.0)
          : EdgeInsets.fromLTRB(25.0, 0.0, 5.0, 0.0),
    );
  }
}
