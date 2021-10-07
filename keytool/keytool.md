В рамках работы с сертификатами обычно используется контейнер PKCS 12 для хранения ключей и сертификатов, но в рамках Java, в дополнение широко используется проприетарный формат JKS (Java KeyStore). Для работы с хранилищем JDK поставляется с консольной утилитой keytool.

docs: https://docs.oracle.com/javase/8/docs/technotes/tools/unix/keytool.html

Создать ключи вместе с keystore:
```bash
keytool -genkey -alias example.com -keyalg RSA -keystore keystore.jks  -keysize 2048
```

Создание запроса сертификата (CSR) для существующего Java keystore:
```bash
keytool -certreq -alias example.com -keystore keystore.jks -file example.com.csr
```

Загрузка корневого или промежуточного CA сертификата:
```bash
keytool -import -trustcacerts -alias root -file Thawte.crt -keystore keystore.jks
```

Импорт доверенного сертификата:
```bash
keytool -import -trustcacerts -alias example.com -file example.com.crt -keystore keystore.jks
```

Генерация самоподписанного сертификата и keystore:
```bash
keytool -genkey -keyalg RSA -alias selfsigned -keystore keystore.jks -storepass password -validity 360 -keysize 2048
```

Просмотр сертификата:
```bash
keytool -printcert -v -file example.com.crt
```

Проверка списка сертификатов в keystore:
```bash
keytool -list -v -keystore keystore.jks
```

Проверка конкретного сертификата по алиасу в keystore
```bash
keytool -list -v -keystore keystore.jks -alias example.com
```

Удаление сертификата из keystore:
```bash
keytool -delete -alias example.com -keystore keystore.jks
```

Изменение пароля для keystore:
```bash
keytool -storepasswd -new new_storepass -keystore keystore.jks
```

Экспорт сертификата из keystore:
```bash
keytool -export -alias example.com -file example.com.crt -keystore keystore.jks
```

Список доверенный корневых сертификатов:
```bash
keytool -list -v -keystore $JAVA_HOME/jre/lib/security/cacerts
```

Добавление нового корневого сертификата в trustStore:
```bash
keytool -import -trustcacerts -file /path/to/ca/ca.pem -alias CA_ALIAS -keystore $JAVA_HOME/jre/lib/security/cacerts
```
