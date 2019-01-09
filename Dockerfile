FROM jekyll/jekyll

RUN apk add --no-cache \
    python2 && \
    if [[ ! -e /usr/bin/python ]]; then ln -sf /usr/bin/python2 /usr/bin/python; fi 

RUN apk --update add imagemagick
RUN npm install -g gulp@3.9.1


COPY Gemfile ./

RUN bundle install

