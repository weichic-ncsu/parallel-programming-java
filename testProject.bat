@echo off

set /p PROJ_IDX="Please enter the project index you are working on: "
set PROJ_HOME=miniproject_%PROJ_IDX%

mvn clean -f %PROJ_HOME%\pom.xml && ^
mvn validate -f %PROJ_HOME%\pom.xml && ^
mvn compile -f %PROJ_HOME%\pom.xml && ^
mvn test -f %PROJ_HOME%\pom.xml
