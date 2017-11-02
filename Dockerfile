FROM  openjdk:8

COPY /target/universal/play-1.0-SNAPSHOT.zip /

RUN unzip play-1.0-SNAPSHOT.zip

CMD play-1.0-SNAPSHOT/bin/play -Dplay.crypto.secret=abcdefghijk
