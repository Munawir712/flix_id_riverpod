// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TransactionImpl _$$TransactionImplFromJson(Map<String, dynamic> json) =>
    _$TransactionImpl(
      id: json['id'] as String?,
      uid: json['uid'] as String,
      transactionTime: json['transactionTime'] as int?,
      transactionImage: json['transactionImage'] as String?,
      title: json['title'] as String,
      seets:
          (json['seets'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const [],
      theaterName: json['theaterName'] as String?,
      watchingTime: json['watchingTime'] as int?,
      amongTicket: json['amongTicket'] as int?,
      ticketPrice: json['ticketPrice'] as int?,
      adminFee: json['adminFee'] as int,
      total: json['total'] as int,
    );

Map<String, dynamic> _$$TransactionImplToJson(_$TransactionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'uid': instance.uid,
      'transactionTime': instance.transactionTime,
      'transactionImage': instance.transactionImage,
      'title': instance.title,
      'seets': instance.seets,
      'theaterName': instance.theaterName,
      'watchingTime': instance.watchingTime,
      'amongTicket': instance.amongTicket,
      'ticketPrice': instance.ticketPrice,
      'adminFee': instance.adminFee,
      'total': instance.total,
    };
