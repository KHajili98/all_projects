import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:json_http_test/WeatherModel.dart';
import 'package:json_http_test/WeatherRepo.dart';

class Weather1Event extends Equatable {
  @override
  // TODO: implement props
  List<Object> get props => [];
}

class FetchWeather1 extends Weather1Event {
  final _city;
  static int _counter = 0;

  FetchWeather1(this._city);

  @override
  // TODO: implement props
  List<Object> get props => [_city, _counter];
}

class Weather1State extends Equatable {
  @override
  // TODO: implement props
  List<Object> get props => [];
}

class Weather1IsNotSearched extends Weather1State {}

class Weather1Bloc extends Bloc<Weather1Event, Weather1State> {
  WeatherRepo weatherRepo;
  int counter = 0;
  Weather1Bloc(this.weatherRepo);

  @override
  // TODO: implement initialState
  Weather1State get initialState => Weather1IsNotSearched();

  @override
  Stream<Weather1State> mapEventToState(Weather1Event event) async* {
    // TODO: implement mapEventToState

    if (event is FetchWeather1) {
      print(
          "**************************************FUCKKKKKKKKKKKKKKKKKKKKKK************************************************");
      this.counter++;
      print(this.counter);

      yield Weather1IsNotSearched();
    }
  }
}
