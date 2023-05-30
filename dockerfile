FROM ruby:3.0

RUN apt update && apt install git
#RUN apk update && apk add --no-cache build-base && apk add git
RUN apt-get install -y ffmpeg && apt-get install bc

WORKDIR /usr/src/app

COPY Gemfile /usr/src/app
RUN gem install bundler && bundle install

COPY . /usr/src/app

CMD parallel_cucumber -n 2

EXPOSE 5000:5000