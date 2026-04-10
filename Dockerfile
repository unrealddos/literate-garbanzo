FROM python:3.11-slim

WORKDIR /app

COPY unrealhax.py .
COPY unrealhax .
COPY start.sh .

RUN pip install python-telegram-bot
RUN chmod +x unrealhax
RUN chmod +x start.sh

CMD ["bash", "start.sh"]