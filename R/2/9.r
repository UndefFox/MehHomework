#!/usr/bin/env Rscript

## Задание 9
### Получите третью строку матрицы mt2 из задания 8 в виде вектора

set.seed(44088);
mt <- matrix(rnorm(1000), ncol = 10);
mt2 <- mt[c(FALSE, TRUE), c(TRUE, FALSE)];

result <- mt2[3, ]
