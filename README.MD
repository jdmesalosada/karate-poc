### PRE-REQUISITES
* Java 11
* Maven or gradle installed
* Cucumber for java plugin installed in intellij


#### RUN TESTS
``` mvn test ```

#### RUN TEST BY TAGS:
```mvn clean test -Dkarate.options="--tags @regression"```

#### RUN TEST BY RUNNER:
```mvn clean test -Dtest=CreatePostsRunner```

#### RUN TESTS BY TAGS IN A RUNNER:
```mvn clean test -Dkarate.options="--tags @invalid_post" -Dtest=CreatePostsRunner```


### REPORT
Once the tests are run the **target** folder should be generated. Go to **target -> karate-reports** 
and open the **karate-summary.html** file.



