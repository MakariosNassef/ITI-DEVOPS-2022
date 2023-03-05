
# Lab 01

## Ex1 :
The text box accepts numeric values ranging from 18 to 25 (18 and 25 are also part of the class). 
So this class becomes our valid class.

INVALID CLASS ( < 18 ) → 17
VALID CLASS (18 - 25 ) → 18, 19, 20, 21, 22, 23, 24, 25
INVALID CLASS ( > 25 ) → 26

```
TC1# FN ( 17 ) → INVALID
TC2# FN ( 26 ) → INVALID
```
Using Boundary
```
TC3# FN ( 18 ) → VALID
TC4# FN ( 25 ) → VALID
```
Using Equivalent
```
TC5# FN ( 22 ) → VALID
```

## Ex2:
One of the fields on a form contains a text box that accepts alphanumeric values. 
Identify the Valid Equivalence class.
a) BOOK
b) Book
c) Boo01k
d) Book
```
TC1# FN ( Boo01k ) → EXPECTED VALID
```
## Ex3:
The Switch is switched off once the temperature falls below 18 and then turned on when the temperature is over 21.

OFF CLASS ( < 18) → 17 ….
ON CLASS ( > 21) → 22 ….
```
TC1# FN (current: 20, previous: 17 ) ⇒ EXPECTED off
TC2# FN (current: 20, previous: 22 ) ⇒ EXPECTED on
```

## Ex4:
A program validates numeric fields as follows: values less than 10 are rejected, 
values between 10 and 21 are accepted, and values greater than or equal to 22 are rejected.

REJECTED CLASS ( < 10 ) → 9, 8, ……
VALID CLASS (10 - 21 ) → 10, 11, 12, ….., 21
INVALID CLASS ( >= 22 ) → 22, 23, ….
Using Boundary
```
TC1# FN ( 9 ) → REJECTED
TC2# FN ( 10 ) → ACCEPTED
TC3# FN ( 21 ) → ACCEPTED
TC4# FN ( 22 ) → REJECTED
```
