# Short_URL
Для начала, вам нужно будет добавить в проект пакет NuGet "Entity Framework".

Для  того, что бы подключить базу данных,  нужно сделать следующее:
1. Открыть свойства базы данных с помощью  "Обозреватель серверов".
2. Найти раздел Подключение, и скопировать с пункта "Строка подключения" данные.
![Снимок экрана 2022-01-19 183424](https://user-images.githubusercontent.com/96841452/150175320-7099a014-69cc-4e4b-9758-cadc8c86bbe4.png)
3. Вставить эти данные в файл "Web.config" вместо данных, что лежат в "connectionString", и сохранить всё это.
