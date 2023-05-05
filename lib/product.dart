import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';

class signalProducts extends StatefulWidget {
  final String productImage;
  final String productName;
  final Function tap;
  final String title;
  final String time;
  final Container view;
  signalProducts(
      {required this.productImage,
      required this.productName,
      required this.tap,
      required this.title,
      required this.time,
      required this.view});

  @override
  State<signalProducts> createState() => _signalProductsState();
}

class _signalProductsState extends State<signalProducts> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Card(
        elevation: 3,
        child: Container(
          height: 280,
          width: 240,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  height: 125,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: Image.asset('assets/image.png').image,
                        fit: BoxFit.fill),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: 125,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.productName,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.blue),
                        ),
                        Text(
                          widget.title,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              widget.time,
                              style: TextStyle(color: Colors.grey),
                            ),
                            widget.view,
                          ],
                        )
                      ],
                    ),
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
