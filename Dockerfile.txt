FROM python
RUN apt-get update && apt-get install -y \
    python3-pip \
    vim \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*
RUN pip3 install slackbot
RUN mkdir -p slackbot/plugins
VOLUME slackbot
WORKDIR slackbot
COPY run.py slackbot
COPY slackbot_settings.py
RUN touch plugins/__init__.py plugins/my_mention.py
RUN sed -i -e 's/^API_TOKEN = .*/API_TOKEN = "$API_TOKEN"/g' slackbot_settings.py
CMD [ "python3", "run.py" ]