del %WORKROOT%\progs\tomcat-6.0.18-Cars\webapps\cars.war
rd %WORKROOT%\progs\tomcat-6.0.18-Cars\webapps\cars /S < yes.txt
rd %WORKROOT%\src\cars\target /S < yes.txt


mvn clean compile war:inplace cargo:start -Dmaven.test.skip=true -P INPLACE -Dcargo.servlet.port=%cargo_servlet_port% -Dcargo.debug.port=%cargo_debug_port%

