# Servlet зертханалық жұмыстары (1-2)

Студент: АТЫ-ЖӨНІ, топ: ____

## IntelliJ IDEA-да ашу
1. File → New → Project from Version Control → осы репозиторий сілтемесін қойыңыз.
2. Maven өзгерістерін жүктеңіз (m белгішесі).
3. Tomcat 9 + Smart Tomcat плагині: Context path `/lab`, Deployment directory `src/main/webapp`.
4. Іске қосыңыз.

## Docker арқылы
    docker build -t lab .
    docker run -p 8080:8080 lab

## Беттер
- http://localhost:8080/lab/hello (1-жұмыс)
- http://localhost:8080/lab/about (1-жұмыс)
- http://localhost:8080/lab/life (2-жұмыс)

## GitHub Codespaces арқылы (браузерде)
Репозиторийде **Code → Codespaces → Create codespace on main**. Жоба өзі жиналып, Tomcat қосылады.
Қайта іске қосу: терминалда `bash run.sh`. Беттер: порт 8080 URL-ы + `/lab/hello`, `/lab/about`, `/lab/life`.
