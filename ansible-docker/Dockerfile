FROM python:3.9

# Install Ansible
RUN apt-get update && \
    apt-get install -y ansible

# Copy Ansible playbook
COPY ../ansible/ /ansible/

# Install dependencies
RUN pip install -r /ansible/requirements.txt

# Generate AWS credentials and config files
RUN mkdir -p ~/.aws
RUN printf '[default]\naws_access_key_id=%s\naws_secret_access_key=%s\n' "$AWS_ACCESS_KEY_ID" "$AWS_SECRET_ACCESS_KEY" > ~/.aws/credentials
RUN printf '[default]\nregion=%s\n' "$AWS_REGION" > ~/.aws/config

# Run Ansible playbook
CMD ["ansible-playbook", "/ansible/deploy.yml"]
