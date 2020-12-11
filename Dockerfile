FROM gcc:latest

RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app

COPY . /usr/src/app

RUN apt install -y libncurses5-dev libncursesw5-dev

RUN make

CMD ["./nInvaders"]