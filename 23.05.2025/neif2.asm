if condition1:             cmp n1,n2
						   jge l1   :if  outer if  n1>=n2
						   jl l2   :else     n1< n2
						   
						   l1 is the inner if
						   cmp n1,n3
						   jge ms1   :inner if n1>=n3  so print n1
						   jle ms3    :else   if not print n3
    if condition2:  
        # Do something
    else:
        # Do something else
else:                       l2 
                            cmp n2,n3
							jge ms2
							jle ms3
                              
    # Outer else block













Write an Assembly program to input two numbers and determine 
if the first is a multiple of the second.

Write an Assembly program to input a digit and check 
if it is between 1 and 5 (inclusive).

Write an Assembly program to input three marks, calculate the average, and print if the student passed (average ≥ 50).

Write an Assembly program to input a character and check whether it is a vowel or consonant.

Write an Assembly program to input a number and check if it is divisible by both 2 and 3.

Given a mark from 0–100, display a grade:
90–100 → A
75–89 → B
60–74 → C
50–59 → D
Below 50 → Fail

Given three side lengths (a, b, c), check if they form a valid triangle using:
a + b > c, a + c > b, and b + c > a
















Write an Assembly program to input three one-digit numbers, 
compare them, and display which number is the greatest.