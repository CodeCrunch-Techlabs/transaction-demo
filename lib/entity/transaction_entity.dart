import 'package:equatable/equatable.dart';

class TransactionEntity extends Equatable {
  final String name;
  final String timestamp;
  final double amount;
  final String referenceNumber;
  final String remark;

  TransactionEntity(
      this.name, this.timestamp, this.amount, this.referenceNumber, this.remark);

  @override
  List<Object> get props => [name, timestamp, amount, referenceNumber, remark];

  Map<String, Object> toJson() {
    return {
      'name': name,
      'timestamp': timestamp,
      'amount': amount,
      'reference_number': referenceNumber,
      'remark': remark
    };
  }
  
  static TransactionEntity fromJson(Map<String, Object> json) {
    return TransactionEntity(
        json['name'] as String,
        json['timestamp'] as String,
        json['amount'] as double,
        json['reference_number'] as String,
        json['remark'] as String);
  }
}
