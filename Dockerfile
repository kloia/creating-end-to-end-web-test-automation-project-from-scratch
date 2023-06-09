FROM ruby:3.0

RUN apt update && apt install git
#RUN apk update && apk add --no-cache build-base && apk add git
RUN apt-get install -y ffmpeg && apt-get install bc

WORKDIR /usr/src/app
RUN curl -o /usr/src/app/Gemfile https://raw.githubusercontent.com/kloia/dockerize-ruby-web-project/master/Gemfile
RUN gem install bundler && bundle install

RUN cd /usr/src/app && git init && git remote add origin https://github.com/kloia/dockerize-ruby-web-project.git && git fetch && git checkout -f origin/master

CMD parallel_cucumber -n 2

EXPOSE 5000:5000