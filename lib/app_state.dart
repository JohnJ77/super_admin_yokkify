import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/lat_lng.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _respuesta1 = '1';
  String get respuesta1 => _respuesta1;
  set respuesta1(String _value) {
    _respuesta1 = _value;
  }

  String _respuesta2 = '2';
  String get respuesta2 => _respuesta2;
  set respuesta2(String _value) {
    _respuesta2 = _value;
  }

  String _respuesta3 = '3';
  String get respuesta3 => _respuesta3;
  set respuesta3(String _value) {
    _respuesta3 = _value;
  }

  String _respuesta4 = '4';
  String get respuesta4 => _respuesta4;
  set respuesta4(String _value) {
    _respuesta4 = _value;
  }

  String _respuesta5 = '5';
  String get respuesta5 => _respuesta5;
  set respuesta5(String _value) {
    _respuesta5 = _value;
  }

  String _respuesta6 = '6';
  String get respuesta6 => _respuesta6;
  set respuesta6(String _value) {
    _respuesta6 = _value;
  }

  String _respuesta7 = '7';
  String get respuesta7 => _respuesta7;
  set respuesta7(String _value) {
    _respuesta7 = _value;
  }

  String _respuesta8 = '';
  String get respuesta8 => _respuesta8;
  set respuesta8(String _value) {
    _respuesta8 = _value;
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}
