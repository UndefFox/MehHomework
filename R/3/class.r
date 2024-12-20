#!/usr/bin/env Rscript


### Посмотрим на данные mtcars 


#### Получите справку о наборе данных 
?mtcars;


### Положим набор данных mtcars в переменную mt
mt <- mtcars;




### Выведем фрагмент mt - первые 5 строк и первые 5 столбцов
mt[1:5, 1:5];
head(mt, c(3, 5));


### Выведем имено строк и столбцов mt
colnames(mt);
rownames(mt);


### Добавим новый столбец к mt - имя машины (name)
mt$name <- rownames(mt);


### Как можно проверить, корректно ли мы выполнили предыдущее задание? 
colnames(mt);



### Переименуем в наборе данных mt столбец disp на new_disp.
###Решите в 1 строку. Используйте which. Имена других столбцов не трогайте. 
colnames(mt)[which(colnames(mt) == "disp")] <- "new_disp";

### Выведите имя строки mt, в которой столбец drat принимает минимальное значение.
###Решите в 1 строку. Используйте функцию семейства which. 
rownames(mt)[which.min(mt$drat)];

### Отсортируйте набор данных mt по столбцу hp по убыванию. 
###Выведите имя первой строки в отсортированном наборе данных.
###Смотрите параметры функции order
mt[order(mt$hp, decreasing = TRUE), ];

### Есть ли хоть одно пропущенное значение в наборе данных airquality?



### Выведите вектор элементы которого будут содержать количество пропущенных значений в каждом столбце 
###набора данных airquality.Используйте colSums.


### В наборе данных airquality добавьте новый столбец Month_name с названиями месяцев в зависимости от 
###значения столбца Month (5 - may, 6 - june, ...). 
###В качестве ответа укажите результаты команды table от столбца Month_name.



### Выполните предыдущее задание, добавив условие: если в столбце Ozone стоит NA, 
###то в новый столбец Month_name запишите: miss_data.





