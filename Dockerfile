# Dockerfile for Marand EHR Viewer

FROM tomcat:8-alpine

LABEL org.label-schema.vendor="Marand" \
      org.label-schema.url="http://marand.si/" \
      org.label-schema.name="ThinkEHR EHR Viewer" \
      org.label-schema.version="v0.0.0" \
      org.label-schema.docker.schema-version="1.0" \
      com.inidus.maintainer="Inidus" \
      com.inidus.contact="Inidus <contact@inidus.com>"

# Inidus - Install Think!EHR Viewer
WORKDIR /usr/local/tomcat
COPY . .
# COPY ./conf/ehrviewer.properties /usr/local/tomcat/conf/
# COPY ./source/ehrviewer.war /usr/local/tomcat/webapps/

# RUN ln -s ${EHRVIEWER_PATH}/${EHRVIEWER_WAR} /usr/local/tomcat/webapps/${EHRVIEWER_WAR} && \
#     ln -s ${EHRVIEWER_PATH}/ehrviewer.properties /usr/local/tomcat/conf/ehrviewer.properties

EXPOSE 8080

CMD ["catalina.sh", "run"]
