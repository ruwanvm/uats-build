FROM amazoncorretto:8u302-alpine
WORKDIR /app/reactor
COPY ./lib/* ./lib/
COPY ./schema/* ./schema/
COPY app-*.jar app.jar
COPY ./conf/app-config.yml ./conf/app-config.yml
COPY ./conf/app.version ./conf/app.version
RUN chmod 755 app.jar
ENTRYPOINT java -cp app.jar:lib/* com.uats.app.UatsApp conf/app-config.yml $APP_ZONE
EXPOSE 8000 8080
