FROM python:3.12.9-slim-bookworm

WORKDIR /bot
COPY . /bot

# Ensure the project root is on Python's import path inside the container
ENV PYTHONPATH=/bot

RUN python -m pip install -r requirements.txt

ENTRYPOINT [ "python", "bot.py" ]