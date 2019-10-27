**Основной синтаксис**

```
$ find <опции> <начальный/путь> <выражение>
```
*опции* - атрибуты, определяющие поведение процесса поиска

*начальный/путь* - верхнеуровневая директория

*выражение* - определяет параметры вывода

---

**Базовые вещи**

`-O1` - (по-умолчанию) фильтровать сначала по имени файла

`-O2` - сначала имя файла, затем тип файла

`-O3` - разрешить find автоматически переупорядочивать поиск на основе эффективного использования ресурсов и вероятности.

`-maxdepth X` - поиск в текущем каталоге, а также во всех подкаталогах X уровней

`-name` - поиск по имени

`-iname` - поиск без учета регистра

`-not` - возвращать только результаты, которые не соответствуют тестовому случаю

`-type f` - поиск только файлов

`-type d` - поиск только директорий

---

**Примеры поиска**

Бозовый поиск файлов

```
$ find / -name foo.txt -type f -print             # полная команда
$ find / -name foo.txt -type f                    # -print не обязательно
$ find / -name foo.txt                            # без указания типа "type==file"
$ find . -name foo.txt                            # искать в текущей директории
$ find . -name "foo.*"                            # wildcard
$ find . -name "*.txt"                            # wildcard
$ find /users/al -name Cookbook -type d           # искать папку '/users/al'
```

Поиск в нескольких директорий

```
$ find /opt /usr /var -name foo.scala -type f     # поиск в нескольких директорий
```

Поиск нечувствительный к регистру

```
$ find . -iname foo                               # найти foo, Foo, FOo, FOO, и т.д.
$ find . -iname foo -type d                       # тоже самое, только для папок
$ find . -iname foo -type f                       # тоже самое, только для файлов
```

Поиск файлов с различными расширениями

```
$ find . -type f \( -name "*.c" -o -name "*.sh" \)                       # найти файлы *.c и *.sh
$ find . -type f \( -name "*cache" -o -name "*xml" -o -name "*html" \)   # тройной паттерн
```

Поиск файлов не соответствующих паттерну (-not)

```
$ find . -type f -not -name "*.html"                                # Все файлы не заканчивающиеся на  ".html"
```

Поиск файлов по тексту в файле (find + grep)

```
$ find . -type f -name "*.java" -exec grep -l StringBuffer {} \;    # найти StringBuffer во всех *.java файлах
$ find . -type f -name "*.java" -exec grep -il string {} \;         # опция -i для игнорирования регистра
$ find . -type f -name "*.gz" -exec zgrep 'GET /foo' {} \;          # поиск по строке в файлах gzip-архива
```

5 строк до, 10 строк после соответствия по grep

```
$ find . -type f -name "*.scala" -exec grep -B5 -A10 'null' {} \;
# подробнее https://alvinalexander.com/linux-unix/find-grep-print-lines-before-after-search-term
```

Поиск файлов и выполнение команд после (find + exec)

```
$ find /usr/local -name "*.html" -type f -exec chmod 644 {} \;      # задать всем html-файлам chmod 644
$ find htdocs cgi-bin -name "*.cgi" -type f -exec chmod 755 {} \;   # задать всем cgi-файлам chmod 755
$ find . -name "*.pl" -exec ls -ld {} \;                            # выполнить команду ls на найденных файлах
```

Поиск и копирование

```
$ find . -type f -name "*.mp3" -exec cp {} /tmp/MusicFiles \;       # скопировать *.mp3 файлы в папку /tmp/MusicFiles
```

Скопировать один файлв в несколько директорий

```
$ find dir1 dir2 dir3 dir4 -type d -exec cp header.shtml {} \;      # скопировать файл header.shtml во все директории
```

Поиск и удаление

```
$ find . -type f -name "Foo*" -exec rm {} \;                        # удалить все "Foo*" файлы под текущей директорией
$ find . -type d -name CVS -exec rm -r {} \;                        # удалить все поддиректории "CVS" под текущей директорией
```

Поиск файлов по времени изменения

```
$ find . -mtime 1               # 24 часа
$ find . -mtime -7              # последние 7 дней
$ find . -mtime -7 -type f      # только файлы
$ find . -mtime -7 -type d      # только папки
```

Поиск файлов по времени изменения, используя временные файлы

```
$ touch 09301330 poop           # 1) создать временный файл с заданной датой изменения
$ find . -mnewer poop           # 2) вернуть список новых файлов
$ rm poop                       # 3) удалить временный файл
```

Поиск по времени (работает на max os x)

```
$ find / -newerct '1 minute ago' -print
```

find и tar

```
$ find . -type f -name "*.java" | xargs tar cvf myfile.tar
$ find . -type f -name "*.java" | xargs tar rvf myfile.tar
# подробнее https://alvinalexander.com/blog/post/linux-unix/using-find-xargs-tar-create-huge-archive-cygwin-linux-unix
```

find, tar и xargs
```
$ find . -name -type f '*.mp3' -mtime -180 -print0 | xargs -0 tar rvf music.tar
# -print0 помогает обработать пробелы в именах файлов
# подробнее https://alvinalexander.com/mac-os-x/mac-backup-filename-directories-spaces-find-tar-xargs
```

find и pax (вместо xargs и tar)
```
$ find . -type f -name "*html" | xargs tar cvf jw-htmlfiles.tar -
$ find . -type f -name "*html" | pax -w -f jw-htmlfiles.tar
# подробнее https://alvinalexander.com/blog/post/linux-unix/using-pax-instead-of-tar
```
