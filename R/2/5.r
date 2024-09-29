#!/usr/bin/env Rscript

## Задание 5 

### Отберите из вектора G элементы с четными индексами.

set.seed(44088);
G <- c(rnorm(1000), runif(1000));

# Solution 1:
vec <- G[seq(1, length(G), 2)];

# Solution 2 (from internet):
vec <- G[c(FALSE, TRUE)];