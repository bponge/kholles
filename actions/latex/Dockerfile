FROM debian:latest

LABEL "maintainer"="Olivier Reynet https://github.com/olivierreynet"
LABEL "repository"="https://github.com/olivierreynet/kholles"
LABEL "homepage"="https://github.com/olivierreynet/"

LABEL "com.github.actions.name"="Build to PDF"
LABEL "com.github.actions.description"="Compile using LaTeX."
LABEL "com.github.actions.icon"="code"
LABEL "com.github.actions.color"="blue"

# Install all LaTeX dependencies
RUN apt-get update && \
    apt-get install --yes --no-install-recommends texlive-full  && \
    apt-get autoclean && \
    apt-get --purge --yes autoremove && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ADD make_kholles_EC_pdf.sh /make_kholles_EC_pdf.sh

RUN chmod +x /make_kholles_EC_pdf.sh

ENTRYPOINT ["/make_kholles_EC_pdf.sh"]
