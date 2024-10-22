import 'package:flutter/material.dart';

enum QueryType { generalEnquiry, supportRequest }

class FormProvider extends ChangeNotifier {
  QueryType query = QueryType.generalEnquiry;

  void setQuery(QueryType query) {
    this.query = query;
    notifyListeners();
  }
}
