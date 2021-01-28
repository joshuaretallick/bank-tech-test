# Bank tech test

I completed this tech test to practice my OO design and TDD skills. Original specifications can be found [here](https://github.com/makersacademy/course/blob/master/individual_challenges/bank_tech_test.md)

## Specification

### Requirements

* You should be able to interact with your code via a REPL like IRB or the JavaScript console.  (You don't need to implement a command line interface that takes input from STDIN.)
* Deposits, withdrawal.
* Account statement (date, amount, balance) printing.
* Data can be kept in memory (it doesn't need to be stored to a database or anything).

### Acceptance criteria

**Given** a client makes a deposit of 1000 on 10-01-2012  
**And** a deposit of 2000 on 13-01-2012  
**And** a withdrawal of 500 on 14-01-2012  
**When** she prints her bank statement  
**Then** she would see

```
date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00
```

```
Input                                 |           Output
bank_deposit(1000, 10-01-2012)        |           puts #{deposit} deposited #{date}
bank_deposit(2000, 13-01-2012)        |           puts #{deposit} deposited #{date}
bank_withdrawal(500, 14-01-2012)      |           puts #{withdrawal} withdrawn #{date}
bank_statement                        |           (see lines 29 - 32 for table output)
```


## My approach

The first step in my planing process was to break the requirements and acceptance criteria and think about how I would expect the user
to interact with the code.

As it had been a minute since we had done some Ruby coding like this I found it really useful to revisit the Oystercard App we built.
From here I was able to build a basic structure and then only had the formatting to consider



## To Run

1. Clone this repository
2. Run bundle install to install required gems
3. Run rspec to view tests.

![Screenshot](https://user-images.githubusercontent.com/71830424/104337807-c7bd8200-54ed-11eb-9b89-b7ac7aa16dd8.png)
