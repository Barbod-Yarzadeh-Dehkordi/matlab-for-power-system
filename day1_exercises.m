%{ 
 Question 1 

Create a 4 × 5 matrix containing random integers between 1 and 50.

Then display:

The matrix
The total number of elements
The sum of all elements
The average of all elements
%}

%{ Answer 1 %}

a = numel([1 50], 4, 5) 
total_num = length(a)
sum_of_all = sum(a(:))
average = mean(a(:))

%{
Question 2 

Given:

A = [12 5 8 21; 7 19 3 14; 25 6 11 9];

Find:

The largest value
The smallest value
The sum of each column
The sum of each row
The average of all elements
%}

%{ Answer 2 %}

A = [12 5 8 21; 7 19 3 14; 25 6 11 9];
max(A(:))
min(A(:))
sum_of_column = sum(A)
sum_of_rows = sum(A')
average = mean(A(:))

%{
Question 3

Given:

A = 1:20;

Transform it into a 4 × 5 matrix.

Then transform that matrix into a 2 × 10 matrix.

Finally, create a 10 × 2 matrix.
%}

%{ Answer 3 %}

A = 1:20
b = reshape(A, 4, 5)
c= reshape(b, 2, 10)
d = c'

%{
Question 4 

Create this matrix without typing all the numbers individually:

5  5  5  5  5
5  5  5  5  5
5  5  5  5  5
5  5  5  5  5

Then create a 5 × 5 identity matrix.
%}

%{ Answer 4 %}

a = repmat(5, 5, 5)
b = eye(5)

%{
Question 5

Create this matrix using a diagonal-matrix function:

8   0   0   0
0   3   0   0
0   0   7   0
0   0   0   2

Then find:

Its trace
Its determinant
Its diagonal elements
%}

%{ Answer 5 %}

a = diag([8 3 7 2])
b = trace(a)
c = det(a)
d = diag(a)

%{
Question 6

Start with:

A = [1 2 3; 4 5 6; 7 8 9];

Create a new matrix in which the same matrix appears 3 times horizontally.

Then create another matrix in which the same matrix appears 3 times vertically.
%}

%{ Answer 6 %}

A = [1 2 3; 4 5 6; 7 8 9];
repmat(A, 1, 3)
repmat(A, 3, 1)

%{
Question 7

Given:

scores = [72 45 91 38 84 67 95 53 29 88];

Find:

All scores greater than 70
The positions of those scores
The scores sorted from smallest to largest
The scores sorted from largest to smallest

You may use only the tools you've learned.
%}

%{ Answer 7 %}

scores = [72 45 91 38 84 67 95 53 29 88];
a = scores(scores > 70)
b = find(scores > 70)
c = sort(scores)
d = sort(scores, "descend")

%{
Question 8

Given:

A = [4 17 9 23; 12 5 31 8; 19 2 27 14];

Find every element greater than 15.

Your result should tell you:

What the values are
Where they are located

Try to obtain the row and column positions.
%}

%{ Answer 8 %}

A = [4 17 9 23; 12 5 31 8; 19 2 27 14];
b = A(A > 15)
[row , column ] = find(A > 15)

%{

Question 9 

Create:

numbers = 1:30;

Using mod, separate the numbers into:

Even numbers
Odd numbers

Then determine how many numbers are in each group.

No loops.
%}

%{ Answer 9 %}

numbers = 1:30;
even_num = mod(numbers,2)
odd_num = ~ even_num
a = numbers(even_num == 0)
b = numbers(even_num == 1)
c = length(a)
d = length(b)


%{
Question 10

Imagine an electrical engineer records measurements every 5 seconds.

Create:

time = 0:5:60;

Use mod to determine which time values are divisible by 10 seconds.

Then find their positions.
%}

%{ Answer 10 %}

time = 0:5:60
a = mod(time, 10)
b = time(a == 0)
c = find(a == 0)

%{
Question 11

Given:

A = [6 2 1; 2 7 3; 1 3 8];

Calculate:

trace(A)
det(A)
The eigenvalues of A
The sum of all elements
The average of all elements

Then answer:

Is the determinant zero or non-zero?

Don't manually calculate the determinant.
%}

%{ Answer 11 %}

A = [6 2 1; 2 7 3; 1 3 8];
b = trace(A)
c = det(A)
d = eig(A)
e = sum(A(:))
f = mean(A(:))
g = (c ~= 0)

%{
Question 12 

Create:

names = ["Ali" "SARA" "Reza" "barbod" "MINA"];

Create:

A version where every name is lowercase.
A version where every name is uppercase.

Then compare:

using the string comparison function you learned.

Determine which comparisons return true and which return false.
%}

%{ Answer 12 %}

names = ["Ali" "SARA" "Reza" "barbod" "MINA"];
uppercase_name = upper(names)
lowercase_name = lower(names)
a = strcmp(names, uppercase_name)
b = strcmp(names, lowercase_name)

%{
Question 13

Given:

names = ["Ali" "Sara" "Reza" "Ali" "Mina" "Ali"];

Determine:

Whether "Ali" appears in the array.
How many times "Ali" appears.
The positions where "Ali" appears.

No loops and no if.
%}

%{ Answer 13 %}

names = ["Ali" "Sara" "Reza" "Ali" "Mina" "Ali"];
a = (names == "Ali")
is_ali_there = (sum(a) ~= 0)
number_of_appearance = sum(a)
ali_position = find(names == "Ali")

%{
Question 14

Create a cell array containing information about four power-system components.

For example, each component could have:

Name | Type | Voltage | Status

You choose the actual components and values.

Then:

Extract the name of the second component.
Extract the voltage of the third component.
Extract all component names.
Change the voltage of one component.
Add a new component to the cell array.
%}

%{ Answer 14 %}

information = { { "L78MO5", "REGULATOR" , "5V" , "ACTIVE" }, {"INA226", "SENSOR", "3.3V", "ACTIVE"}, {"LM35DZ", "SENSOR", "5V", "ACTIVE"}, {"MAX485", "MODULE", "5V", "ACTIVE"}}
a = information{2}{1}
b = information{3}{3}
c = information{1}{1} + " " + information{2}{1} + " " + information{3}{1} + " " + information{4}{1}
information{2}{3} = "5V"
information{5} = {"LCD" , "MONITOR" , "3.3V", "ACTIVE"}

%{
Question 15

Create a structure called transformer containing:

name
ratedPower
primaryVoltage
secondaryVoltage
efficiency

Give it realistic values of your choice.

Then:

Display the transformer's rated power.
Display its secondary voltage.
Change its efficiency.
Add a new field called manufacturer.
Display the complete structure.
%}

transformer.name = "T1_sub" 
transformer.ratedPower = 630 
transformer.primaryVoltage = 20
transformer.secondaryVoltage = 0.4
transformer.efficiency = 0.9
transformer.name
transformer.secondaryVoltage
transformer.efficiency = 0.93
transformer.manufacturer = "ABB"
transformer

%{
Question 16

You measured the voltage of a power system at 12 different times:
V = [228 231 219 235 242 227 230 218 236 229 241 225];
The acceptable voltage range is:
220 V to 240 V

Without using if, for, or while, determine:

A.The average voltage.
B.The highest voltage.
C.The lowest voltage.
D.The voltage range: maximum - minimum
E.Sort all measurements from lowest to highest.
F.Find all measurements below 220 V.
G.Find all measurements above 240 V.
H.Find the positions of those abnormal measurements.
I.Determine how many abnormal measurements exist.
J.Calculate the percentage of measurements that are abnormal.
%}

%{ Answer 16 %}

V = [228 231 219 235 242 227 230 218 236 229 241 225];
A = mean(V)
B = max(V)
C = min(V)
D = B - C
E = sort(V)
F = V(V < 220)
G = V(V > 240)
H = find(V > 240 | V < 220)
I = length(H)
class(I)
K = length(V)
J = (I / K) .* 100

%{
Question 17

Consider:

A = rand(4,7);

Find:

The number of rows
The number of columns
The total number of elements
The largest dimension

Try to solve all four using MATLAB commands.
%}

%{ Answer 17 %}

A = rand(4,7)
[rows , column] = size(A)
numel(A)
length(A)
max(size(A))

%{
Question 18

V = [215 221 228 235 242 245 219 230];

Find the voltages that are:

A. Greater than 220 AND less than 240.
B. Less than 220 OR greater than 240.
C. How could you obtain all the values that are NOT greater than 240?
Try to use only one logical expression for each.
%}

%{ Answer 18 %}

V = [215 221 228 235 242 245 219 230];
A = V(220 < V & V < 240)
B = V(220 > V | V > 240)
C = V(~(V > 240))
%{
Question 19

Consider:

V = [228 231 235 242 229];

Without counting the values yourself:

Can you make MATLAB answer whether at least one voltage is above 240?
Can MATLAB tell you whether every voltage is between 220 and 240?
The result should be a logical answer:

true / false

Try to discover the syntax.
%}

%{ Answer 19 %}

V = [228 231 235 242 229];
any(V > 240)
all(220 < V & V < 240)

%{
Question 20

Given:

V = [228 231 219 235 242 227 230 218 236 229 241 225];

Acceptable range:

220 ≤ V ≤ 240

Without using if, loops, or anything you haven't learned:

A.Create a logical array showing which measurements are acceptable.
B.Create a logical array showing which measurements are unacceptable.
C.Make MATLAB answer:
Are ALL measurements acceptable?
D.Make MATLAB answer:
Is there AT LEAST ONE unacceptable measurement?
This combines several things you've already learned.
%}

%{ Answer 20 %}

V = [228 231 219 235 242 227 230 218 236 229 241 225];
A = (220 <= V & V <= 240)
B = (220 > V | V > 240)
all(220 <= V & V <= 240)
any(220 > V | V > 240)

%{
Question 21

Consider:

faults = ["overvoltage" "normal" "normal" "undervoltage" "overvoltage" "normal"];

Can you make MATLAB produce only the different types of conditions, without repetitions?

For example, conceptually:

normal
overvoltage
undervoltage

Try to discover the command.
%}

%{ Answer 21 %}

faults = ["overvoltage" "normal" "normal" "undervoltage" "overvoltage" "normal"];
unique(faults)'

%{
Question 22

You've already learned:

min(V)
max(V)

But suppose you have:

V = [228 231 219 235 242 227];

You know the minimum voltage is 219.

But:

At which measurement position did the minimum occur?

And similarly:

At which position did the maximum occur?

Try to make MATLAB give you both the value and its position.

This is a very useful MATLAB syntax.
%}

%{ Answer 23 %}

V = [228 231 219 235 242 227];
[value, position] = min(V)
[Value, Position] = max(V)

%{
Question 24

13. Structure question 

You already know:

transformer.name
transformer.ratedPower

Now suppose:

transformer.name = "T1";
transformer.ratedPower = 630;
transformer.efficiency = 0.95;

Can you make MATLAB show you:

What fields exist inside transformer?

Try to find a command that tells you the structure's fields.
%}

%{ Answer 24 %}

transformer.name = "T1";
transformer.ratedPower = 630;
transformer.efficiency = 0.95;
fieldnames(transformer)

%{
Question 25

Suppose:

data = {"Transformer", 630, 20, 0.4};

Can you extract:

"Transformer"
630
20
0.4

as a normal numeric/string value, rather than as a one-element cell?
You already know {} from your previous exercise.
Try comparing:

data(2)

with:

data{2}

What is the difference between the two results?
%}


%{
Answer 25

one calls the entire cell and one calls the data itself(string,int,...)
%}

%{
Question 26

Try to solve this without if, for, or while:

V = [218 225 231 242 237 219 228 245 233 221];

Acceptable range:

220–240 V

Make MATLAB answer all four questions:

A.Are all voltages acceptable?
B.Is there at least one unacceptable voltage?
C.How many unacceptable voltages are there?
D.What percentage of the measurements are unacceptable?
%}

%{ Answer 26 %}

V = [218 225 231 242 237 219 228 245 233 221];
A = all(220 <= V & V <= 240)
B = any(220 > V | V > 240)
C = numel(V(220 > V | V > 240))
D = (C / numel(V)) .* 100