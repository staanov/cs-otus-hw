## Постройте машину Тьюринга, которая на вход получает натуральное число N и добавляет к нему 1 в двоичной записи.

M = ({q0, q1, q2}, {0,1}, {0,1,B}, 𝛿, q0, B, {q2})

| 𝛿 | 0 | 1 | B |
| ----------- | ----------- | ----------- | ----------- |
| q0 | (q0, 0, R) | (q1, 1, R) | (q1, *, L) |
| q1 | (q2, 1, *) | (q1, 0, L) | (q2, 1, *) |
| q2 | - | - | - |

; Из 0 состояния двигаемся слева направо пока не закончится число N в двоичном представлении, затем возвращаемся на последний элемент и переходим в состояние 1

0 * * r 0

0 _ * l 1

; В 1 состоянии двигаемся справа налево: если текущая цифра 1, то записываем 0, а 1 переходит в следующий разряд, так пока не найдем 0 или не закончится число

1 0 1 * halt

1 1 0 l 1

1 _ 1 * halt

Ссылка на симулятор:

https://morphett.info/turing/turing.html?5e9a40fcd7ebea59b207010e5c5468bf
