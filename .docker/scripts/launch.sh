#!/bin/bash
# add your custom commands here that should be executed every time the docker container starts
echo "Starting docker container..."
export

### Set the USER_UID envvar to match your user.
# Ensures files created in the container are owned by you:
#   docker run --rm -it -v /some/path:/invokeai -e USER_UID=$(id -u) <this image>
# Default UID: 1000 chosen due to popularity on Linux systems. Possibly 501 on MacOS.

echo "Fixing permissions..."
USER_UID=${USER_UID:-1000}
USER_GID=${USER_GID:-1000}
USER=${USERNAME:-app}
usermod -u "${USER_UID}" "${USER}"
groupmod -g "${USER_GID}" "${USER}"
chown --recursive "${USER_UID}:${USER_GID}" "${APP_INSTALL_ROOT}"

### Set the $PUBLIC_KEY env var to enable SSH access.
# It is useful to have the full SSH server e.g. on Runpod.
# (use SCP to copy files to/from the image, etc)
if [[ -n "$SSH_PUB_KEY" ]] && [[ ! -d "${HOME}/.ssh" ]]; then
    mkdir -p "${HOME}/.ssh"
    echo "${SSH_PUB_KEY}" > "${HOME}/.ssh/authorized_keys"
    chmod -R 700 "${HOME}/.ssh"
    service ssh start
fi

if [ -f "$APP_INSTALL_ROOT/scripts/requirements.txt" ]; then
    pip3 install -r "$APP_INSTALL_ROOT/scripts/requirements.txt"
fi
cd "${APP_DIR}" || echo "Failed to change directory to ${APP_DIR}. Continuing..."

# Run the CMD as the Container User (not root).
exec gosu "${USER}" python3 server.py ${CLI_ARGS}
