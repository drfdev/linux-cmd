Проверить существует ли директория, и тогда запустить jar-ник:

```sh
#!/bin/bash
TARGET_DIRECTORY="magic-box-jar/target"
if [ -d "$TARGET_DIRECTORY" ]; then
  # target directory exists
  cd $TARGET_DIRECTORY
  java -jar magic-box-jar-1.0-SNAPSHOT.jar
else
  # no directory
  echo "Directory: ${TARGET_DIRECTORY} not exists, build project before run"
fi
```
