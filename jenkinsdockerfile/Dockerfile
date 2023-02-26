# Debian11 bullseye
FROM jenkins/jenkins:lts

USER root
RUN apt update -y && apt-get install -y --no-install-recommends \
curl apt-transport-https software-properties-common
RUN curl -sSL https://packages.microsoft.com/keys/microsoft.asc | apt-key add -
RUN apt-add-repository https://packages.microsoft.com/debian/11/prod/

# Install .NET SDK
RUN apt-get update \
&& apt-get install -y dotnet-sdk-6.0
COPY daemon.json /etc/docker/daemon.json
RUN curl https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3 | bash
# Switch back to jenkins user
USER jenkins
