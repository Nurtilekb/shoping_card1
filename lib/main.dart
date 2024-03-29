import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:magazinbek/bloc/car_bloc.dart';

import 'catalog.dart';
import 'spisok.dart';
import 'widgets/contayner.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CarBloc(),
      child: const MaterialApp(
        home: MyTabBarExample(),
      ),
    );
  }
}

class MyTabBarExample extends StatefulWidget {
  const MyTabBarExample({super.key});

  @override
  _MyTabBarExampleState createState() => _MyTabBarExampleState();
}

class _MyTabBarExampleState extends State<MyTabBarExample> {
  final List<Tab> myTabs = [
    const Tab(
        child: Text(' Catalog',
            style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold))),
    const Tab(
        child: Text('Shop List',
            style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold))),
  ];
  final contlist = [
    Conteyner(
      image1: 'assets/images/m1.jpeg',
      ontap1: () {},
    ),
    Conteyner(
      image1: 'assets/images/m2.jpeg',
      ontap1: () {},
    ),
    Conteyner(
      image1: 'assets/images/m3.jpeg',
      ontap1: () {},
    ),
    Conteyner(
      image1: 'assets/images/m5.jpeg',
      ontap1: () {},
    ),
    Conteyner(
      image1: 'assets/images/m1.jpeg',
      ontap1: () {},
    ),
    Conteyner(
      image1: 'assets/images/m2.jpeg',
      ontap1: () {},
    ),
    Conteyner(
      image1: 'assets/images/m3.jpeg',
      ontap1: () {},
    ),
    Conteyner(
      image1: 'assets/images/m5.jpeg',
      ontap1: () {},
    ),
    Conteyner(
      image1: 'assets/images/m1.jpeg',
      ontap1: () {},
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: myTabs.length,
        child: Scaffold(
            backgroundColor: const Color.fromARGB(255, 78, 68, 77),
            appBar: AppBar(
              toolbarHeight: 30,
              backgroundColor: const Color.fromARGB(255, 0, 0, 0),
              title: const Text(
                'Magazinbek',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              bottom: TabBar(
                tabs: myTabs,
              ),
            ),
            body: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TabBarView(children: [
                Catalogi(contlist: contlist),
               const Spiski()
              ]),
            )));
  }
}


