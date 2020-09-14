import 'package:meta/meta.dart';
import 'package:transaction_demo/entity/transaction_entity.dart';

@immutable
class Transaction {
  final String name;
  final String timestamp;
  final double amount;
  final String referenceNumber;
  final String remark;

  Transaction(this.name, this.timestamp, this.amount, this.referenceNumber,
      this.remark);

  TransactionEntity toEntity() {
    return TransactionEntity(name, timestamp, amount, referenceNumber, remark);
  }

  static Transaction fromEntity(TransactionEntity entity) {
    return Transaction(entity.name, entity.timestamp, entity.amount,
        entity.referenceNumber, entity.remark);
  }
}
