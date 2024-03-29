FROM gitpod/workspace-full:latest

USER root
RUN apt-get update -y -q \
  && apt-get install -y -q --no-install-recommends \
     libc6-dev libpango1.0-dev libx11-dev xorg-dev libgtk2.0-dev gtk2-engines-pixbuf libgtkglext1-dev wget git git-doc rlwrap gcc g++ make

USER gitpod
RUN cd /tmp \
  && curl -fsSL https://downloads.factorcode.org/linux-x86-64/factor-linux-x86-64-2022-02-16-17-52.tar.gz -o factor.tar.gz \
  && tar -xf factor.tar.gz \
  && mv factor $HOME/.factor
ENV PATH=$HOME/.factor:$PATH

RUN printf "USING: parser vocabs.loader sequences namespaces ;\nvocab-roots [ \".\" suffix ] change\n" > $HOME/.factor-rc
