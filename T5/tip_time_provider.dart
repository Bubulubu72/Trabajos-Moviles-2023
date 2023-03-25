import 'package:flutter/material.dart';

class TipTimeProvider with ChangeNotifier {
  bool isSelected = false;
  double sum = 0.0;
  int? _selectedRadio = null;

  int? get getSelectedRadio => _selectedRadio;
  double? get getService {
    if (costController.text == "") {
      return 0.0;
    } else {
      return double.parse(costController.text);
    }
  }

  String get getSum => sum.toStringAsFixed(2);

  var costController = TextEditingController();

  var radioGroupValues = {
    0: "Amazing 20%",
    1: "Good 18%",
    2: "Ok 15%",
  };

  void tipCalculation() {
    sum = getService!;
    double extra = 0;
    if (_selectedRadio == 0) {
      extra = sum * 0.20;
      sum += extra;
      //
    } else if (_selectedRadio == 1) {
      extra = sum * 0.18;
      sum += extra;
      //
    } else if (_selectedRadio == 2) {
      extra = sum * 0.15;
      sum += extra;
      //
    }

    if (isSelected == true) {
      sum = sum.roundToDouble();
    }

    notifyListeners();
  }

  void setIsSelected(bool switchValue) {
    isSelected = switchValue;
    notifyListeners();
  }

  void setSelectedRadio(int? radioValue) {
    _selectedRadio = radioValue;
    notifyListeners();
  }
}
