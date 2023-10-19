FROM alpine:3.18

ENV APK_PACKAGES \
  git \
  python3 \
  py3-pip \
  ansible

ENV PIP_PACKAGES \
  setuptools \
  requests \
  netaddr \
  google-auth

# Install APK Packages
RUN apk -u upgrade --no-cache && apk add --no-cache ${APK_PACKAGES}

# Install Python Packages
RUN pip install --no-color --upgrade pip && pip install --no-color ${PIP_PACKAGES}

# Copy Ansible Galaxy Requirements
COPY requirements.yml /etc/ansible/requirements.yml

# Install Ansible Galaxy Collections and Roles
RUN ansible-galaxy collection install -r /etc/ansible/requirements.yml
RUN ansible-galaxy install -r /etc/ansible/requirements.yml

# Setup Datadog Callback
RUN mkdir -p /tmp/datadog && mkdir -p /usr/share/ansible/plugins/callback
RUN git clone --depth 1 https://github.com/DataDog/ansible-datadog-callback.git /tmp/datadog
RUN pip install -r /tmp/datadog/requirements.txt
RUN cp /tmp/datadog/datadog_callback.py /usr/share/ansible/plugins/callback/

# Setup SSH
RUN mkdir -p /root/.ssh/ && chmod 700 /root/.ssh 
