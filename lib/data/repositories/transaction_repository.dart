import 'package:flix_id_riverpod/domain/entities/transaction.dart';

import '../../domain/entities/result.dart';

abstract interface class TransactionRepository {
  Future<Result<Transaction>> createTransaction(
      {required Transaction transaction});
  Future<Result<Transaction>> getUserTransaction({required String uid});
}
