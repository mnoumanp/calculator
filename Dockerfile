FROM openjdk:8
ADD target/CalculatorSampleApp-0.0.1-SNAPSHOT.jar CalculatorSampleApp-0.0.1-SNAPSHOT.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "CalculatorSampleApp-0.0.1-SNAPSHOT.jar"]