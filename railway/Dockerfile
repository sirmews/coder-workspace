FROM ghcr.io/coder/coder:latest
ENV PORT=3000
ENV CODER_HTTP_ADDRESS=0.0.0.0:$PORT
ARG RAILWAY_STATIC_URL=
ENV CODER_ACCESS_URL=https://$RAILWAY_STATIC_URL
ARG DATABASE_URL
ENV CODER_PG_CONNECTION_URL=$DATABASE_URL
ENV CODER_EXPERIMENTS=*
ENV CODER_TELEMETRY_INSTALL_SOURCE=railway.app

# Install nodejs as root
USER root
RUN apk update && \
    apk add nodejs npm

# Switch back to the default user
USER coder