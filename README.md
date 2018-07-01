# Docker Image with Nodejs and Microsoft dotnet Core

## Build

    > docker build -t nodejs-dotnet_core:dev .
    Sending build context to Docker daemon  77.31kB
    Step 1/2 : FROM node:8.11.3
     ---> ba6ed54a3479
    Step 2/2 : CMD echo git: `git --version`; echo node: `node --version`; echo npm `npm --version`; echo npx `npx --version`
     ---> Running in ac71d9701049
    Removing intermediate container ac71d9701049
     ---> eba0db5234db
    Successfully built eba0db5234db
    Successfully tagged nodejs-dotnet_core:dev
    
## Run
    
    > docker run nodejs-dotnet_core:dev
    git: git version 2.1.4
    node: v8.11.3
    npm 5.6.0
    npx 9.7.1


## This doesn't work

This takes the dotnet image as base, and adds Node.

This doesn't work: 

    >docker build -t nodejs-dotnet_core:dev .
    Sending build context to Docker daemon  118.3kB
    Step 1/6 : FROM microsoft/dotnet:2.1.301-sdk-stretch
     ---> 9d32878ab9fe
    Step 2/6 : RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
     ---> Using cache
     ---> 21c4788f94cf
    Step 3/6 : RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
     ---> Running in e2afc3904ae2
    + gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 94AE36675C464D64BAFA68DD7434390BDBE9B9C5
    gpg: directory '/root/.gnupg' created
    gpg: keybox '/root/.gnupg/pubring.kbx' created
    gpg: keyserver receive failed: Cannot assign requested address
    + gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys 94AE36675C464D64BAFA68DD7434390BDBE9B9C5
    gpg: /root/.gnupg/trustdb.gpg: trustdb created
    gpg: key 7434390BDBE9B9C5: public key "Colin Ihrig <cjihrig@gmail.com>" imported
    gpg: no ultimately trusted keys found
    gpg: Total number processed: 1
    gpg:               imported: 1
    + gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys FD3A5288F042B6850C66B31F09FE44734EB7990E
    gpg: keyserver receive failed: Cannot assign requested address
    + gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys FD3A5288F042B6850C66B31F09FE44734EB7990E
    gpg: key 09FE44734EB7990E: public key "Jeremiah Senkpiel <fishrock123@rocketmail.com>" imported
    gpg: no ultimately trusted keys found
    gpg: Total number processed: 1
    gpg:               imported: 1
    + gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 71DCFD284A79C3B38668286BC97EC7A07EDE3FC1
    gpg: keyserver receive failed: Cannot assign requested address
    + gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys 71DCFD284A79C3B38668286BC97EC7A07EDE3FC1
    gpg: key C97EC7A07EDE3FC1: public key "keybase.io/jasnell <jasnell@keybase.io>" imported
    gpg: no ultimately trusted keys found
    gpg: Total number processed: 1
    gpg:               imported: 1
    + gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys DD8F2338BAE7501E3DD5AC78C273792F7D83545D
    gpg: keyserver receive failed: Cannot assign requested address
    + gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys DD8F2338BAE7501E3DD5AC78C273792F7D83545D
    gpg: key C273792F7D83545D: public key "Rod Vagg <rod@vagg.org>" imported
    gpg: no ultimately trusted keys found
    gpg: Total number processed: 1
    gpg:               imported: 1
    + gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8
    gpg: keyserver receive failed: Cannot assign requested address
    + gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8
    gpg: key E73BC641CC11F4C8: public key "Myles Borins <myles.borins@gmail.com>" imported
    gpg: no ultimately trusted keys found
    gpg: Total number processed: 1
    gpg:               imported: 1
    + gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys B9AE9905FFD7803F25714661B63B535A4C206CA9
    gpg: keyserver receive failed: Cannot assign requested address
    + gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys B9AE9905FFD7803F25714661B63B535A4C206CA9
    gpg: key B63B535A4C206CA9: public key "Evan Lucas <evanlucas@me.com>" imported
    gpg: no ultimately trusted keys found
    gpg: Total number processed: 1
    gpg:               imported: 1
    + gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 56730D5401028683275BD23C23EFEFE93C4CFFFE
    gpg: keyserver receive failed: Cannot assign requested address
    + gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys 56730D5401028683275BD23C23EFEFE93C4CFFFE
    gpg: key 23EFEFE93C4CFFFE: public key "Italo A. Casas <me@italoacasas.com>" imported
    gpg: no ultimately trusted keys found
    gpg: Total number processed: 1
    gpg:               imported: 1
    + gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 77984A986EBC2AA786BC0F66B01FBB92821C587A
    gpg: keyserver receive failed: Cannot assign requested address
    + gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys 77984A986EBC2AA786BC0F66B01FBB92821C587A
    gpg: key B01FBB92821C587A: public key "Gibson Fahnestock <gibfahn@gmail.com>" imported
    gpg: Total number processed: 1
    gpg:               imported: 1
    + gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600
    gpg: keyserver receive failed: Cannot assign requested address
    + gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys 8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600
    gpg: key 770F7A9A5AE15600: public key "Micha�l Zasso (Targos) <targos@protonmail.com>" imported
    gpg: Total number processed: 1
    gpg:               imported: 1
    Removing intermediate container e2afc3904ae2
     ---> c0cb4ea81154
    Step 4/6 : ENV NODE_VERSION 8.11.3
     ---> Running in 0797b8814859
    Removing intermediate container 0797b8814859
     ---> c20e5abb0d59
    Step 5/6 : RUN ARCH= && dpkgArch="$(dpkg --print-architecture)"   && case "${dpkgArch##*-}" in     amd64) ARCH='x64';;     ppc64el) ARCH='ppc64le';;     s390x) ARCH='s390x';;     arm64) ARCH='arm64';;     armhf) ARCH='armv7l';;     i386) ARCH='x86';;     *) echo "unsupported architecture"; exit 1 ;;   esac   && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"   && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -   && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner   && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs
     ---> Running in 3e4cb233266c
    gpg: Signature made Tue Jun 12 23:26:36 2018 UTC
    gpg:                using RSA key B9AE9905FFD7803F25714661B63B535A4C206CA9
    gpg: Good signature from "Evan Lucas <evanlucas@me.com>" [unknown]
    gpg:                 aka "Evan Lucas <evanlucas@keybase.io>" [unknown]
    gpg: WARNING: This key is not certified with a trusted signature!
    gpg:          There is no indication that the signature belongs to the owner.
    Primary key fingerprint: B9AE 9905 FFD7 803F 2571  4661 B63B 535A 4C20 6CA9
    node-v8.11.3-linux-x64.tar.xz: OK
    tar (child): xz: Cannot exec: No such file or directory
    tar (child): Error is not recoverable: exiting now
    tar: Child returned status 2
    tar: Error is not recoverable: exiting now
    The command '/bin/sh -c ARCH= && dpkgArch="$(dpkg --print-architecture)"   && case "${dpkgArch##*-}" in     amd64) ARCH='x64';;     ppc64el) ARCH='ppc64le';;     s390x) ARCH='s390x';;     arm64) ARCH='arm64';;     armhf) ARCH='armv7l';;     i386) ARCH='x86';;     *) echo "unsupported architecture"; exit 1 ;;   esac   && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"   && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -   && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner   && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs' returned a non-zero code: 2

