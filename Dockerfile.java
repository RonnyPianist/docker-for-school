FROM codercom/code-server:latest

# Install Java extensions
RUN code-server --install-extension vscjava.vscode-java-pack && \
    code-server --install-extension vscjava.vscode-spring-boot-dashboard

# Set working directory
WORKDIR /home/coder/project

# Start code-server without authentication
CMD ["code-server", "--bind-addr", "0.0.0.0:8080", "--auth", "none", "/home/coder/project"]
