#FROM alpine:3.7
FROM debian:stretch
RUN apt update && \
    apt -y dist-upgrade && \
    apt -y install gcc latex zsh vim git a2ps tmux tmuxinator python \
                   python3 open-cobol gfortran gettext \
		   liblocale-gettext-perl
RUN groupadd user && \
    useradd -m -g user -s /bin/zsh -c "Test User,,," user
USER user
RUN sh ./install_from_repositories.sh auto
CMD /bin/zsh
