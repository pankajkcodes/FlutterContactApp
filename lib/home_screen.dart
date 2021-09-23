import 'package:contactapp/user_edtails.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final List<UserDetails> users = [
    UserDetails(name: 'Ramesh Verma', phone: 22233444, age: 17),
    UserDetails(name: 'suresh verma', phone: 34333444, age: 19),
    UserDetails(name: 'suresh verma', phone: 34333444, age: 19),
    UserDetails(name: 'suresh verma', phone: 34333444, age: 19),
    UserDetails(name: 'suresh verma', phone: 34333444, age: 19),
  ];

  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Contact App'),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                onTap: () {
                  Navigator.pushNamed(context, '/about',
                      arguments: users[index]);
                },
                leading: const Icon(Icons.person),
                title: Text(users[index].name),
              ),
              elevation: 3,
            );
          },
          itemCount: users.length,
        ));
  }
}
