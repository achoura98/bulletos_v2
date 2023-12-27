import 'package:equatable/equatable.dart';

class UserPayement extends Equatable {
  const UserPayement({
    required this.payementId,
    required this.amount,
    required this.payementDateTime,
    required this.payementMethod,
  });

  final int payementId;
  final String amount;
  final String payementDateTime;
  final String payementMethod;

  @override
  List<Object?> get props => [payementId];
}
