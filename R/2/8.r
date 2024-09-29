#!/usr/bin/env Rscript

## Задание 8

### Сделайте матрицу mt2, которая будет содержать четные столбцы и нечетные строки из матрицы mt

set.seed(44088);
mt <- matrix(rnorm(1000), ncol = 10);

mt2 <- mt[c(FALSE, TRUE), c(TRUE, FALSE)];
