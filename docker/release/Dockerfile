FROM czyzu01/todobackend-base:latest
MAINTAINER Maciej Czyzowicz <czyzu01@gazeta.pl>


# Copy application artifacts
COPY target /wheelhouse

# Install application
RUN . /appenv/bin/activate && \
    pip install --no-index -f /wheelhouse todobackend && \
    rm -rf /wheelhouse
