FROM codercom/code-server:latest

USER root

RUN apt-get update && apt-get install -y \
    openjdk-17-jdk \
    maven \
    gradle \
    git \
    curl \
    wget \
    vim \
    nano \
    htop \
    unzip \
    && rm -rf /var/lib/apt/lists/*

ENV JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64
ENV PATH="${JAVA_HOME}/bin:${PATH}"

USER coder

RUN code-server --install-extension vscjava.vscode-java-pack && \
    code-server --install-extension vscjava.vscode-spring-boot-dashboard && \
    code-server --install-extension vmware.vscode-boot-dev-pack && \
    code-server --install-extension gabrielbb.vscode-lombok && \
    code-server --install-extension redhat.vscode-xml && \
    code-server --install-extension redhat.vscode-yaml && \
    code-server --install-extension vscjava.vscode-spring-initializr && \
    code-server --install-extension VisualStudioExptTeam.vscodeintellicode && \
    code-server --install-extension eamodio.gitlens && \
    code-server --install-extension PKief.material-icon-theme && \
    code-server --install-extension usernamehw.errorlens && \
    code-server --install-extension SonarSource.sonarlint-vscode

RUN mkdir -p /home/coder/.local/share/code-server/User && \
    echo '{\n\
    "java.configuration.runtimes": [\n\
        {\n\
            "name": "JavaSE-17",\n\
            "path": "/usr/lib/jvm/java-17-openjdk-amd64"\n\
        }\n\
    ],\n\
    "java.format.settings.url": "https://raw.githubusercontent.com/google/styleguide/gh-pages/eclipse-java-google-style.xml",\n\
    "editor.formatOnSave": true,\n\
    "editor.minimap.enabled": true,\n\
    "workbench.colorTheme": "Default Dark+",\n\
    "workbench.iconTheme": "material-icon-theme",\n\
    "files.autoSave": "afterDelay",\n\
    "files.autoSaveDelay": 1000,\n\
    "terminal.integrated.fontSize": 14\n\
}' > /home/coder/.local/share/code-server/User/settings.json

WORKDIR /home/coder/project

CMD ["code-server", "--bind-addr", "0.0.0.0:8080", "--auth", "none", "/home/coder/project"]
