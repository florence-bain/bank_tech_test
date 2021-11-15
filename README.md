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
```

### Running the tests

```
rspec

```

### Approach

Firstly, reading the requirements for the tech test I have noted that the user should be able to interact with the code through a REPL, in this case IRB. Using the requirements guides me to what objects I would need and therefore able to create feature tests. The requirements suggest having a bank account that can deposit, withdraw and print a statement. With this information I can write user stories.

User stories:

```
As a user,
So that I can keep track of my money,
I'd like to be able to create a new bank account with a default balance of zero.
```

```
As a user,
So that I can store money safely,
I'd like to be able to deposit my money into my bank account.
```

```
As a user,
So that I can retrieve my stored money,
I'd like to be able to withdraw my money out of my bank account.
```

```
As a user,
So that I can remember my account history,
I'd like to be able to print a bank statement.
```

```
As a user,
So that I can recall the timing of my transactions,
I'd like to be able to view the date of transactions.
```

From this I am able to identify the need for three objects (account, transactions, statement) and three methods (account.deposit, account.withdraw, account.statement).

```
Date || Credit || Debit || Balance
28/10/21 || 300.00 || ------ || 400.00
28/10/21 || ------- || 400.00 || 100.00
28/10/21 || 500.00 || ------ || 500.00

```
