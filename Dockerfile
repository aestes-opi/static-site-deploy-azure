FROM microsoft/azure-cli

LABEL "com.github.actions.name"="Deploy repo to Azure Storage"
LABEL "com.github.actions.description"="Deploys code to Azure Storage and enables Static Website"
LABEL "com.github.actions.icon"="box"
LABEL "com.github.actions.color"="green"
LABEL "repository"="https://github.com/aestes-opi/azure-static-website-deploy"
LABEL "homepage"="https://github.com/aestes-opi/azure-static-website-deploy"
LABEL "maintainer"="Andru Estes <andru.estes@objectpartners.com>"

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
