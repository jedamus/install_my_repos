#FROM alpine:3.7
FROM debian:stretch
RUN apt update && \
    apt -y dist-upgrade && \
    apt -y install gcc g++ zsh vim git a2ps tmux tmuxinator python python3 \
                   open-cobol gfortran gettext perl liblocale-gettext-perl \
		   aptitude noweb cweb-latex flex bison docutils-common \
		   docutils-doc python-docutils python-pip \
#		   texlive texlive-latex-base texlive-latex-extra \
#		   texlive-latex-extra-doc texlive-latex-recommended-doc \
#		   texlive-binaries texlive-lang-german texlive-science \
#		   texlive-science-doc texlive-xetex \
		   texlive-full
RUN groupadd user && \
    useradd -m -g user -s /bin/zsh -c "Test User,,," user
USER user
RUN sh ./install_from_repositories.sh auto
CMD /bin/zsh
