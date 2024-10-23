class BankAccount {
String AccountHolderName;
double balance;
BankAccount({required this.AccountHolderName, required this.balance});
void deposit(double amount){
  balance+=amount;
}
void withdraw(double amount){
  if( balance-amount>0){
    balance-amount;
  }
  else{
    print("Insufficient funds");
  }
}
double getBalance(){
  return balance;
}
void setBalance( double amount){
  balance=amount;

}
}
void main(){
  var account= BankAccount(AccountHolderName: 'Maloba Ekole', balance: 40000);
account.deposit(10000.0);
account.withdraw(70000);
print("Your balance is: ${account.getBalance()}");
account.setBalance(30000);
print(account.getBalance());
//var acc= BankAccount(AccountHolderName: AccountHolderName, balance: balance);
}