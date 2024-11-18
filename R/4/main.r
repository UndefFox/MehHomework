#!/usr/bin/env Rscript

library(tidyverse)


#### Создайте tibble по примеру c занятия (tibble + tribble)
funcTable <- tibble(
    x <- 1:10,
    y <- x^2
);

#### Работа с базовой таблицей как с tibble
mtcarsT <- as_tibble(mtcars);
irisT <- as_tibble(iris);
starwarsT <- as_tibble(starwars);

### Посмотрим на данные mtcars 
#### Выберем из набора данных колонки mpg, cyl, disp 
mtcarsT %>%
    select(mpg, cyl, disp);

### Посмотрим на данные iris 
#### Выберем из набора данных колонки, которые начинаются с Sepal 
irisT %>%
    select(starts_with("Sepal"));

#### Выберем один столбец и представим его в виде таблицы
irisT %>%
    select(Sepal.Length);

#### Выберем один столбец и представим его в виде вектора
irisT %>%
    pull(Sepal.Length);

#### Отберем только такие строки, где значения в колонке Sepal.Length > 4.5
irisT %>%
    select(Sepal.Length) %>%
    filter(Sepal.Length > 4.5);

#### Отберем несколько строк по индексу
irisT %>%
    slice(c(1, 5, 8));

#### Выберем 10 случайных строк
irisT %>%
    sample(10, replace = TRUE);

#### отсортируем таблицу по колонке ``
irisT %>%
    arrange(Petal.Length);

#### Подсчитать статистику по колонке 
#### Подсчитать количество строк по уникальным значениям столбца Species
irisT %>% 
    group_by(Species) %>%
    summarise(count = n());
    
#### Подсчитать количество строк по сочетанию уникальных значений в 2 столбцах
irisT %>% 
    group_by(Species, Sepal.Length) %>%
    summarise(count = n());

#### Создадим новую колонку Petal.Length * Petal.Width
irisT %>% 
    mutate(result = Petal.Length * Petal.Width);

#### Создадим новую колонку Petal.Length * Petal.Width, оставим только ее
irisT %>% 
    transmute(result = Petal.Length * Petal.Width);

#### Переименуем колонку Species
irisT %>% 
    rename(Types = Species);

#### Подсчитаем среднее значение колонки Petal.Length по группам из колонки Species
irisT %>% 
    group_by(Species) %>%
    summarise(mean = mean(Petal.Length));

#### Из набора данных starwars выберите столбцы sex, height, eye_color. Удалите все строки с пропущенными значениями. Сгруппируйте данные по столбцу sex. Подсчитайте среднее значение роста для каждого пола
starwarsT %>%
    select(sex, height, eye_color) %>%
    drop_na() %>%
    group_by(sex) %>%
    summarise(meanHeight = mean(height));

#### Из набора данных starwars выберите столбцы sex, height, mass. Удалите все строки с пропущенными значениями. Сгруппируйте данные по столбцу sex. Подсчитайте среднее значение роста и веса для каждого пола, добавьте соответствующие столбцы
starwarsT %>%
    select(sex, height, mass) %>%
    drop_na() %>%
    group_by(sex) %>%
    summarise(meanHeight = mean(height), meanWeight = mean(mass));

#### Из набора данных starwars выберите столбцы sex, height, mass. Удалите все строки с пропущенными значениями. Сгруппируйте данные по столбцу sex. Подсчитайте среднее значение роста для каждого пола, добавьте соответствующий столбец. Дополнительно добавьте столбец, содержащий среднее значение веса по всей выборке
result <- starwarsT %>%
    select(sex, height, mass) %>%
    drop_na() %>%
    group_by(sex) %>%
    summarise(meanHeight = mean(height));

result <- result %>%
    mutate(mean = mean(result$meanHeight));

result;
    
