FROM openjdk:latest

CMD ["mvn clean install"]

COPY target/assignment3-1.jar .

EXPOSE 8080

CMD ["java", "-jar", "assignment3-1.jar"]

# docker build -t survey_backend .
# docker run -p 8080:8080 --rm  --name survey_backend_container survey_backend