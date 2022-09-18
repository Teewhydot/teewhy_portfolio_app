import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: TeeWhy(),
      ),
    );
  }
}

class TeeWhy extends StatefulWidget {
  const TeeWhy({Key? key}) : super(key: key);

  @override
  State<TeeWhy> createState() => _TeeWhyState();
}

class _TeeWhyState extends State<TeeWhy> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/tee.jpg'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
