FROM cloudron/base:4.0.0@sha256:31b195ed0662bdb06a6e8a5ddbedb6f191ce92e8bee04c03fb02dd4e9d0286df

RUN mkdir -p /app/code
WORKDIR /app/code/

RUN git clone https://git.hwarf.com/jglemza/RSSHub.git /app/code

RUN npm install
#RUN npm ci --omit=dev

ADD start.sh /app/pkg/

CMD [ "/app/pkg/start.sh" ]

