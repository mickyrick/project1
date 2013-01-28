@Echo removing compiled classes and jars (and all) in lib folder

rd %WORKROOT%\src\cars\src\main\webapp\WEB-INF\classes /q /s


del %WORKROOT%\src\cars\src\main\webapp\WEB-INF\lib\*.* < yes.txt


mvn clean
