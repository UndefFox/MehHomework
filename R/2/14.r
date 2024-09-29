#!/usr/bin/env Rscript

## Задание 14
### Возьмите вектор Z из задания 14, выведите имена этого вектора

Z <- runif(10, -10, 10);
names(Z) <- paste0("num", 1:10);

print(names(Z));