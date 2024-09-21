#!/usr/bin/env Rscript

#Задача 4
#Создайте вектор 1:20. Найдите в нем значения, которые отклоняются от среднего меньше, чем на одно стандартное отклонение, сохраните в отдельную переменную. (стандартное отклонение считается с помощью функции sd  

vec <- 1:20;

vecMean <- mean(vec);
vecStandartDeviation <- sd(vec);

result <- vec[abs(vec - vecMean) < vecStandartDeviation];

print(result)