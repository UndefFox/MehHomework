#!/usr/bin/env Rscript

## Задание 11
### Объедините матрицы mt2 из задания 8 и матрицу mtNew из задания №10

set.seed(44088);
mt <- matrix(rnorm(1000), ncol = 10);
mt2 <- mt[c(FALSE, TRUE), c(TRUE, FALSE)];

mtNew <- mt2[3, , drop = FALSE];

result <- c(mt2, mtNew);