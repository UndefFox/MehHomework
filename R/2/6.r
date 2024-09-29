## Задание 6
###  С помощью какой операции можно получить ответ: "TRUE" "FALSE" "TRUE"

#as."название типа" - это способ приведения одного типа к другому. Здесь следует идти читать строчка как бы справа налево, изнутри скобок. Сделайте это задание без использования Rstudio

#Пример работы:

#x_numeric <- c(10, 156, -5) 

#x_character <- as.character(x_numeric)
#x_character # "10"  "156" "-5"

# 1. as.character(as.numeric(as.logical(-1:1)))  N
# 2. as.character(as.logical(-1:1))              T
# 3. -1:1                                        N
# 4. as.logical(-1:1)                            N
# 5. as.numeric(as.logical(-1:1))                N
# 6. as.numeric(as.character(as.logical(-1:1)))  N