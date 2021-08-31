FROM amazoncorretto:8u302-alpine
WORKDIR /app
COPY ./lib/* ./lib/
COPY ./schema/* ./schema/
COPY app-*.jar app.jar
COPY ./config/app-config.yml ./conf/app-config.yml
RUN chmod 755 app.jar
EXPOSE 8000 8080
ENTRYPOINT java -cp app.jar:lib/* com.uats.app.UatsApp conf/app-config.yml $APP_ZONE
