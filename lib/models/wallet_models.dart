import 'package:flutter/material.dart';

class AuthState {
  static bool isLoggedIn = false;
  static String? fullName;
  static String? phoneNumber;
  static String? email;
}

enum CardType { visa, mastercard }

class BankCard {
  final String id;
  final CardType type;
  final String number;
  final String holder;
  final String expiry;
  final String openDate;
  final List<Color> gradientColors;
  final Color accentColor;
  final String bank;

  const BankCard({
    required this.id,
    required this.type,
    required this.number,
    required this.holder,
    required this.expiry,
    required this.openDate,
    required this.gradientColors,
    required this.accentColor,
    required this.bank,
  });

  String get lastFour => number.substring(number.length - 4);
}

final List<BankCard> kInitialCards = [
  BankCard(
    id: '1',
    type: CardType.visa,
    number: '4532 1547 0831 2904',
    holder: 'NGUYEN VAN AN',
    expiry: '08/28',
    openDate: '15/03/2022',
    gradientColors: const [Color(0xFF1A1A6E), Color(0xFF232396), Color(0xFF6C63FF)],
    accentColor: const Color(0xFF6C63FF),
    bank: 'Vietcombank',
  ),
  BankCard(
    id: '2',
    type: CardType.mastercard,
    number: '5412 7534 1809 3321',
    holder: 'NGUYEN VAN AN',
    expiry: '11/27',
    openDate: '02/09/2021',
    gradientColors: const [Color(0xFF1A0A00), Color(0xFF8B2500), Color(0xFFFF6B35)],
    accentColor: const Color(0xFFFF6B35),
    bank: 'Techcombank',
  ),
  BankCard(
    id: '3',
    type: CardType.visa,
    number: '4916 2231 8844 5521',
    holder: 'NGUYEN VAN AN',
    expiry: '03/29',
    openDate: '20/06/2023',
    gradientColors: const [Color(0xFF003322), Color(0xFF006644), Color(0xFF00C896)],
    accentColor: const Color(0xFF00C896),
    bank: 'MB Bank',
  ),
];