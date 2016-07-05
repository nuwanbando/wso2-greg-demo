#!/bin/bash
sh /wso2/wso2greg-5.2.0/bin/wso2server.sh &

#checks if the server is started
until $(curl --output /dev/null --silent --head --fail http://localhost:9763); do
    printf '.'
    sleep 5
done

#populates the asset defintions
cd /wso2/wso2greg-5.2.0/samples/asset-models/Populator/ && ant

#populate the data
cd /wso2/wso2greg-5.2.0/samples/getting_started/ && ant

#tail the log
tail -f /wso2/wso2greg-5.2.0/repository/logs/wso2carbon.log