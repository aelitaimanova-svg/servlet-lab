#!/bin/bash
# Tomcat 9 жүктеп, жобаны жинап, іске қосады
set -e
TOMCAT_VER=9.0.98
if [ ! -d "$HOME/tomcat" ]; then
  curl -sL "https://archive.apache.org/dist/tomcat/tomcat-9/v$TOMCAT_VER/bin/apache-tomcat-$TOMCAT_VER.tar.gz" -o /tmp/tomcat.tgz
  mkdir -p "$HOME/tomcat" && tar xzf /tmp/tomcat.tgz -C "$HOME/tomcat" --strip-components=1
fi
"$HOME/tomcat/bin/shutdown.sh" >/dev/null 2>&1 || true
mvn -q package -DskipTests
rm -rf "$HOME/tomcat/webapps/lab" "$HOME/tomcat/webapps/lab.war"
cp target/lab.war "$HOME/tomcat/webapps/lab.war"
"$HOME/tomcat/bin/startup.sh"
echo "Дайын: порт 8080 URL-ының соңына /lab/hello қосыңыз"
