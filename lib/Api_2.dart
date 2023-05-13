import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Api_2 extends StatefulWidget {
  const Api_2({super.key});

  @override
  State<Api_2> createState() => _Api_2State();
}

class _Api_2State extends State<Api_2> {
  late List<dynamic> _items = [];

  @override
  void initState() {
    super.initState();
    fetchItems();
  }

  Future<void> fetchItems() async {
    final response = await http.get(
        Uri.parse('https://632017e19f82827dcf24a655.mockapi.io/api/lessons'));
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      setState(() {
        _items = data['items'];
      });
    } else {
      throw Exception('Failed to fetch items');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Api_2'),
        backgroundColor: Colors.red,
      ),
      body: _items.isEmpty
          ? Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemCount: _items.length,
              itemBuilder: (context, index) {
                final item = _items[index];
                return Card(
                  child: ListTile(
                    title: Text(item['name']),
                    subtitle: Text(item['category']),
                    trailing: Text('${item['duration']} mins'),
                  ),
                );
              },
            ),
    );
  }
}
