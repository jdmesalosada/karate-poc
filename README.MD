PRE-REQUISITES
* At least java 8 installed
* Maven or gradle installed
* Cucumber for java plugin installed in intellij


RUN TESTS
* mvn test

RUN TEST BY TAGS:
* mvn clean test "karate.options=--tags @regression"

RUN TEST BY RUNNER:
* mvn clean test -Dtest=CreatePostsRunner

RUN TESTS BY TAGS IN A RUNNER:
* mvn clean test "-Dkarate.options=--tags @invalid_post" -Dtest=CreatePostsRunner

