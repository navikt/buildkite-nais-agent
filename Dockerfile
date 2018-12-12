FROM buildkite/agent:latest

# kubectl version
ENV K8S_VERSION=v1.13.0

# Install kubectl
# Note: Latest version may be found on:
# https://kubernetes.io/docs/setup/release/notes/
ADD https://storage.googleapis.com/kubernetes-release/release/$K8S_VERSION/bin/linux/amd64/kubectl /usr/local/bin/kubectl

RUN set -x && \
    apk add --no-cache curl ca-certificates && \
    chmod +x /usr/local/bin/kubectl && \
    \
    # Basic check it works.
    kubectl version --client
