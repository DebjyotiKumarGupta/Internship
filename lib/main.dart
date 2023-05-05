import 'package:flutter/material.dart';
import 'package:internship_2/product.dart';

import 'BottomNavi.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool active = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.blue[50],
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 3,
              width: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Container(
                height: 3,
                width: 20,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey,
                ),
              ),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Icon(
              Icons.library_books,
              color: Colors.grey,
              size: 30,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(
              Icons.notifications_none_outlined,
              color: Colors.grey,
              size: 30,
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 60,
        // decoration: BoxDecoration(
        //   color: Color(0xFF222B45),
        // ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BottonFunc(
                isActive: true,
                onPress: () {},
                title: 'Search',
                ico: Icon(
                  Icons.home_rounded,
                  color: Colors.blue,
                ),
              ),
              BottonFunc(
                ico: Icon(
                  Icons.menu_book_rounded,
                  color: Colors.grey,
                ),
                isActive: false,
                onPress: () {},
                title: 'Saved',
              ),
              BottonFunc(
                ico: Icon(
                  Icons.window_rounded,
                  color: Colors.grey,
                ),
                isActive: false,
                onPress: () {},
                title: 'Saved',
              ),
              BottonFunc(
                ico: Icon(
                  Icons.chat_bubble_outline_rounded,
                  color: Colors.grey,
                ),
                isActive: false,
                onPress: () {},
                title: 'account',
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 15,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: 14,
                        backgroundColor: Colors.white,
                        child: Image.asset('assets/profile1.png'),
                      ),
                    ),
                    Text(
                      "Profile",
                      style: TextStyle(fontSize: 10),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.blue[50],
              ),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hello, Priya!",
                      style: TextStyle(
                        // fontWeight: FontWeight.bold,
                        fontSize: 35,
                        color: Colors.black,
                        // fontFamily: 'Times of Roman',
                      ),
                    ),
                    Text(
                      "What do you wanna learn today?",
                      style: TextStyle(fontSize: 20, color: Colors.grey),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 60,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.blue),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 20),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Icon(
                                        Icons.collections_bookmark_rounded,
                                        color: Colors.blue,
                                      ),
                                      Text(
                                        "Programs",
                                        style: TextStyle(
                                            color: Colors.blue, fontSize: 18),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 60,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.blue),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 20),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Icon(
                                        Icons.help,
                                        color: Colors.blue,
                                      ),
                                      Text(
                                        "Get help",
                                        style: TextStyle(
                                            color: Colors.blue, fontSize: 18),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 60,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.blue),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 20),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Icon(
                                      Icons.menu_book,
                                      color: Colors.blue,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 20),
                                      child: Text(
                                        "Learn",
                                        style: TextStyle(
                                            color: Colors.blue, fontSize: 18),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 60,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.blue),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 20),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Icon(
                                      Icons.mark_as_unread,
                                      color: Colors.blue,
                                    ),
                                    Text(
                                      "DD Tracker",
                                      style: TextStyle(
                                          color: Colors.blue, fontSize: 18),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: Text(
                      "Programs for you",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        "View all ",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey[700],
                        ),
                      ),
                      Icon(Icons.arrow_forward, color: Colors.grey[700]),
                    ],
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    signalProducts(
                      productImage:
                          'https://www.healthshots.com/wp-content/uploads/2020/09/surya-namaskar-.jpg',
                      productName: 'LIFESTYLE',
                      tap: () {},
                      time: '16 lessons',
                      title: 'A complete guide for your new born baby',
                      view: Container(),
                    ),
                    signalProducts(
                      productImage:
                          'https://www.healthshots.com/wp-content/uploads/2020/09/surya-namaskar-.jpg',
                      productName: 'WORKING PANLIDROME',
                      tap: () {},
                      time: '12 lessons',
                      title: 'Understanding of human behaviour',
                      view: Container(),
                    ),
                    signalProducts(
                      productImage:
                          'https://www.healthshots.com/wp-content/uploads/2020/09/surya-namaskar-.jpg',
                      productName: 'WORKING PANLIDROME',
                      tap: () {},
                      time: '12 lessons',
                      title: 'Understanding of human behaviour',
                      view: Container(),
                    ),
                    signalProducts(
                      productImage:
                          'https://www.healthshots.com/wp-content/uploads/2020/09/surya-namaskar-.jpg',
                      productName: 'WORKING PANLIDROME',
                      tap: () {},
                      time: '12 lessons',
                      title: 'Understanding of human behaviour',
                      view: Container(),
                    )
                  ],
                )),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: Text(
                      "Events and experiences",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        "View all ",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey[700],
                        ),
                      ),
                      Icon(Icons.arrow_forward, color: Colors.grey[700]),
                    ],
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    signalProducts(
                      productImage:
                          'https://www.healthshots.com/wp-content/uploads/2020/09/surya-namaskar-.jpg',
                      productName: 'BABYCARE',
                      tap: () {},
                      time: '3 min',
                      title: 'Understanding of human behaviour',
                      view: Container(
                        height: 20,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.blue),
                        ),
                        child: Center(
                          child: Text(
                            "Book",
                            style: TextStyle(color: Colors.blue),
                          ),
                        ),
                      ),
                    ),
                    signalProducts(
                      productImage:
                          'https://www.healthshots.com/wp-content/uploads/2020/09/surya-namaskar-.jpg',
                      productName: 'BABYCARE',
                      tap: () {},
                      time: '3 min',
                      title: 'Understanding of human behaviour',
                      view: Container(
                        height: 20,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.blue),
                        ),
                        child: Center(
                          child: Text(
                            "Book",
                            style: TextStyle(color: Colors.blue),
                          ),
                        ),
                      ),
                    ),
                    signalProducts(
                      productImage:
                          'https://www.healthshots.com/wp-content/uploads/2020/09/surya-namaskar-.jpg',
                      productName: 'BABYCARE',
                      tap: () {},
                      time: '3 min',
                      title: 'Understanding of human behaviour',
                      view: Container(
                        height: 20,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.blue),
                        ),
                        child: Center(
                          child: Text(
                            "Book",
                            style: TextStyle(color: Colors.blue),
                          ),
                        ),
                      ),
                    ),
                    signalProducts(
                      productImage:
                          'https://www.healthshots.com/wp-content/uploads/2020/09/surya-namaskar-.jpg',
                      productName: 'BABYCARE',
                      tap: () {},
                      time: '3 min',
                      title: 'Understanding of human behaviour',
                      view: Container(
                        height: 20,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.blue),
                        ),
                        child: Center(
                          child: Text(
                            "Book",
                            style: TextStyle(color: Colors.blue),
                          ),
                        ),
                      ),
                    ),
                    signalProducts(
                      productImage:
                          'https://www.healthshots.com/wp-content/uploads/2020/09/surya-namaskar-.jpg',
                      productName: 'BABYCARE',
                      tap: () {},
                      time: '3 min',
                      title: 'Understanding of human behaviour',
                      view: Container(
                        height: 20,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.blue),
                        ),
                        child: Center(
                          child: Text(
                            "Book",
                            style: TextStyle(color: Colors.blue),
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: Text(
                      "Lessons for you",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        "View all ",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey[700],
                        ),
                      ),
                      Icon(Icons.arrow_forward, color: Colors.grey[700]),
                    ],
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    signalProducts(
                      productImage:
                          'https://www.healthshots.com/wp-content/uploads/2020/09/surya-namaskar-.jpg',
                      productName: 'BABYCARE',
                      tap: () {},
                      time: '3 min',
                      title: 'Understanding of human behaviour',
                      view: Container(
                        child: Icon(Icons.lock),
                      ),
                    ),
                    signalProducts(
                      productImage:
                          'https://www.healthshots.com/wp-content/uploads/2020/09/surya-namaskar-.jpg',
                      productName: 'BABYCARE',
                      tap: () {},
                      time: '3 min',
                      title: 'Understanding of human behaviour',
                      view: Container(
                        child: Icon(Icons.lock),
                      ),
                    ),
                    signalProducts(
                      productImage:
                          'https://www.healthshots.com/wp-content/uploads/2020/09/surya-namaskar-.jpg',
                      productName: 'BABYCARE',
                      tap: () {},
                      time: '3 min',
                      title: 'Understanding of human behaviour',
                      view: Container(
                        child: Icon(Icons.lock),
                      ),
                    ),
                    signalProducts(
                      productImage:
                          'https://www.healthshots.com/wp-content/uploads/2020/09/surya-namaskar-.jpg',
                      productName: 'BABYCARE',
                      tap: () {},
                      time: '3 min',
                      title: 'Understanding of human behaviour',
                      view: Container(
                        child: Icon(Icons.lock),
                      ),
                    ),
                    signalProducts(
                      productImage:
                          'https://www.healthshots.com/wp-content/uploads/2020/09/surya-namaskar-.jpg',
                      productName: 'BABYCARE',
                      tap: () {},
                      time: '3 min',
                      title: 'Understanding of human behaviour',
                      view: Container(
                        child: Icon(Icons.lock),
                      ),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}

class CategoryCard extends StatefulWidget {
  final Icon ico;
  final String title;
  final Function onPress;
  final bool isActive;
  const CategoryCard(
      {super.key,
      required this.ico,
      required this.title,
      required this.onPress,
      this.isActive = false});

  @override
  State<CategoryCard> createState() => _CategoryCardState();
}

class _CategoryCardState extends State<CategoryCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.blue),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          widget.ico,
          Text(
            widget.title,
            style: TextStyle(color: Colors.blue),
          ),
        ],
      ),
    );
  }
}
