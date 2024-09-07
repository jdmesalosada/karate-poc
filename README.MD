### PRE-REQUISITES
* Java 11
* Maven or gradle installed
* Cucumber for java plugin installed in intellij


#### RUN TESTS
``` mvn clean test ```

#### RUN TEST BY TAGS:
```mvn clean test -Dkarate.options="--tags @regression```

#### RUN TEST BY RUNNER:
```mvn clean test -Dtest=CreatePostsRunner```

#### RUN TESTS BY TAGS IN A RUNNER:
```mvn clean test "-Dkarate.options=--tags @invalid_post" -Dtest=CreatePostsRunner```

#### RUN A SINGLE METHOD:
```mvn test -Dtest=PetRunner#updatePet``` Where PetRunner is the runner name and testTags is the method name 


### REPORT
Once the tests are run the **target** folder should be generated. Go to **target -> karate-reports** 
and open the **karate-summary.html** file.


https://github.com/karatelabs/karate#parallel-execution

