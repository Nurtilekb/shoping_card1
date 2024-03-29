
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:magazinbek/bloc/car_bloc.dart';

class Spiski extends StatelessWidget {
  const Spiski({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CarBloc, CarState>(
      builder: (context, state) {
        return ListView.builder(
          itemCount:2,
          itemBuilder: (context, index) {
return Container(
color: Colors.amber,
);
          },
        );
      },
    );
  }
}
