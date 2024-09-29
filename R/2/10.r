#!/usr/bin/env Rscript

## Задание 10
### Получим третью строку матрицы mt2 из задания 8 в виде однострочной матрицы, положим результат в матрицу mtNew

set.seed(44088);
mt <- matrix(rnorm(1000), ncol = 10);
mt2 <- mt[c(FALSE, TRUE), c(TRUE, FALSE)];

mtNew <- mt2[3, , drop = FALSE];