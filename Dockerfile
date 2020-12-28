FROM docker.io/commaai/openpilot-apks:latest


RUN rm -rf /tmp/openpilot/apks
RUN mkdir -p /tmp/openpilot/apks
WORKDIR /tmp/openpilot/apks

COPY . /tmp/openpilot/apks
