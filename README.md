# Bank tech test

Today, you'll practice doing a tech test.

For most tech tests, you'll essentially have unlimited time. This practice session is about producing the best code you can when there is a minimal time pressure.

You'll get to practice your OO design and TDD skills.

You'll work alone, and you'll also review your own code so you can practice reflecting on and improving your own work.

## Specification

### Requirements

- You should be able to interact with your code via a REPL like IRB or the JavaScript console. (You don't need to implement a command line interface that takes input from STDIN.)
- Deposits, withdrawal.
- Account statement (date, amount, balance) printing.
- Data can be kept in memory (it doesn't need to be stored to a database or anything).

### Acceptance criteria

**Given** a client makes a deposit of 1000 on 10-01-2023  
**And** a deposit of 2000 on 13-01-2023  
**And** a withdrawal of 500 on 14-01-2023  
**When** she prints her bank statement  
**Then** she would see

```
time       || credit || debit || balance
14/01/2023 || || 500.00 || 2500.00
13/01/2023 || 2000.00 || || 3000.00
10/01/2023 || 1000.00 || || 1000.00
```

### Installation

From the command line, clone this repository to your machine:

```
git clone https://github.com/florence-bain/bank_tech_test.git
```

once cloned, run this command for gems:

```
bundle install
```

### Using the program in IRB

Require the file:

```
require './lib/account.rb'
```

Create a new bank account and enter transactions:

```
my_bank = Account.new(Transactions.new, Statement.new)
my_bank.deposit(500)
my_bank.withdraw(400)
my_bank.deposit(300)
my_bank.print_statement

### Running the tests
```

rspec

```

 Date     || Credit  || Debit    || Balance
 28/10/21 || 300.00  || ------   || 400.00
 28/10/21 || ------- || 400.00   || 100.00
 28/10/21 || 500.00  || ------   || 500.00
```
