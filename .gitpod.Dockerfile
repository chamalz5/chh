FROM debian:latest

# To avoid bricked workspaces (https://github.com/gitpod-io/gitpod/issues/1171)
ARG DEBIAN_FRONTEND=noninteractive

USER root

RUN true \
	&& apt install -y \
		novnc \
		chromium

USER gitpod

