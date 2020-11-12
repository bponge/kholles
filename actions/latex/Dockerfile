FROM debian:latest

LABEL "maintainer"="OR"
LABEL "repository"="https://github.com/olivierreynet/kholles"
LABEL "homepage"="https://github.com/olivierreynet/kholles"

LABEL "com.github.actions.name"="Build to PDF"
LABEL "com.github.actions.description"="Compile using LaTeX."
LABEL "com.github.actions.icon"="code"
LABEL "com.github.actions.color"="blue"

# Install all LaTeX dependencies
RUN apt-get update && \
    apt-get install --yes --no-install-recommends \
    apt-get install texlive-full \
    texlive-fonts-extra \
    texlive-fonts-recommended \
    texlive-generic-recommended \
    texlive-lang-english \
    texlive-xetex && \
    apt-get autoclean && apt-get --purge --yes autoremove && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ADD entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
