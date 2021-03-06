FROM python
RUN apt-get update && apt-get install -y \
    python3-pip \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*
RUN pip3 install slackbot
RUN mkdir -p slackbot/plugins
VOLUME slackbot
COPY run.py slackbot
COPY slackbot_settings.py slackbot
WORKDIR slackbot

COPY docker-entrypoint.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/docker-entrypoint.sh \
 && ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
ENTRYPOINT ["docker-entrypoint.sh"]

CMD [ "python3", "run.py" ]