import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Map;
    final name = args['name'];
    final phone = args['phone'];
    final age = args['id'];
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Name - $name'),
            const SizedBox(
              height: 20,
            ),
            Text('Age - $age'),
            const SizedBox(
              height: 20,
            ),
            Text('Phone - $phone'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.call),
        onPressed: () async {
          final _url = 'tel:$phone';
          await canLaunch(_url)
              ? await launch(_url)
              : throw 'Could not launch $_url';
        },
      ),
    );
  }
}
