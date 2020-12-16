#FROM alpine:3.7
FROM debian:stretch
RUN sh ./apt.sh
RUN pip  install ...
RUN pip3 insatll ...
RUN groupadd user && \
    useradd -m -g user -s /bin/zsh -c "Test User,,," user
USER user
RUN sh ./install_from_repositories.sh auto
CMD /bin/zsh
