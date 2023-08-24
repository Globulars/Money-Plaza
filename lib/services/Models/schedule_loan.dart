class ScheduleLoan {
  int? amount;
  double? interestRate;
  int? totalNumOfPayments;
  double? scheduledPaymentAmount;
  double? totalPaymentAmount;
  double? totalInterestAmount;
  String? dateOfLastPayment;
  List<Schedules>? schedules;

  ScheduleLoan(
      {this.amount,
      this.interestRate,
      this.totalNumOfPayments,
      this.scheduledPaymentAmount,
      this.totalPaymentAmount,
      this.totalInterestAmount,
      this.dateOfLastPayment,
      this.schedules});

  ScheduleLoan.fromJson(Map<String, dynamic> json) {
    amount = json['amount'];
    interestRate = json['interestRate'];
    totalNumOfPayments = json['totalNumOfPayments'];
    scheduledPaymentAmount = json['scheduledPaymentAmount'];
    totalPaymentAmount = json['totalPaymentAmount'];
    totalInterestAmount = json['totalInterestAmount'];
    dateOfLastPayment = json['dateOfLastPayment'];
    if (json['schedules'] != null) {
      schedules = <Schedules>[];
      json['schedules'].forEach((v) {
        schedules!.add(Schedules.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['amount'] = amount;
    data['interestRate'] = interestRate;
    data['totalNumOfPayments'] = totalNumOfPayments;
    data['scheduledPaymentAmount'] = scheduledPaymentAmount;
    data['totalPaymentAmount'] = totalPaymentAmount;
    data['totalInterestAmount'] = totalInterestAmount;
    data['dateOfLastPayment'] = dateOfLastPayment;
    if (schedules != null) {
      data['schedules'] = schedules!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Schedules {
  String? paymentDate;
  double? interestBalance;
  double? paymentAmount;
  double? capitalPaid;
  double? interestPaid;
  double? remainingBalance;

  Schedules(
      {this.paymentDate,
      this.interestBalance,
      this.paymentAmount,
      this.capitalPaid,
      this.interestPaid,
      this.remainingBalance});

  Schedules.fromJson(Map<String, dynamic> json) {
    paymentDate = json['paymentDate'];
    interestBalance = json['interestBalance'];
    paymentAmount = json['paymentAmount'];
    capitalPaid = json['capitalPaid'];
    interestPaid = json['interestPaid'];
    remainingBalance = json['remainingBalance'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['paymentDate'] = paymentDate;
    data['interestBalance'] = interestBalance;
    data['paymentAmount'] = paymentAmount;
    data['capitalPaid'] = capitalPaid;
    data['interestPaid'] = interestPaid;
    data['remainingBalance'] = remainingBalance;
    return data;
  }
}
