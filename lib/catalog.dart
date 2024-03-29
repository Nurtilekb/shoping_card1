import 'package:flutter/material.dart';

import 'widgets/contayner.dart';

class Catalogi extends StatelessWidget {
  const Catalogi({
    super.key,
    required this.contlist,
  });

  final List<Conteyner> contlist;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
        childAspectRatio: 1.0,
      ),
      itemCount: contlist.length,
      itemBuilder: (BuildContext context, int index) {
        return Stack(children: [
          SizedBox(height: double.infinity,child: contlist[index],),
          Positioned(
              right: 1,
              bottom: 1,
              child: IconButton.outlined(
                onPressed: () {
                  print('$index');
                },
                icon: const Icon(Icons.shopping_cart),
                color: Colors.green,
              ))
        ]);
      },
    );
  }
}
