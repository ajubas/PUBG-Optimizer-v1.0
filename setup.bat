@echo off
echo Creating Fresh Project Structure...
cd /d %USERPROFILE%\Desktop
mkdir PubgOptimizer
cd PubgOptimizer
mkdir src\main\java\com\pubgtools

echo Creating pom.xml (JLink Version)...
(
echo ^<project xmlns="http://maven.apache.org/POM/4.0.0"
echo          xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
echo          xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/xsd/maven-4.0.0.xsd"^>
echo     ^<modelVersion^>4.0.0^</modelVersion^>
echo     ^<groupId^>com.pubgtools^</groupId^>
echo     ^<artifactId^>PubgOptimizer^</artifactId^>
echo     ^<version^>1.0-SNAPSHOT^</version^>
echo.
echo     ^<properties^>
echo         ^<project.build.sourceEncoding^>UTF-8^</project.build.sourceEncoding^>
echo         ^<maven.compiler.source^>17^</maven.compiler.source^>
echo         ^<maven.compiler.target^>17^</maven.compiler.target^>
echo         ^<javafx.version^>21.0.2^</javafx.version^>
echo     ^</properties^>
echo.
echo     ^<dependencies^>
echo         ^<dependency^>
echo             ^<groupId^>org.openjfx^</groupId^>
echo             ^<artifactId^>javafx-controls^</artifactId^>
echo             ^<version^>${javafx.version}^</version^>
echo         ^</dependency^>
echo     ^</dependencies^>
echo.
echo     ^<build^>
echo         ^<plugins^>
echo             ^<plugin^>
echo                 ^<groupId^>org.apache.maven.plugins^</groupId^>
echo                 ^<artifactId^>maven-compiler-plugin^</artifactId^>
echo                 ^<version^>3.11.0^</version^>
echo                 ^<configuration^>
echo                     ^<source^>17^</source^>
echo                     ^<target^>17^</target^>
echo                 ^</configuration^>
echo             ^</plugin^>
echo.
echo             ^<plugin^>
echo                 ^<groupId^>org.openjfx^</groupId^>
echo                 ^<artifactId^>javafx-maven-plugin^</artifactId^>
echo                 ^<version^>0.0.8^</version^>
echo                 ^<configuration^>
echo                     ^<mainClass^>com.pubgtools.PubgOptimizerApp^</mainClass^>
echo                     ^<compress^>2^</compress^>
echo                     ^<noHeaderFiles^>true^</noHeaderFiles^>
echo                     ^<noManPages^>true^</noManPages^>
echo                     ^<launcher^>launcher^</launcher^>
echo                     ^<jlinkImageName^>pubg-runtime^</jlinkImageName^>
echo                     ^<jlinkZipName^>distribution^</jlinkZipName^>
echo                 ^</configuration^>
echo             ^</plugin^>
echo         ^</plugins^>
echo     ^</build^>
echo ^</project^>
) > pom.xml

echo Creating Java File...
powershell -Command "[System.IO.File]::WriteAllText('src\main\java\com\pubgtools\PubgOptimizerApp.java', (Invoke-WebRequest -Uri 'https://pastebin.com/raw/NNV6NxWu').Content)"

echo.
echo DONE. Open the folder and verify 'PubgOptimizerApp.java' exists.
pause