#!/usr/bin/env Rscript

#Задача 1
#Создайте вектор из 10 случайных числе. Отберите из него 1, 5 и 8 элементы и возведите их в квадрат, запишите результаты в вектор d

nums <- runif(10, -100, 100);

d <- c(nums[1], nums[5], nums[8]);
d <- d^2;

print(d);

