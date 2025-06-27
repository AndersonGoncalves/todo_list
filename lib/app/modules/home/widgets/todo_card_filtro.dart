import 'package:flutter/material.dart';

import '../../../core/ui/theme_extensions.dart';

class TodoCardFiltro extends StatefulWidget {
  const TodoCardFiltro({super.key});

  @override
  State<TodoCardFiltro> createState() => _TodoCardFiltroState();
}

class _TodoCardFiltroState extends State<TodoCardFiltro> {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        minWidth: 150,
        minHeight: 120,
      ),
      margin: EdgeInsets.only(right: 10),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: context.primaryColor,
        border: Border.all(color: Colors.grey.withOpacity(.8), width: 1),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // SizedBox(
          //   height: 21,
          //   width: 21,
          //   child: CircularProgressIndicator(),
          // ),
          Text(
            '10 TASKS',
            style:
                context.titleStyle.copyWith(fontSize: 10, color: Colors.white),
          ),
          Text(
            'HOJE',
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          LinearProgressIndicator(
            backgroundColor: context.primaryColorLight,
            valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
            value: 0.4, // Simulando 50% de progresso
          )
        ],
      ),
    );
  }
}
