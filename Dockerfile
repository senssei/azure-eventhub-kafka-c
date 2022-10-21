FROM gcc

RUN apt update
RUN apt install -y librdkafka-dev

WORKDIR /app
COPY . ./

RUN make consumer

CMD ["./consumer", "getting-started.ini"]