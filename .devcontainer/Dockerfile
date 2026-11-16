FROM mcr.microsoft.com/devcontainers/base:ubuntu-24.04
RUN apt-get update \
 && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends gnucobol make \
 && rm -rf /var/lib/apt/lists/*

# Override duplicate fortify definitions in Ubuntu's GnuCOBOL compiler flags.
ENV COB_CFLAGS="-O2 -D_FORTIFY_SOURCE=3"
