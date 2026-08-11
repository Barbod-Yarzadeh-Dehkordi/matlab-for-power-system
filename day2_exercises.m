%{
Question 27

Ask the user for their name and age.

Then display a sentence containing both pieces of information.
%}

%{ Answer 27 %}
clc
clear
name = input("tell me your name: ","s");
age = input("tell me your age: ");
disp("You are " + name + " and you are " + num2str(age))

%{
Question 28

Ask the user to enter a voltage.

Display the voltage together with the unit V.

For example, if the user enters 230, the program should display:

Measured voltage: 230 V
%}

%{ Answer 28 %}
 
voltage = input("enter the voltage: ");
disp("Measured voltage: " + num2str(voltage) + " V")

%{
Question 29

Ask the user to enter a voltage.

The acceptable voltage range is 220 V to 240 V.

Tell the user whether the entered voltage is acceptable or not.
%}

%{ Answer 29 %}

voltage = input("enter a voltage: ");
if voltage >= 220 && voltage =< 240 
    disp("acceptable")
else 
    disp("not acceptable")
end

%{
Question 30

Ask the user to enter a voltage.

Classify the voltage into one of these three categories:

Below 220 V
220–240 V
Above 240 V

Display the corresponding category.
%}

%{ Answer 30 %}

voltage = input("enter a voltage: ");
if voltage < 220 
    disp("category 1")
elseif voltage <= 240 
    disp("category 2")
else 
    disp("category 3")
end

%{
Question 31

Display the numbers from 1 to 20.

Each number should appear separately.
%}

%{ Answer 31 %}

for number = 1:20
    disp(number)
end

%{
Question 32

Display all the even numbers between 1 and 30.

Do not manually write the numbers.
%}

%{ Answer 32 %}

for numbers= 1 : 30
    if mod(numbers,2) == 0
        disp(numbers)
    end
end

%{
Question 33

Given:

V = [228 231 219 235 242 227 230 218 236 229];

Examine every measurement.

For each measurement, display its position, its value, and whether it is:

Normal
Undervoltage
Overvoltage

The acceptable range is 220–240 V.
%}

%{ Answer 33 %}

V = [228 231 219 235 242 227 230 218 236 229];
i = 1;
while i< numel(V)
    if  V(i) > 240
        disp("Overvoltage")
    elseif V(i) >= 220
        disp("Normal")
    else
        disp("Undervoltage")
    end
i = i + 1;
end

%{ 
Question 34

Given:

numbers = 1:30;

Display every number except numbers that are divisible by 3.
%}

%{ Answer 34 %}

for numbers = 1:30
    if mod(numbers,3) == 0 
        continue
    else
        disp(numbers)    
    end    
end

%{
Question 35

Starting from 1, find the first number that is divisible by 7.

Once you find it, stop searching.

Display that number.
%}

%{ Answer 35 %}
i = 1;
while true
    if mod(i,7) == 0
        disp(i)
        break
    else
        i = i + 1 ;
    end
end

%{
Question 36

Ask the user to enter a number.

Keep asking until the user enters a number greater than 100.

Then display:

Accepted!
%}

%{ Answer 36 %}
while true
    data = input("please enter a number: ");
    if data > 100
        disp("Accepted!")
        break
    end
end

%{
Question 37

Ask the user to enter a voltage.

Keep asking until they enter a voltage between 220 V and 240 V.

Then display:

Voltage accepted.
%}

%{ Answer 37 %}

while true
    data = input("enter a voltage: ");
    if data >= 220 && data <= 240
        disp("Voltage accepted.")
        break
    end
end

%{
Question 38

Create a menu:

1 - Voltage
2 - Current
3 - Power
4 - Frequency

Ask the user to select one of the four options.

Display the measurement they selected.
%}

%{ Answer 38 %}
menu.Voltage = 400;
menu.Current = 10;
menu.Power = 40;
menu.Frequency = 50;
disp("menu: ")
disp("1 - Voltage")
disp("2 - Current")
disp("3 - Power")
disp("4 - Frequency")
data = input("select an option: ");
switch data
    case 1
        disp(menu.Voltage)
    case 2
        disp(menu.Current)
    case 3
        disp(menu.Power)
    case 4
        disp(menu.Frequency)
    otherwise
        disp('the number chosen is not in the menu')
end

%{
Question 39

Create a program that asks the user to choose one of these:

1 - Volt
2 - Ampere
3 - Watt

Then ask them to enter a numerical value.

Display the value together with its appropriate unit.

For example:

Measured value: 230 V
%}

%{ Answer 39 %}

disp("menu: ")
disp("select an option: ")
disp("1 - Volt")
disp("2 - Ampere")
disp("3 - Watt")
data = input("select an option: ");
num = input("select a number: ");
switch data
    case 1
        disp(num2str(num) + " Volt")
    case 2
        disp(num2str(num) + " Ampere")
    case 3
        disp(num2str(num) + " Watt")
    otherwise
        disp("the number chosen is not in the menu")