Running the Node package itself also gives some WARNINGS, but does work"

CP Node image into an empty directory, and try

Dockerfile (from [https://github.com/nodejs/docker-node/blob/master/8/stretch/Dockerfile]):

    FROM buildpack-deps:stretch
    
    RUN groupadd --gid 1000 node \
      && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
    
    # gpg keys listed at https://github.com/nodejs/node#release-team
    RUN set -ex \
      && for key in \
        94AE36675C464D64BAFA68DD7434390BDBE9B9C5 \
        FD3A5288F042B6850C66B31F09FE44734EB7990E \
        71DCFD284A79C3B38668286BC97EC7A07EDE3FC1 \
        DD8F2338BAE7501E3DD5AC78C273792F7D83545D \
        C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8 \
        B9AE9905FFD7803F25714661B63B535A4C206CA9 \
        56730D5401028683275BD23C23EFEFE93C4CFFFE \
        77984A986EBC2AA786BC0F66B01FBB92821C587A \
        8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600 \
      ; do \
        gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" || \
        gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" || \
        gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ; \
      done
    
    ENV NODE_VERSION 8.11.3
    
    RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" \
      && case "${dpkgArch##*-}" in \
        amd64) ARCH='x64';; \
        ppc64el) ARCH='ppc64le';; \
        s390x) ARCH='s390x';; \
        arm64) ARCH='arm64';; \
        armhf) ARCH='armv7l';; \
        i386) ARCH='x86';; \
        *) echo "unsupported architecture"; exit 1 ;; \
      esac \
      && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz" \
      && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc" \
      && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc \
      && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c - \
      && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner \
      && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt \
      && ln -s /usr/local/bin/node /usr/local/bin/nodejs
    
    ENV YARN_VERSION 1.6.0
    
    RUN set -ex \
      && for key in \
        6A010C5166006599AA17F08146C2130DFD2497F5 \
      ; do \
        gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" || \
        gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" || \
        gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ; \
      done \
      && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz" \
      && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc" \
      && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \
      && mkdir -p /opt \
      && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/ \
      && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn \
      && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg \
      && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
    
    CMD [ "node" ]


