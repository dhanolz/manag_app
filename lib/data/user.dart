// ignore: unused_import
import 'package:flutter/material.dart';

enum TransactionType {
  outflow,
  inflow,
}

enum ItemCateregoryType { fashion, grocery, payments }

class UserInfo {
  final String name;
  final String totalBalance;
  final String inflow;
  final String outflow;
  final List<Transaction> transactions;

  const UserInfo(
      {required this.name,
      required this.totalBalance,
      required this.inflow,
      required this.outflow,
      required this.transactions});
}

class Transaction {
  final ItemCateregoryType cateregoryType;
  final TransactionType transactionType;
  final String itemCategoryName;
  final String itemName;
  final String amount;
  final String date;

  const Transaction(this.cateregoryType, this.transactionType,
      this.itemCategoryName, this.itemName, this.amount, this.date);
}

const List<Transaction> transactions = [
  Transaction(ItemCateregoryType.fashion, TransactionType.outflow, "Shoes",
      "Puma Sneaker", "\$400.00", "Oct, 23"),
  Transaction(ItemCateregoryType.fashion, TransactionType.outflow, "Bag",
      "Bag Eiger", "\$500.00", "Sept, 12"),
];
const List<Transaction> transactions2 = [
  Transaction(ItemCateregoryType.payments, TransactionType.inflow, "Payments",
      "Transfer For Eka", "\$2,500.00", "Oct, 17"),
  Transaction(ItemCateregoryType.grocery, TransactionType.outflow, "Food",
      "Chicken Wings", "\$10.00", "Nov, 18"),
  Transaction(ItemCateregoryType.payments, TransactionType.outflow,
      "Cars Rental", "Rent a Dinus Car", "\$200.00", "Oct, 19"),
  Transaction(ItemCateregoryType.fashion, TransactionType.outflow, "Sweeter",
      "Luiz Vuitton suit", "\$11.00", "Nov, 23"),
  //
  Transaction(ItemCateregoryType.payments, TransactionType.outflow, "quota",
      "buy internet quota", "\$8.00", "Nov, 20"),
  Transaction(ItemCateregoryType.grocery, TransactionType.outflow,
      "motorcycle service", "routine service", "\$15.00", "Des, 09"),
  Transaction(ItemCateregoryType.payments, TransactionType.outflow, "SPP",
      "monthly spp", "\$200.00", "Oct, 19"),
  Transaction(ItemCateregoryType.fashion, TransactionType.outflow, "instalment",
      "house installment", "\$12.00", "Nov, 07"),
];

const userdate = UserInfo(
    name: "Ramadhani",
    totalBalance: "\$ 8.000.00",
    inflow: "\$6,000.00",
    outflow: "\$3.000.00",
    transactions: transactions);
