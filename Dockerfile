FROM cloudron/base:4.0.0@sha256:31b195ed0662bdb06a6e8a5ddbedb6f191ce92e8bee04c03fb02dd4e9d0286df

RUN mkdir -p /app/code
WORKDIR /app/code

RUN git clone https://github.com/DIYgod/RSSHub.git /app/code/rsshub
RUN cd /app/code/rsshub
RUN npm install /app/code/rsshub
RUN npm ci --production

COPY start.sh /app/pkg/

CMD [ "/app/pkg/start.sh" ]

