import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Api_1 extends StatefulWidget {
  const Api_1({super.key});

  @override
  State<Api_1> createState() => _Api_1State();
}

class _Api_1State extends State<Api_1> {
  late List<dynamic> items = [];

  @override
  void initState() {
    super.initState();
    fetchItems();
  }

  Future<void> fetchItems() async {
    final response = await http.get(
        Uri.parse('https://632017e19f82827dcf24a655.mockapi.io/api/programs'));
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      setState(() {
        items = data['items'];
      });
    } else {
      throw Exception('Failed to fetch items');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Api_1'),
        backgroundColor: Colors.red,
      ),
      body: items.isEmpty
          ? Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemCount: items.length,
              itemBuilder: (BuildContext context, int index) {
                final item = items[index];
                return ListTile(
                  title: Text(item['name']),
                  subtitle: Text(item['category']),
                  trailing: Text('Lesson ${item['lesson']}'),
                );
              },
            ),
    );
  }
}
