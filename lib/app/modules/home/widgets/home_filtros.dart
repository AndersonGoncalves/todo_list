import 'package:flutter/material.dart';

import 'todo_card_filtro.dart';

class HomeFiltros extends StatefulWidget {
  const HomeFiltros({super.key});

  @override
  State<HomeFiltros> createState() => _HomeFiltrosState();
}

class _HomeFiltrosState extends State<HomeFiltros> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'FILTROS',
          style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                color: Theme.of(context).primaryColor,
                fontWeight: FontWeight.bold,
              ),
        ),
        SizedBox(
          height: 10,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              TodoCardFiltro(),
              Container(color: Colors.red, width: 100, height: 100),
              SizedBox(width: 10),
              Container(color: Colors.blue, width: 100, height: 100),
              SizedBox(width: 10),
              Container(color: Colors.green, width: 100, height: 100),
              SizedBox(width: 10),
              Container(color: Colors.yellow, width: 100, height: 100)
            ],
          ),
        )
      ],
    );
  }
}
