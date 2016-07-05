FROM nuwanbando/javabase:v2

RUN mkdir wso2 

COPY pack/wso2greg-5.2.0.zip wso2/

RUN cd wso2/ && \
        unzip wso2greg-5.2.0.zip

COPY artifacts/mysql-connector-java-5.1.34-bin.jar /wso2/wso2greg-5.2.0/repository/components/lib/
COPY artifacts/master-datasources.xml /wso2/wso2greg-5.2.0/repository/conf/datasources/
COPY artifacts/antscript.sh /wso2/
COPY artifacts/store.json /wso2/wso2greg-5.2.0/repository/deployment/server/jaggeryapps/store/config/
COPY artifacts/publisher.json /wso2/wso2greg-5.2.0/repository/deployment/server/jaggeryapps/publisher/config


CMD ["sh", "/wso2/antscript.sh"]

EXPOSE 9763
EXPOSE 9443