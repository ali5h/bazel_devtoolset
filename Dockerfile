FROM centos:7

RUN set -ex; \
    yum install -y centos-release-scl; \
    yum install -y \
        devtoolset-8 \
    ; \
    yum clean -y all;

RUN set -ex; \
    curl -LOJ https://github.com/bazelbuild/bazel/releases/download/1.1.0/bazel-1.1.0-linux-x86_64; \
    mv bazel-1.1.0-linux-x86_64 /usr/local/bin/bazel; \
    chmod +x /usr/local/bin/bazel ; \
    bazel version

COPY . /src

WORKDIR /src

RUN . /opt/rh/devtoolset-8/enable ; \
    bazel build --crosstool_top=//gcc8:toolchain @com_google_protobuf//:protoc

RUN . /opt/rh/devtoolset-8/enable ; \
    bazel build @com_google_protobuf//:protoc
