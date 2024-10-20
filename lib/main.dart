import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: _MainPage(),
      ),
    );
  }
}

class _MainPage extends StatelessWidget {
  const _MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 130),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Text(
              'Welcome to',
              style: TextStyle(fontSize: 35),
            ),
          ),
          Text(
            'USED ZIP',
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black87),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => _SecondPage()));
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Container(
                  width: 250,
                  height: 250,
                  alignment: Alignment.center,
                  child:
                      Image(image: AssetImage('images/assets/example2.jpg'))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Container(
              child: Text(
                'Best used trading anywhere in the world',
                textAlign: TextAlign.center,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class _SecondPage extends StatelessWidget {
  const _SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                width: 400,
                height: 60,
                color: Colors.red,
                child: Text(
                  'USED ZIP',
                  style: TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                      decoration: TextDecoration.none),
                ),
              ),
              Container(
                  margin: EdgeInsets.only(top: 40),
                  width: 200,
                  height: 200,
                  child:
                      Image(image: AssetImage('images/assets/example2.jpg'))),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text(
                  "Let's Sign in",
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.black54,
                      decoration: TextDecoration.none),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 70),
                child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(40))),
                      child: TextField(
                        decoration: InputDecoration(
                            labelText: 'Email',
                            prefixIcon: Icon(
                              Icons.person,
                              color: Colors.grey,
                            ),
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(40)),
                              borderSide: BorderSide.none,
                            )),
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 70),
                child: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(40))),
                      child: TextField(
                        decoration: InputDecoration(
                            labelText: 'Password',
                            prefixIcon: Icon(
                              Icons.password_outlined,
                              color: Colors.grey,
                            ),
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(40)),
                              borderSide: BorderSide.none,
                            )),
                      )),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                width: 380,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => _ItemListPage()));
                  },
                  child: Text(
                    'Sign In',
                    style: TextStyle(fontWeight: FontWeight.w300),
                  ),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.redAccent),
                      foregroundColor: MaterialStateProperty.all(Colors.white)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  children: [
                    Expanded(
                        child: Divider(
                      thickness: 1,
                      color: Colors.black87,
                      indent: 80,
                    )),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'OR',
                      style: TextStyle(
                          fontWeight: FontWeight.w100,
                          fontSize: 25,
                          color: Colors.black87,
                          decoration: TextDecoration.none),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        child: Divider(
                      thickness: 1,
                      color: Colors.black87,
                      endIndent: 80,
                    )),
                  ],
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 70, top: 20),
                    child: Container(
                        width: 170,
                        height: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(59)),
                            color: Colors.black),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => _ItemListPage()));
                          },
                          child: Text('Sign Up'),
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.black),
                              foregroundColor:
                                  MaterialStateProperty.all(Colors.white)),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 24, top: 20),
                    child: Container(
                        width: 170,
                        height: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(59)),
                            color: Colors.black),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => _ItemListPage()));
                          },
                          child: Text('Password Reset'),
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.black),
                              foregroundColor:
                                  MaterialStateProperty.all(Colors.white)),
                        )),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Item {
  final String image;
  final String name;
  final String description;
  final String price;

  Item({
    required this.image,
    required this.name,
    required this.description,
    required this.price,
  });
}

class _ItemListPage extends StatelessWidget {
  final List<Item> items = [
    Item(
        image: 'images/assets/example2.jpg',
        name: 'Iphone 14',
        description: 'An apple mobile is nothing like apple',
        price: '\$ 7.000.000'),
    Item(
        image: 'images/assets/example2.jpg',
        name: 'Iphone 9',
        description: 'An apple mobile is nothing like apple',
        price: '\$ 2.000.000'),
    Item(
        image: 'images/assets/example2.jpg',
        name: 'Iphone 11',
        description: 'An apple mobile is nothing like apple',
        price: '\$ 4.000.000'),
    Item(
        image: 'images/assets/example2.jpg',
        name: 'Iphone 13',
        description: 'An apple mobile is nothing like apple',
        price: '\$ 5.000.000')
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Container(
                color: Colors.redAccent,
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      child: Icon(Icons.search),
                    ),
                    SizedBox(
                      width: 60,
                    ),
                    Text(
                      'Korea - GoYang',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          decoration: TextDecoration.none),
                    ),
                    SizedBox(
                      width: 60,
                    ),
                    Container(
                      child: Icon(Icons.notifications_active),
                    ),
                  ],
                ),
              ),
              Container(
                  height: 230,
                  width: 527,
                  child: Image(
                    image: AssetImage('images/assets/example2.jpg'),
                    fit: BoxFit.cover,
                  )),
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Text(
                        'Lastest Items',
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.redAccent),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: Container(
                      width: 200,
                      height: 205,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                spreadRadius: 1,
                                blurRadius: 10,
                                offset: Offset(5, 5),
                                color: Colors.black.withOpacity(0.1))
                          ],
                          borderRadius:
                              BorderRadius.all(Radius.circular(20.0))),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'images/assets/example2.jpg'))),
                              child: SizedBox(
                                width: 90,
                                height: 90,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Iphone 14',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.black),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Text(
                              'An apple mobile is nothing like apple',
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Text(
                              '\$ 7.000.000',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.black),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: Container(
                      width: 200,
                      height: 205,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                spreadRadius: 1,
                                blurRadius: 10,
                                offset: Offset(5, 5),
                                color: Colors.black.withOpacity(0.1))
                          ],
                          borderRadius:
                              BorderRadius.all(Radius.circular(20.0))),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'images/assets/example2.jpg'))),
                              child: SizedBox(
                                width: 90,
                                height: 90,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Iphone 14',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.black),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Text(
                              'An apple mobile is nothing like apple',
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Text(
                              '\$ 7.000.000',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.black),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Text(
                        'Your Publications',
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.redAccent),
                      ),
                    )
                  ],
                ),
              ),
              GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount:
                        2, // Aspect ratio of each item (width/height)
                  ),
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => _ItemListDetailPage(
                                        item: items[index],
                                      )));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    spreadRadius: 1,
                                    blurRadius: 10,
                                    offset: Offset(5, 5),
                                    color: Colors.black.withOpacity(0.1))
                              ],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20.0))),
                          child: Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(boxShadow: [
                                  BoxShadow(
                                      spreadRadius: 1,
                                      blurRadius: 18,
                                      offset: Offset(5, 5),
                                      color: Colors.black.withOpacity(0.3))
                                ]),
                                child: DecoratedBox(
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(items[index].image),
                                          fit: BoxFit.fitWidth),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20))),
                                  child: SizedBox(
                                    width: 232,
                                    height: 120,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                items[index].name,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: Colors.black),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Text(
                                  items[index].description,
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: Text(
                                  items[index].price,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                      color: Colors.black),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }
}

class _ItemListDetailPage extends StatelessWidget {
  final Item item;
  _ItemListDetailPage({required this.item});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 500,
          height: 300,
          child: Image(
            image: AssetImage(item.image),
            fit: BoxFit.fitWidth,
          ),
        ),
        Row(
          children: [
            Text(
              item.name,
              style: TextStyle(decoration: TextDecoration.none, fontSize: 20.0),
            ),
          ],
        ),
        Row(
          children: [
            Text(
              item.description,
              style: TextStyle(decoration: TextDecoration.none, fontSize: 20.0),
            ),
          ],
        ),
        Row(
          children: [
            Text(
              item.price,
              style: TextStyle(decoration: TextDecoration.none, fontSize: 20.0),
            ),
          ],
        ),
      ],
    );
  }
}
