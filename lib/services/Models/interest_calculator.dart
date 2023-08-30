class InterestCalculator {
  double? amount;
  double? interestRate;
  int? totalNumOfPayments;
  double? scheduledPaymentAmount;
  double? totalPaymentAmount;
  double? totalInterestAmount;
  String? dateOfLastPayment;
  List<Schedules>? schedules;

  InterestCalculator(
      {this.amount,
      this.interestRate,
      this.totalNumOfPayments,
      this.scheduledPaymentAmount,
      this.totalPaymentAmount,
      this.totalInterestAmount,
      this.dateOfLastPayment,
      this.schedules});

  InterestCalculator.fromJson(Map<String, dynamic> json) {
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
        schedules!.add(new Schedules.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['amount'] = this.amount;
    data['interestRate'] = this.interestRate;
    data['totalNumOfPayments'] = this.totalNumOfPayments;
    data['scheduledPaymentAmount'] = this.scheduledPaymentAmount;
    data['totalPaymentAmount'] = this.totalPaymentAmount;
    data['totalInterestAmount'] = this.totalInterestAmount;
    data['dateOfLastPayment'] = this.dateOfLastPayment;
    if (this.schedules != null) {
      data['schedules'] = this.schedules!.map((v) => v.toJson()).toList();
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
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['paymentDate'] = this.paymentDate;
    data['interestBalance'] = this.interestBalance;
    data['paymentAmount'] = this.paymentAmount;
    data['capitalPaid'] = this.capitalPaid;
    data['interestPaid'] = this.interestPaid;
    data['remainingBalance'] = this.remainingBalance;
    return data;
  }
}