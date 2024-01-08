import 'package:flix_id_riverpod/data/repositories/transaction_repository.dart';
import 'package:flix_id_riverpod/domain/entities/result.dart';
import 'package:flix_id_riverpod/domain/entities/transaction.dart';
import 'package:flix_id_riverpod/domain/usecases/get_transactions/get_transactions_param.dart';
import 'package:flix_id_riverpod/domain/usecases/usecase.dart';

class GetTransactions
    implements UseCase<Result<List<Transaction>>, GetTransactionsParam> {
  final TransactionRepository _transactionRepository;

  GetTransactions({required TransactionRepository transactionRepository})
      : _transactionRepository = transactionRepository;

  @override
  Future<Result<List<Transaction>>> call(GetTransactionsParam params) async {
    var result =
        await _transactionRepository.getUserTransactions(uid: params.uid);

    return switch (result) {
      Success(value: final transactionList) => Result.success(transactionList),
      Failed(:final message) => Result.failed(message),
    };
  }
}
