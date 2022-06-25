import 'package:flutter/foundation.dart';

class Transaction {
  // *** new Dart latest dart version now supports sound null safety.
  // use ? to accept nullable can keep @required or remove it
  String? id;
  String? title = "";
  double? amount;
  DateTime? date;
  Transaction({
    //@required this.id,
    this.id,
    @required this.title,
    this.amount,
    this.date,
  });
}
