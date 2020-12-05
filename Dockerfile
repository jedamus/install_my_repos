FROM alpine:3.7
RUN apk update && \
    apk upgrade && \
    apk add zsh vim git a2ps tmux tmuxinator python python3 gettext liblocale-gettext-perl
RUN sh ./install_from_repositories.sh
CMD /bin/zsh
