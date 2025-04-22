import 'package:flutter/material.dart';
import 'package:schedule_mixer/drug.dart';
import 'package:schedule_mixer/drug_effect.dart';

class MyProvider extends ChangeNotifier {
  final List<DrugEffect> _selectedEffects = [];
  List<DrugEffect> get selectedEffects => _selectedEffects;

  int _searchLayers = 1;
  int get searchLayers => _searchLayers;

  final List<MixedDrug> _searchResults = [];
  List<MixedDrug> get searchResults => _searchResults;

  void searchLayer(bool mode) {
    if(!mode && _searchLayers > 1) {
      _searchLayers -= 1;
      notifyListeners();
    } else if (mode && _searchLayers < 8) {
      _searchLayers += 1;
      notifyListeners();
    }
  }

  void addEffect(DrugEffect effect) {
    selectedEffects.contains(effect) ? selectedEffects.remove(effect) : selectedEffects.add(effect);
    notifyListeners();
  }

  void clearEffects() {
    selectedEffects.clear();
    notifyListeners();
  }
}