Command:

    >docker build -t nodejs:temp .
    Sending build context to Docker daemon   16.9kB
    Step 1/8 : FROM buildpack-deps:stretch
    stretch: Pulling from library/buildpack-deps
    0bd44ff9c2cf: Already exists 
    047670ddbd2a: Already exists 
    ea7d5dc89438: Already exists 
    ae7ad5906a75: Already exists 
    0f2ddfdfc7d1: Pull complete 
    Digest: sha256:d830c66e991a9412f077f524219d5fa95adcd09461de2082d8630e47ae1edb1a
    Status: Downloaded newer image for buildpack-deps:stretch
     ---> c41be0e81849
    Step 2/8 : RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
     ---> Running in c6aa24066657
    Removing intermediate container c6aa24066657
     ---> 231fc74c5fc2
    Step 3/8 : RUN set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
     ---> Running in e6ea47114e21
    + gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 94AE36675C464D64BAFA68DD7434390BDBE9B9C5
    gpg: directory '/root/.gnupg' created
    gpg: keybox '/root/.gnupg/pubring.kbx' created
    gpg: /root/.gnupg/trustdb.gpg: trustdb created
    gpg: key 7434390BDBE9B9C5: public key "Colin Ihrig <cjihrig@gmail.com>" imported
    gpg: no ultimately trusted keys found
    gpg: Total number processed: 1
    gpg:               imported: 1
    + gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys FD3A5288F042B6850C66B31F09FE44734EB7990E
    gpg: key 09FE44734EB7990E: public key "Jeremiah Senkpiel <fishrock123@rocketmail.com>" imported
    gpg: no ultimately trusted keys found
    gpg: Total number processed: 1
    gpg:               imported: 1
    + gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 71DCFD284A79C3B38668286BC97EC7A07EDE3FC1
    gpg: key C97EC7A07EDE3FC1: public key "keybase.io/jasnell <jasnell@keybase.io>" imported
    gpg: no ultimately trusted keys found
    gpg: Total number processed: 1
    gpg:               imported: 1
    + gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys DD8F2338BAE7501E3DD5AC78C273792F7D83545D
    gpg: key C273792F7D83545D: public key "Rod Vagg <rod@vagg.org>" imported
    gpg: no ultimately trusted keys found
    gpg: Total number processed: 1
    gpg:               imported: 1
    + gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8
    gpg: key E73BC641CC11F4C8: public key "Myles Borins <myles.borins@gmail.com>" imported
    gpg: no ultimately trusted keys found
    gpg: Total number processed: 1
    gpg:               imported: 1
    + gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys B9AE9905FFD7803F25714661B63B535A4C206CA9
    gpg: key B63B535A4C206CA9: public key "Evan Lucas <evanlucas@me.com>" imported
    gpg: no ultimately trusted keys found
    gpg: Total number processed: 1
    gpg:               imported: 1
    + gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 56730D5401028683275BD23C23EFEFE93C4CFFFE
    gpg: key 23EFEFE93C4CFFFE: public key "Italo A. Casas <me@italoacasas.com>" imported
    gpg: no ultimately trusted keys found
    gpg: Total number processed: 1
    gpg:               imported: 1
    + gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 77984A986EBC2AA786BC0F66B01FBB92821C587A
    gpg: key B01FBB92821C587A: public key "Gibson Fahnestock <gibfahn@gmail.com>" imported
    gpg: Total number processed: 1
    gpg:               imported: 1
    + gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600
    gpg: key 770F7A9A5AE15600: public key "Micha�l Zasso (Targos) <targos@protonmail.com>" imported
    gpg: Total number processed: 1
    gpg:               imported: 1
    Removing intermediate container e6ea47114e21
     ---> cf98f8ab5bbe
    Step 4/8 : ENV NODE_VERSION 8.11.3
     ---> Running in d1778a723b0a
    Removing intermediate container d1778a723b0a
     ---> a9110db34dd6
    Step 5/8 : RUN ARCH= && dpkgArch="$(dpkg --print-architecture)"   && case "${dpkgArch##*-}" in     amd64) ARCH='x64';;     ppc64el) ARCH='ppc64le';;     s390x) ARCH='s390x';;     arm64) ARCH='arm64';;     armhf) ARCH='armv7l';;     i386) ARCH='x86';;     *) echo "unsupported architecture"; exit 1 ;;   esac   && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"   && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -   && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner   && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs
     ---> Running in 1bfd31a4aba4
    gpg: Signature made Tue Jun 12 23:26:36 2018 UTC
    gpg:                using RSA key B9AE9905FFD7803F25714661B63B535A4C206CA9
    gpg: Good signature from "Evan Lucas <evanlucas@me.com>" [unknown]
    gpg:                 aka "Evan Lucas <evanlucas@keybase.io>" [unknown]
    gpg: WARNING: This key is not certified with a trusted signature!
    gpg:          There is no indication that the signature belongs to the owner.
    Primary key fingerprint: B9AE 9905 FFD7 803F 2571  4661 B63B 535A 4C20 6CA9
    node-v8.11.3-linux-x64.tar.xz: OK
    Removing intermediate container 1bfd31a4aba4
     ---> 4719b782f0f1
    Step 6/8 : ENV YARN_VERSION 1.6.0
     ---> Running in f426cdae9df8
    Removing intermediate container f426cdae9df8
     ---> 9cf0a5d0001f
    Step 7/8 : RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz
     ---> Running in a36cd5fc97e6
    + gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 6A010C5166006599AA17F08146C2130DFD2497F5
    gpg: key 1646B01B86E50310: public key "Yarn Packaging <yarn@dan.cx>" imported
    gpg: Total number processed: 1
    gpg:               imported: 1
    + curl -fsSLO --compressed https://yarnpkg.com/downloads/1.6.0/yarn-v1.6.0.tar.gz
    + curl -fsSLO --compressed https://yarnpkg.com/downloads/1.6.0/yarn-v1.6.0.tar.gz.asc
    + gpg --batch --verify yarn-v1.6.0.tar.gz.asc yarn-v1.6.0.tar.gz
    gpg: Signature made Wed Apr 11 17:30:18 2018 UTC
    gpg:                using RSA key E21930C4D0A4AA4618581F7AE074D16EB6FF4DE3
    gpg: Good signature from "Yarn Packaging <yarn@dan.cx>" [unknown]
    gpg: WARNING: This key is not certified with a trusted signature!
    gpg:          There is no indication that the signature belongs to the owner.
    Primary key fingerprint: 72EC F46A 56B4 AD39 C907  BBB7 1646 B01B 86E5 0310
         Subkey fingerprint: E219 30C4 D0A4 AA46 1858  1F7A E074 D16E B6FF 4DE3
    + mkdir -p /opt
    + tar -xzf yarn-v1.6.0.tar.gz -C /opt/
    + ln -s /opt/yarn-v1.6.0/bin/yarn /usr/local/bin/yarn
    + ln -s /opt/yarn-v1.6.0/bin/yarnpkg /usr/local/bin/yarnpkg
    + rm yarn-v1.6.0.tar.gz.asc yarn-v1.6.0.tar.gz
    Removing intermediate container a36cd5fc97e6
     ---> 5a47738c7d3f
    Step 8/8 : CMD [ "node" ]
     ---> Running in 7090255c1dc5
    Removing intermediate container 7090255c1dc5
     ---> b9d9368725f6
    Successfully built b9d9368725f6
    Successfully tagged nodejs:temp

The error seems to be because the actual Node image starts from `buildpack-deps:stretch`,
while the `dotnet` image starts from `buildpack-deps:stretch-scm`.

The [`buildpack-deps:stretch`](https://github.com/docker-library/buildpack-deps/blob/d7da72aaf3bb93fecf5fcb7c6ff154cb0c55d1d1/stretch/Dockerfile) 
reveals it too starts from    `buildpack-deps:stretch-scm`, so it makes more sense to take the Node image, and to add `dotnet`.
