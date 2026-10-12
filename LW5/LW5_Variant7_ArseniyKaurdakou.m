% Arseniy
% Kaurdakou
% EDIfu-25/2
% 2026.10.12
clc; clear;
person1 = {'Arseniy', 'Kaurdakou', '2007-09-12', 62902180, ...
    [9 8 10; 7 9 8; 10 10 9]};

disp('Person 1 (cell):')
celldisp(person1, 'person1')

person2 = {'Oleksandr', 'Kudlai', '2007-11-02', 62805011, ...
    [10 9 9; 8 8 7; 9 10 10]};

people = [person1; person2];

figure('Name', 'Combined cell');
cellplot(people);
title('people = [person1; person2]');

disp('Size of the combined cell:')
disp(size(people))

disp('Which elements are char?')
disp(cellfun('isclass', people, 'char'))

disp('Which elements are real numbers?')
disp(cellfun('isreal', people))

disp('Length of every element:')
disp(cellfun('length', people))

disp('Is any element empty? (1 = yes)')
disp(any(any(cellfun('isempty', people))))

phones = cell2mat(people(:, 4));
marks  = cell2mat(people(:, 5));

disp('Phones:')
disp(phones)
disp('Marks of both persons (stacked):')
disp(marks)
%% Task 2. Operation flow control
clc;

prev = NaN;
while 1
    m = input('Enter m: ');

    if m < 0
        f = m^2 + 1;
    elseif m == 0
        f = (m + 1)/2;
    else
        f = m^2 - 1;
    end

    disp(['f(', num2str(m), ') = ', num2str(f)])

    if m == prev
        disp('Same value entered twice in a row. Program stopped.')
        break
    end
    prev = m;
end