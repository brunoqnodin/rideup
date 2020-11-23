import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<String> images = [
    "https://static.wixstatic.com/media/839663_73eb181a945a41fd936d83abb19074fe~mv2.jpg/v1/fill/w_225,h_225,al_c,q_80,usm_0.66_1.00_0.01/839663_73eb181a945a41fd936d83abb19074fe~mv2.webp",
    "https://static.wixstatic.com/media/839663_3c694ac787084960852c7fb0d49a2795~mv2.jpg/v1/fill/w_225,h_225,al_c,q_80,usm_0.66_1.00_0.01/839663_3c694ac787084960852c7fb0d49a2795~mv2.webp",
    "https://static.wixstatic.com/media/839663_c1507da512f84fae91928343678c8a6d~mv2.png/v1/fill/w_225,h_225,al_c,q_85,usm_0.66_1.00_0.01/839663_c1507da512f84fae91928343678c8a6d~mv2.webp",
    "https://static.wixstatic.com/media/839663_a5021af9b74244bc8faf3b29dff6dcf0~mv2.jpg/v1/fill/w_225,h_225,al_c,q_80,usm_0.66_1.00_0.01/839663_a5021af9b74244bc8faf3b29dff6dcf0~mv2.webp",
    "https://static.wixstatic.com/media/839663_d7591e0efb3640018e67b1e01caaedd6~mv2.jpg/v1/fill/w_225,h_225,al_c,lg_1,q_80/839663_d7591e0efb3640018e67b1e01caaedd6~mv2.webp"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          "images/rideup.png",
          height: 62,
        ),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
        iconTheme: IconThemeData(color: Colors.white),
        actions: [
          IconButton(
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white70,
          child: Column(
            children: [
              PreferredSize(
                child: Container(
                  padding: EdgeInsets.all(10.0),
                  child: Card(
                    child: Container(
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            icon: IconButton(
                                onPressed: () {}, icon: Icon(Icons.search)),
                            suffixIcon: IconButton(
                                onPressed: () {}, icon: Icon(Icons.mic))),
                      ),
                    ),
                  ),
                ),
              ),
              _buildShopItem(),
              _buildShopItem(),
              _buildShopItem(),
              _buildShopItem(),
              _buildShopItem(),
            ],
          ),
        ),
      ),
      drawer: Theme(
        data: Theme.of(context).copyWith(canvasColor: Colors.blueGrey),
        child: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Container(
                  child: DrawerHeader(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(
                          height: 20,
                        ),
                        Image.asset("images/rideup.png"),
                      ],
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.blueGrey,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                padding: EdgeInsets.only(left: 5),
                alignment: Alignment.centerLeft,
                child: FlatButton.icon(
                  textColor: Colors.white70,
                  onPressed: () {},
                  icon: Icon(Icons.home),
                  label: Text("      Home"),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Divider(
                  color: Colors.white70,
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 5),
                alignment: Alignment.centerLeft,
                child: FlatButton.icon(
                  textColor: Colors.white70,
                  onPressed: () {},
                  icon: Icon(Icons.card_giftcard),
                  label: Text("      Produtos"),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Divider(
                  color: Colors.white70,
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 5),
                alignment: Alignment.centerLeft,
                child: FlatButton.icon(
                  textColor: Colors.white70,
                  onPressed: () {},
                  icon: Icon(Icons.shopping_cart),
                  label: Text("      Carrinho"),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Divider(
                  color: Colors.white70,
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 5),
                alignment: Alignment.centerLeft,
                child: FlatButton.icon(
                  textColor: Colors.white70,
                  onPressed: () {},
                  icon: Icon(Icons.help),
                  label: Text("     Como Funcionamos"),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Divider(
                  color: Colors.white70,
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 5),
                alignment: Alignment.centerLeft,
                child: FlatButton.icon(
                  textColor: Colors.white70,
                  onPressed: () {},
                  icon: Icon(Icons.phone_in_talk),
                  label: Text("     Sugestões"),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Divider(
                  color: Colors.white70,
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 5),
                alignment: Alignment.centerLeft,
                child: FlatButton.icon(
                  textColor: Colors.white70,
                  onPressed: () {},
                  icon: Icon(Icons.chat),
                  label: Text("     Fale Conosco"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildShopItem() {
    return Container(
      padding: EdgeInsets.only(left: 10.0, right: 10.0),
      margin: EdgeInsets.only(bottom: 20.0),
      height: 300,
      child: Row(
        children: <Widget>[
          Expanded(
              child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://static.wixstatic.com/media/839663_21b67d1627a24a3ea1b79ce3017159aa~mv2.png/v1/fill/w_225,h_225,al_c,q_85,usm_0.66_1.00_0.01/839663_21b67d1627a24a3ea1b79ce3017159aa~mv2.webp"),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey,
                      offset: Offset(5.0, 5.0),
                      blurRadius: 10.0)
                ]),
          )),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Cabo Flat CB15 TYPE-C",
                    style:
                        TextStyle(fontSize: 22.0, fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text("Pedido Minimo 20/PÇs",
                      style: TextStyle(color: Colors.grey, fontSize: 18.0)),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text("6,50",
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 30.0,
                      )),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text("#USB #Cabo",
                      style: TextStyle(
                          fontSize: 18.0, color: Colors.grey, height: 1.5))
                ],
              ),
              margin: EdgeInsets.only(top: 20.0, bottom: 20.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(10.0),
                      topRight: Radius.circular(10.0)),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey,
                        offset: Offset(5.0, 5.0),
                        blurRadius: 10.0)
                  ]),
            ),
          )
        ],
      ),
    );
  }
}
