import 'package:counterapp_bloc/bloc_events.dart';
import 'package:counterapp_bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: close_sinks
    CounterBloc bP = BlocProvider.of<CounterBloc>(context);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                icon: Icon(Icons.remove),
                onPressed: ()=> bP.add(BlocEvents.decrement),
              ),
              BlocBuilder<CounterBloc , int>(
                builder: (context,state)=> Text('$state'),
              ),
              IconButton(
                icon: Icon(Icons.add),
                onPressed: ()=> bP.add(BlocEvents.increment),
              ),
            ],
          ),
          IconButton(icon: Icon(Icons.redo), onPressed: ()=> bP.add(BlocEvents.reset))
        ],
      ),
    );
  }
}
