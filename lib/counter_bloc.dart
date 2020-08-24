import 'package:counterapp_bloc/bloc_events.dart';
import 'package:bloc/bloc.dart';

class CounterBloc extends Bloc<BlocEvents,int>{
  CounterBloc({int initialState}) : super(0);

  @override
  Stream<int> mapEventToState(BlocEvents event) async* {
    switch (event){
      case BlocEvents.increment:
        yield state + 1;
        break;
      case BlocEvents.decrement:
        yield state - 1;
        break;
      case BlocEvents.reset:
        yield state - state;
        break;
    }
  }

}