FROM openjdk:latest

CMD ["mvn clean install"]

COPY target/assignment3-1.jar .

EXPOSE 8080

CMD ["java", "-jar", "assignment3-1.jar"]

# docker build -t survey_backend .
# docker run -p 8080:8080 --rm  --name survey_backend_container survey_backend

# docker buildx build --platform linux/amd64 -t survey_backend .
# docker tag survey_backend bidhanjanit/survey_backend_645
# docker push bidhanjanit/survey_backend_645
