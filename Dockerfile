FROM heroku/heroku:20
RUN curl -sSL https://github.com/erebe/wstunnel/releases/download/v4.0/wstunnel-x64-linux > /bin/wstunnel
RUN chmod +x /bin/wstunnel
RUN useradd -m heroku
USER heroku
EXPOSE 5000
CMD wstunnel --server ws://0.0.0.0:8080