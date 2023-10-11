# Sets the base image for subsequent instructions
ARG ARG_BUILD_FROM="ghcr.io/entelecheia/txtgen-webui:latest-base"
FROM $ARG_BUILD_FROM

# Setting ARGs and ENVs for user creation and workspace setup
ARG ARG_USERNAME="app"
ARG ARG_USER_UID=9001
ARG ARG_USER_GID=$ARG_USER_UID
ENV USERNAME $ARG_USERNAME
ENV USER_UID $ARG_USER_UID
ENV USER_GID $ARG_USER_GID

# Setting ARGs and ENVs for the app
ARG ARG_APP_SOURCE_REPO="entelecheia/text-generation-webui"
ARG ARG_APP_INSTALL_ROOT="/opt"
ARG ARG_APP_DIRNAME="txtgen-webui"
ARG ARG_APP_SOURCE_BRANCH="main"
ARG ARG_APP_SERVICE_NAME="app"
ENV APP_SOURCE_REPO $ARG_APP_SOURCE_REPO
ENV APP_INSTALL_ROOT $ARG_APP_INSTALL_ROOT
ENV APP_DIRNAME $ARG_APP_DIRNAME
ENV APP_SOURCE_BRANCH $ARG_APP_SOURCE_BRANCH
ENV APP_SERVICE_NAME $ARG_APP_SERVICE_NAME
ENV APP_SRC_DIR=${APP_INSTALL_ROOT}/${APP_DIRNAME}
ENV APP_DIR=${APP_INSTALL_ROOT}/app
ENV APP_VIRTUAL_ENV=${APP_INSTALL_ROOT}/venv
ENV APP_WORKSPACE_ROOT=${APP_INSTALL_ROOT}/workspace

# Setting ARGs and ENVs for user creation and workspace setup
ARG ARG_USERNAME="app"
ARG ARG_USER_UID=9001
ARG ARG_USER_GID=$ARG_USER_UID
ENV USERNAME $ARG_USERNAME
ENV USER_UID $ARG_USER_UID
ENV USER_GID $ARG_USER_GID

# Creates a non-root user with sudo privileges
RUN groupadd --gid $USER_GID $USERNAME \
    && adduser --uid $USER_UID --gid $USER_GID --force-badname --disabled-password --gecos "" $USERNAME  \
    && echo "$USERNAME:$USERNAME" | chpasswd \
    && adduser $USERNAME sudo \
    && echo "$USERNAME ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers \
    && echo "$USERNAME ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/$USERNAME \
    && chmod 0440 /etc/sudoers.d/$USERNAME

# Sets the working directory to workspace root
WORKDIR $APP_INSTALL_ROOT
# Copies scripts from host into the image
COPY ./.docker/scripts/ ./scripts/
RUN chown -R $USERNAME:$USERNAME $APP_INSTALL_ROOT

ENV CLI_ARGS=""

# Specifies the command that will be executed when the container is run
CMD ["bash"]
