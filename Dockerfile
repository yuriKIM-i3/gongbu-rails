FROM ruby:3.1.2	
RUN apt-get update \
	&& apt-get install -y sudo --no-install-recommends \
	&& rm -rf /var/lib/apt/lists/*

ENV DOCKERIZE_VERSION v0.6.1
RUN wget https://github.com/jwilder/dockerize/releases/download/$DOCKERIZE_VERSION/dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz \
    && tar -C /usr/local/bin -xzvf dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz \
    && rm dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz

ARG UID=1001
ARG GID=1001
ARG UNAME=yuri

ENV UID ${UID}
ENV GID ${GID}
ENV UNAME ${UNAME}

# nopass란 그룹을 만들고, sudo설정 파일에는 nopass그룹은 패스워드 요구하지 말도록 설정
RUN groupadd -g $GID nopass
RUN useradd --uid $UID --create-home --shell /bin/bash -G sudo,root,nopass $UNAME
RUN echo '%nopass ALL=(ALL:ALL) NOPASSWD: ALL' | sudo EDITOR='tee -a' visudo

WORKDIR /usr/src/app/gongbu-rails
COPY Gemfile* ./
RUN gem install bundler -v 2.3.14
RUN bundle _2.3.14_ config set --local without 'production'
RUN bundle _2.3.14_ install
RUN pwd
COPY . .

EXPOSE 3000