# Spring Boot, JPA and MySQL One to Many mapping 

This application demonstrates the usage of One-to-one bi-directional mapping. We will take the example of User and User details to understand the working of one to one relationship in JPA.

![bookstore](https://imagehost.imageupload.net/2020/05/02/one-tooen.jpg)

## Requirements

1. Java - 1.8.x

2. Maven - 3.1.1

3. MySQL - 5.7.12    

## Steps to Setup

**1. Clone the application**

```bash
git clone https://gitlab.com/scbushan05/springjpa-one-to-one.git
```

**2. Create Mysql database**

```bash
create database ecom
```

**3. Change mysql username and password as per your installation**

+ open `src/main/resources/application.properties`

+ change `spring.datasource.username` and `spring.datasource.password` as per your mysql installation


**4. Build and run the app using maven**

```bash
mvn package
```

A new JAR file will be generated at `project/target/springjpa-0.0.1-SNAPSHOT.jar` 

**5. Run the app**

```bash
java -jar springjpa-0.0.1-SNAPSHOT.jar
```

The app will start running at <http://localhost:8080/springjpa/v1>.

## Explore Application features

The app provides the following features -

	1. Create User
	
	2. Create User details

## Learn more

You can find more examples on my blog as well as on my youtube channel - 

<https://bushansirgur.in>

<https://youtube.com/b2tech>