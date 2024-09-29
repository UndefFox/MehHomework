#!/usr/bin/env Rscript

## Задание 12
### С помощью функции paste() переименуйте строки матрицы mt2, добавив слово "row_" после номера каждой строки;
# переименуйте столбцы матрицы mt2, добавив "col_" перед номером каждого столбца

set.seed(44088);
mt <- matrix(rnorm(1000), ncol = 10);
mt2 <- mt[c(FALSE, TRUE), c(TRUE, FALSE)];

rownames(mt2) <- paste0(1:nrow(mt2), "row_");
colnames(mt2) <- paste0("col_", 1:ncol(mt2));
