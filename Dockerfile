FROM redhat/ubi8

RUN dnf install -y podman wget

ARG OCP_CLI_REPO=https://mirror.openshift.com/pub/openshift-v4/amd64/clients/ocp/latest
ARG GRPCURL_VERSION=1.8.5
ARG GRPCURL_RELEASE=https://github.com/fullstorydev/grpcurl/releases/download/v${GRPCURL_VERSION}/grpcurl_${GRPCURL_VERSION}_linux_x86_64.tar.gz

RUN wget ${OCP_CLI_REPO}/openshift-client-linux.tar.gz \
    && tar xf openshift-client-linux.tar.gz oc \
    && mv oc /usr/local/bin/ \
    && rm openshift-client-linux.tar.gz

RUN wget ${OCP_CLI_REPO}/opm-linux.tar.gz \
    && tar xf opm-linux.tar.gz opm \
    && mv opm /usr/local/bin/ \
    && rm opm-linux.tar.gz

RUN wget ${GRPCURL_RELEASE} \
    && tar xf grpcurl_${GRPCURL_VERSION}_linux_x86_64.tar.gz grpcurl \
    && mv grpcurl /usr/local/bin/ \
    && rm grpcurl_${GRPCURL_VERSION}_linux_x86_64.tar.gz
