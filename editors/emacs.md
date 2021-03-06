#### Emacs:

links: 
1) https://www.gnu.org/software/emacs/refcards/pdf/refcard.pdf (eng, pdf)
2) https://www.emacswiki.org/ (ru)

---

**Выход из приложения:**

`ctrl` + `z`: свернуть

`ctrl` + `x`, `ctrl` + `c`: выход из приложения

---

**Работа с файлами:**

`ctrl` + `x`, `ctrl` + `f`: считать файл в приложение

`ctrl` + `x`, `ctrl` + `s`: сохранить файл на диск

`ctrl` + `x`, `s`: сохранить все файлы

`ctrl` + `x`, `i`: вставить файл в другой файл

`ctrl` + `x`, `ctrl` + `v`: заменить файл на другой файл

`ctrl` + `x`, `ctrl` + `w`: записать файл в другой файл

`ctrl` + `x`, `ctrl` + `q`: включить-отключить режим только чтения

`ctrl` + `x`, `b`: новый файл (буффер). Если не вводить имя - откроются заметки

`ctrl` + `x`, `k`: убить текущий буффер (закрыть файл). Если не вводить имя - закроет текущий

`ctrl` + `x`, `left` / `ctrl` + `x`, `right`: следующий / предыдущий буффер

---

**Помощь**

`ctrl` + `h` (или F1): получение помощи

`ctrl` + `h`, `t`: туториал

`ctrl` + `h`, `v`: следующая страница помощи

`ctrl` + `h`, `a`: поиск по строке

`ctrl` + `h`, `k`: подсказка по указанной команде/функции

`ctrl` + `h`, `f`: подсказка по функции по имени

`ctrl` + `h`, `m`: описание модов работы

---

**Восстановление после ошибок**

`ctrl` + `g`: отмена текушей команды

`ctrl` + `x`, `u`: операция undo

`ctrl` + `_` / `ctrl` + `/`: undo/redo

---

**Поиски**

`ctrl` + `s`: поиск по строке вперед

`ctrl` + `r`: поиск по строке назад

`ctrl` + `alt` + `s`: поиск по регулярному выражению вперед

`ctrl` + `alt` + `r`: поиск по регулярному выражению назад

`alt` + `p`: предыдущий поиск

`alt` + `n`: следующий поиск

`ctrl` + `g`: отменить поиск

---

**Смещение курсора**

`ctrl` + `f` / `ctrl` + `b`: смещение на символ вперед / назад

`alt` + `f` / `alt` + `b`: смещение на слово вперед / назад

`ctrl` + `n` / `ctrl` + `p`: смещение на строку вперед / назад

`ctrl` + `a` / `ctrl` + `e`: смещение в начало / конец строки

`alt` + `a` / `alt` + `e`: смещение в начало / конец предложения

`ctrl` + `[` / `ctrl` + `]`: смещение в начало / конец страницы

`ctrl` + `alt` + `f` / `ctrl` + `alt` + `b`: sexp (?) вперед / назад

`ctrl` + `alt` + `e` / `ctrl` + `alt` + `a`: смещение вперед / назад по функции

`alt` + `g`, `c`: перейти к символу по номеру

`alt` + `g`, `g`: перейти к строке по номеру

`alt` + `m`: перейти к началу строки (к отступу)

---

**Удаление**

`DEL` / `backspace`: удаление символа

`ctrl` + `d`: удаление символа (аналог del)

`alt` + `d`: удаление слова 

`alt` + `0`, `ctrl` + `k` / `ctrl` + `k`: удалить часть строку в начале / конце строки

`ctrl` + `x`, `backspace` / `alt` + `k`: удалить часть в начале / конце предложения

`ctrl` + `w`: убить регион

`alt` + `w`: скопировать регион для удаления

`alt` + `z`, <символ>: удалить все до символа

`ctrl` + `y`: yank back last thing killed

`alt` + `y`: replace last yank with previous kill

---

**Изменение форматирования CASE**

`alt` + `u`: слово в uppercase

`alt` + `l`: слово в lowercase

`ctrl` + `x`, `ctrl` + `u`: регион в uppercase

`ctrl` + `x`, `ctrl` + `l`: регион в lowercase

---

**Транспонирование**

`ctrl` + `t`: символ

`alt` + `t`: слово

`ctrl` + `x`, `ctrl` + `t`: строку

---

**Копировать-вставить**

`ctrl` + `w`: вырезать выделенный текст

`alt` + `w`: копировать выделенный текст

`ctrl` + `y`: вставить скопированный текст

---

**Замена**

`alt` + `x`, `replace-regexp` <искомый параметр> <изменяемый параметр>

Пример:

```
public class Main {
    public static void main(String[] args) {
        List avl = null;
    }
}
```
`alt` + `x`, `replace-regexp`, `public`, `private`

Результат:
```
private class Main {
    private static void main(String[] args) {
        List avl = null;
    }
}
```

---

Запуск командной строки:

`alt` + `x`, затем команда `shell`