end

%{
Question 40

Create a reusable calculation that receives voltage and current and produces electrical power.

Test it using:

Voltage = 230 V
Current = 5 A
%}

%{ Answer 40 %}

voltage = input("enter a voltage: ");
current = input("enter a current: ");
calculation(voltage,current);
function calculation(voltage,current)
        power = voltage * current;
        disp(power)
end


%{
Question 41

Create a reusable calculation that receives a voltage and determines whether it is:

Undervoltage
Normal
Overvoltage

Test it using at least three different voltages.
%}

%{ Answer 41 %}

voltage = input("enter a voltage: ");
analyzer(voltage)
function analyzer(voltage)
    if  voltage > 240
        disp("Overvoltage")
    elseif voltage > 220
        disp("Normal")
    else
        disp("Undervoltage")
    end
end

%{
Question 42

Given a vector containing voltage measurements, create a reusable calculation that determines:

How many are below 220 V
How many are between 220 V and 240 V
How many are above 240 V

Test it with:

V = [228 231 219 235 242 227 230 218 236 229];
%}

%{ Answer 42 %}

V = [228 231 219 235 242 227 230 218 236 229];
low = 0;
normal = 0 ;
high = 0 ;
analyzeVoltage(V)
function [low, normal, high] = analyzeVoltage(V)
    low = 0;
    normal = 0;
    high = 0;
    for k = 1:numel(V)
        if V(k) < 220
            low = low + 1;
        elseif V(k) <= 240
            normal = normal + 1;
        else
            high = high + 1;
        end
    end
end
disp(low)
disp(normal)
disp(high)

%{
Question 43

Create a program for an electrical engineer who wants to analyze voltage measurements.

The program should:

Ask how many measurements will be entered.
Ask for each measurement.
Store all measurements.
Calculate the average.
Find the highest measurement.
Find the lowest measurement.
Determine how many measurements are outside 220–240 V.
Display the results.
%}

%{ Answer 43 %}

num_of_data = input("how many measurements will you enter: ");
data = [];
count = 0;
a = 1;
while a <= num_of_data
    data(a) = input("enter the measurement: ");
    if ~(data(a) >= 220 && data(a) <= 240 )
        count = count + 1;
    end
a = a + 1;
end
average = mean(data);
disp(average)
disp(max(data))
disp(min(data))
disp(count)

%{
Question 44

Create a monitoring program.

The program repeatedly asks:

Enter voltage:

For every voltage entered:

220–240 V → Normal
Below 220 V → Undervoltage
Above 240 V → Overvoltage

The program should continue until the user enters:

0

When 0 is entered, stop the monitoring and display:

Monitoring stopped.
%}

%{ Answer 44 %}


while true
    voltage = input("Enter a voltage: ");
    if voltage == 0
        break
    elseif voltage > 240
        disp("Overvoltage")
    elseif voltage >= 220
        disp("Normal")
    else
        disp("Undervoltage")
    end
end


%{
Question 45

Modify Question 44 so that the program also keeps track of:

Number of normal measurements
Number of undervoltage measurements
Number of overvoltage measurements

When monitoring stops, display all three totals.
%}

%{ Answer 45 %}

num_normal = 0;
num_under = 0;
num_high = 0;

while true
    voltage = input("Enter a voltage: ");
    if voltage == 0
        break
    elseif voltage > 240
        num_high = num_high + 1;
    elseif voltage >= 220
        num_normal = num_normal + 1;
    else
        num_under = num_under + 1;
    end
end
disp(num_normal)
disp(num_under)
disp(num_high)

%{
Question 46

Build a small electrical measurement program.

When it starts, show the user a menu:

1 - Enter voltage
2 - Enter current
3 - Calculate power
4 - Show measurements
5 - Exit

The user should be able to select options repeatedly.

The program should allow the user to enter voltage and current measurements, calculate power, display stored measurements, and exit when requested.

You decide how to design the program.

No hints. No required commands. No restrictions beyond using what you've learned so far.
%}

%{ Answer 46 %}

voltage = [];
current = [];
while true
    disp("1 - Enter voltage")
    disp("2 - Enter current")
    disp("3 - Calculate power")
    disp("4 - Show measurements")
    disp("5 - Exit")
    choice = input("Select an option: ");
    switch choice
        case 1
            voltage(end + 1) = input("Enter voltage: ");

        case 2
            current(end + 1) = input("Enter current: ");

        case 3
            power = voltage .* current;
            disp(power)

        case 4
            disp(voltage)
            disp(current)

        case 5
            break

        otherwise
            disp("Invalid option")
    end
end