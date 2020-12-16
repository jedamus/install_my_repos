#!/usr/bin/env sh

# erzeugt Mittwoch, 16. Dezember 2020 18:57 (C) 2020 von Leander Jedamus
# modifiziert Mittwoch, 16. Dezember 2020 19:23 von Leander Jedamus

apt update && \
apt -y dist-upgrade && \
apt -y install gcc g++ zsh vim git a2ps tmux tmuxinator python python3 \
               open-cobol gfortran gettext perl liblocale-gettext-perl \
	       aptitude noweb cweb-latex flex bison docutils-common \
	       docutils-doc \
#	       texlive texlive-latex-base texlive-latex-extra \
#	       texlive-latex-extra-doc texlive-latex-recommended-doc \
#	       texlive-binaries texlive-lang-german texlive-science \
#	       texlive-science-doc texlive-xetex \
	       texlive-full \
	       python-docutils python-pip python3-pip python-docker python-git \
	       python-kivy python-ldap python-ly python-matplotlib \
	       python-mysqldb python-nagiosplugin python-neuroshare \
	       python-neurosynth python-nose python-notify python-numpy \
	       python-pandas python-pyinotify python-pyinotify-doc python-qt4 \
	       python-scipy python-subversion-dbg python-sympy \
	       libpython3-stdlib python3-docker python3-git python3-minimal \
	       python3-mysqldb python3-pypuppetdb python3-pyqt4 python3-pyqt5 \
	       python3-smbc python3-notify2 python3-pyinotify

# vim:ai sw=2

