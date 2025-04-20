import 'package:flutter/material.dart';
import 'package:schedule_mixer/drug_effect.dart';

class MyProvider extends ChangeNotifier {
  final List<DrugEffect> _selectedEffects = [];
  List<DrugEffect> get selectedEffects => _selectedEffects;

  void addEffect(DrugEffect effect) {
    selectedEffects.contains(effect) ? selectedEffects.remove(effect) : selectedEffects.add(effect);
    notifyListeners();
  }

  void clearEffects() {
    selectedEffects.clear();
    notifyListeners();
  }
}