FROM ubuntu:24.04
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y python3 python3-pip python3-venv


# Create a virtual environment
RUN python3 -m venv /opt/venv

# Activate venv by adjusting PATH
ENV PATH="/opt/venv/bin:$PATH"

RUN pip install flask

ENV HOME /home

COPY flaskapp /home/flaskapp

EXPOSE 5000

STOPSIGNAL SIGTERM

WORKDIR /home/flaskapp

ENTRYPOINT [ "python3" ]

CMD [ "app.py" ]