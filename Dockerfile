FROM haskell:7
MAINTAINER Jan Philip Bernius <janphilip@bernius.net>

# Set to Non-Interactive
ENV DEBIAN_FRONTEND noninteractive

# Install all TeX and LaTeX dependences
RUN apt-get update && \
  apt-get install --yes --no-install-recommends \
  make \
  git \
  ca-certificates \
  locales \
  lmodern \
  texlive-latex-base \
  texlive-fonts-recommended \
  texlive-generic-recommended \
  texlive-lang-english \
  texlive-lang-german \
  latex-xcolor \
  texlive-math-extra \
  texlive-latex-extra \
  texlive-bibtex-extra \
  biber \
  fontconfig \
  texlive-xetex && \
  apt-get autoclean && apt-get --purge --yes autoremove && \
  rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Install Pandoc
RUN cabal update && cabal install \
  pandoc \
  pandoc-citeproc \
  pandoc-citeproc-preamble \
  pandoc-crossref

RUN dpkg-reconfigure locales \
  && locale-gen C.UTF-8 \
  && /usr/sbin/update-locale LANG=C.UTF-8

ENV LC_ALL C.UTF-8

# Export the output data
WORKDIR /data
VOLUME ["/data"]

ENTRYPOINT ["pandoc"]

CMD ["--help"]
