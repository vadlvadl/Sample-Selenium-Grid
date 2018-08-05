# Selenium-Grid Server

[Selenium-Grid](https://www.seleniumhq.org/docs/07_selenium_grid.jsp) allows you run your tests on different machines against different browsers in parallel. 

Selenium-Grid support distributed test execution. It allows for running your tests in a distributed test execution environment.


*This repo contains:*
* selenium-server-standalone-**3.13.0**.jar
* chromedriver_**win32_v2.41**
* geckodriver-**v0.21.0-win64**

To use latest versions of required software, please download it:
* [Selenium Grid](https://www.seleniumhq.org/download/)
* [ChromeDirver](http://chromedriver.chromium.org/downloads)
* [FirefoxDriver](https://github.com/mozilla/geckodriver/releases)


Place *selenium-server-standalone-\*.jar, chromedriver.exe, geckodriver.exe* in the same folder and run server:
```
java -jar selenium-server-standalone-3.13.0.jar -role hub
java -jar selenium-server-standalone-3.13.0.jar -role node 
```


In your Java method specify
```java
driver = new RemoteWebDriver(new URL("http://localhost:4444/wd/hub"),
                    DesiredCapabilities.chrome());
```
 or in case of [Selenide](http://selenide.org/):
```java
Configuration.remote = " http://192.168.0.5:4444/wd/hub";
Configuration.browser = "chrome";
```

