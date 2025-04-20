import 'package:flutter/material.dart';
import 'package:schedule_calculator/drugs.dart';

class DrugProvider extends ChangeNotifier {
  final List<Drug> _selectedDrugs = []; 
  final List<DrugEffectEnum> _selectedEffects = []; 

  List<Drug> get selectedDrugs => _selectedDrugs;
  List<DrugEffectEnum> get selectedEffects => _selectedEffects;
 
  DrugEffectEnum? _effectInfo;

  void addDrug(Drug drug) {
    if (!_selectedDrugs.contains(drug)) {
      _selectedDrugs.add(drug);  
    } else {
      _selectedDrugs.remove(drug);
    }
    notifyListeners();
  }

  DrugEffectEnum? effectInfo() {
    return _effectInfo;
  }

  void addEffect(DrugEffectEnum effect) {
    if (!_selectedEffects.contains(effect)) {
      _selectedEffects.add(effect);  
    } else {
      _selectedEffects.remove(effect);
    }
    notifyListeners();
  }

  bool drugContains(Drug drug) {
    return _selectedDrugs.contains(drug);
  }

  bool effectContains(DrugEffectEnum effect) {
    return _selectedEffects.contains(effect);
  }

  void setDrugEffectInfo(DrugEffectEnum effect) {
    if (_effectInfo != effect) {
      _effectInfo = effect;
    } else {
      _effectInfo = null;
    }
    notifyListeners();
  }

  DrugEffectEnum? currentEffectInfo() {
    return _effectInfo;
  }
}