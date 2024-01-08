import 'package:flix_id_riverpod/data/firebase/firebase_transaction_repository.dart';
import 'package:flix_id_riverpod/data/repositories/transaction_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'transaction_repository_provider.g.dart';

@riverpod
TransactionRepository transactionRepository(TransactionRepositoryRef ref) =>
    FirebaseTransactionRepository();
