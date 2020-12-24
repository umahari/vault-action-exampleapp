clear
systemctl status vault
vault status
export VAULT_ADDR=http://10.128.0.2:8100
echo "export VAULT_ADDR=http://10.128.0.2:8100" >> ~/.bashrc
vault status
clear
vault status
clear
cd 
netstat -tlnp
vault status
systemctl status vault
systemctl stop vault
systemctl start vault
clear
systemctl status  vault
vault status
vault
clear
vault status
vault status
vault status
vault 
clera
clear
vault stsus
vault status
cd etc
cd /etc
cd vault/
clear
ls
cat config.json 
clear
cd 
systemctl status vault
netstat -tlnp
systemctl enable vault
clear
systemctl status vault
ls
cd 
cd logs
cd /logs/vault/
ls
cd ../../vault-data/
ls
clear
vault staus
vault status
cat etc/vault/init.file
cat /etc/vault/init.file
clear
vault operator init > /etc/vault/init.file
cd 
cd /etc/vault/
ls 
cat config.json 
cat init.file 
netstat -tlnp
cd 
cd ~/.bashrc
cat ~/.bashrc
export VAULT_ADDR=http://10.128.0.2:8100
export VAULT_ADDR=http://10.128.0.20:8100
echo "export VAULT_ADDR=http://10.128.0.20:8100" >> ~/.bashrc
clear
systemctl stop vault
systemctl start vault
systemctl status vault
vault status
clear
vault operator init > /etc/vault/init.file
export VAULT_TOKEN=s.8WY4rbEbErMLRDqKz6D9pUA0
vault operator init > /etc/vault/init.file
cat /etc/vault/init.file
vault status
cd /etc/vault/
ls
cat init.file 
ls -la
vault operator rekey
clear
ls
nano init.file 
systemctl stop vault
systemctl start  vault
systemctl status  vault
vault status
cat init.file 
clear
vault operator unseal dLRYxdK0/dbehXUOB/oSzmqfidm+J+cES7HxEVo00Sgc
vault operator unseal XYoIcYur82hdXhmm/UYgOpbPSR9E99PCbxdKp0VLyiUp
vault operator unseal 1aBxcCmpmB6RgesAmeudWGR/3LpeSnBqlI+13d3W6UCO
clear
vault status
cat ~/.bashrc
clear
nano ~/.bashrc
clear
cat ~/.bashrc
vault status
clear
export VAULT_ADDR=http://10.128.0.20:8100
echo "export VAULT_ADDR=http://10.128.0.20:8100" >> ~/.bashrc
vault status
cd 
cd /etc
cd vault/
ls
cat init.file 
clear
ls
cat config.json 
valut status
vault status
netstat -tlnp
clear
netstat -tlnp
netstat -tlnp
sudo netstat -lp | grep 8101
sudo kill -9 2608
netstat -tlnp
netstat -tlnp
top
clear
netstat -tlnp
top
clear
top
vault status
clear
vault status
vault status
clear
git clone https://github.com/hashicorp/vault-guides.git
git clone https://github.com/hashicorp/vault-guides.git
docker build . --file Dockerfile -t vault-action-exampleapp
git clone https://github.com/hashicorp/vault-guides.git
git clone https://github.com/hashicorp/vault-guides.git
apt-install git
clear
git
git --version
clear
apt install git
git --version
apt install docker.io
git clone https://github.com/hashicorp/vault-guides.git
cd vault-guides/ecosystem/vault-github-action
docker build . --file Dockerfile -t vault-action-exampleapp
docker run vault-action-exampleapp /bin/bash -c "cat ./app_secret"
vault server -dev -dev-root-token-id root
vault kv put secret/ci app_secret=SecretProvidedByVault
vault status
export VAULT_ADDR=http://127.0.0.1:8200
export VAULT_TOKEN=root
vault kv put secret/ci app_secret=SecretProvidedByVault
export VAULT_ADDR=http://127.0.0.1:8100
export VAULT_TOKEN=root
vault kv put secret/ci app_secret=SecretProvidedByVault
clear
vault server -dev -dev-root-token-id root
valut status
clear
vault status
vault kv put secret/ci app_secret=SecretProvidedByVault
vault kv put kv/ci app_secret=SecretProvidedByVault
export VAULT_TOKEN=s.8WY4rbEbErMLRDqKz6D9pUA0
vault kv put kv/ci app_secret=SecretProvidedByVault
vault kv get kv/ci
vault policy write ci-secret-reader - <<EOF
path "secret/data/ci" {
    capabilities = ["read"]
}
EOF

GITHUB_REPO_TOKEN=$(vault token create -policy=ci-secret-reader -format json | jq -r ".auth.client_token")
apt install jq
GITHUB_REPO_TOKEN=$(vault token create -policy=ci-secret-reader -format json | jq -r ".auth.client_token")
VAULT_TOKEN=$GITHUB_REPO_TOKEN vault kv get kv/ci
vault kv get kv/ci
echo GITHUB_REPO_TOKEN=$(vault token create -policy=ci-secret-reader -format json | jq -r ".auth.client_token")
echo GITHUB_REPO_TOKEN=$(vault token create -policy=ci-secret-reader -format json | jq -r ".auth.client_token")
VAULT_TOKEN=$GITHUB_REPO_TOKEN vault kv get secret/ci
VAULT_TOKEN=$GITHUB_REPO_TOKEN vault kv get kv/ci
VAULT_TOKEN=s.SnzHRBS955nbJ9YPxwcEJEZS vault kv get kv/ci
vault policy write ci-secret-reader - <<EOF
path "secret/data/ci" {
    capabilities = ["read"]
}
EOF

vault policy write ci-secret-reader - <<EOF
path "kv/data/ci" {
    capabilities = ["read"]
}
EOF

VAULT_TOKEN=$GITHUB_REPO_TOKEN vault kv get kv/ci
git init
git add .
git commit -m "Initial Commit"
git remote add origin https://github.com/umahari/vault-action-exampleapp.git
git branch -M main
git push -u origin main
git push -u origin main
echo GITHUB_REPO_TOKEN=$(vault token create -policy=ci-secret-reader -format json | jq -r ".auth.client_token")
top
mkdir -p .github/workflows
tee .github/workflows/image-builder.yml <<EOF
name: ImageBuilder
# Run this workflow every time a new commit pushed to your repository

on: push
EOF

tee -a .github/workflows/image-builder.yml <<EOF
jobs:
  build:
    runs-on: self-hosted
    steps:
EOF

tee -a .github/workflows/image-builder.yml <<EOF
      - uses: actions/checkout@v2
EOF

tee -a .github/workflows/image-builder.yml <<EOF
      - name: Import Secrets
        uses: hashicorp/vault-action@v2.0.1
        with:
          url: http://10.128.0.20:8100
          tlsSkipVerify: true
          token: \${{ secrets.VAULT_TOKEN }}
          secrets: |
            kv/data/ci app_secret
EOF

cat .github/workflows/image-builder.yml
tee -a .github/workflows/image-builder.yml <<EOF
      - name: Build Docker Image
        run: docker build . --file Dockerfile --build-arg app_secret="\${{ env.APP_SECRET }}" -t vault-action-exampleapp
EOF

git add .
git commit -m "adds workflow to repo"
git push origin main
git add .
git push origin main
git add .
git commit -m "adds workflow to repo"
git push origin main
mkdir test.html
git add .
git commit -m "adds workflow to repo"
ls
rm -rf test.html/
mkdir test.html
git add test.html/
git commit -m "adds workflow to repo"
ls 
rm -rf test.html/
touch test.txt
git add .
git commit -m "adds workflow to repo"
git push origin main
cd /usr
cd /bin/git
cd /b
cd /bin
ls
cat git
top
vault status
clear
vault status
netstat -tlnp
netstat -tlnp
netstat -tlnup
clear
systemctl status vault
netstat -tlnup
systemctl stop vault
systemctl status vault
systemctl start vault
systemctl status vault
netstat -tlnup
netstat -tlnup
clear
vault status
nano .bashrc
nano .bashrc
export VAULT_ADDR=http://10.128.0.20:8100
echo "export VAULT_ADDR=http://10.128.0.20:8100" >> ~/.bashrc
vault status
clear
netstat -tlnup
systemctl stop vault
netstat -tlnup
systemctl start vault
netstat -tlnup
systemctl enable vault
netstat -tlnup
netstat -tlnp
clear
systemctl status vault
clear
netstat -tlnp
vault status
netstat -tlnp
cat .bashrc
systemctl status vault
clear
exit
ls
cd .github/
ls
cd workflows/
ls
nano image-builder.yml 
cd 
git add .
git commit -m "message intial commit"
git push origin main
git remote add origin https://github.com/umahari/vault-action-exampleapp.git
cd /usr/bin/git
cd /usr/bin
cat git
clear
cd 
cd /usr/bin
ls
clear
ls  -la
cd 
cd /
ls
cd ~
ls
cd vault-guides/
ls
cd ecosystem/
ls
cd vault-github-action/
ls
ls la
ls -la
clear
vault status
cd /var/logs
cd /var/log/
ls
cd ../lib
ls
cd git/
ls
ls -la
cd ..
where git
which git
clear
which git
cd /usr/bin
ls
cd lo
clear
cd /usr/bin
cd login
cat login
clear
cd git
ls
clear
git 
git log
clear
 git log --since=5.hours
cd /var/log
ls
cat faillog 
cd faillog 
cd lastlog 
cat lastlog 
cat auth.log 
clear
ls
 git-log - Show commit logs
sudo  git-log - Show commit logs
sudo  git log - Show commit logs
cat git log
cat   git log - Show commit logs
cd /var/log
ls la
la -la
ls -la
cat syslog.1
cd .git/
cd
cd .git/
ls
cd config 
cat config 
cd logs/
ls
cat refs/
cd refs/
ls
cd remotes/
ls
cd origin/
ls
cd main 
cat main 
cat main 
cd
git add .gitmodules
cd .git
ls
cd 
git rm --cached vault-guides
ls
git commit -m "trail"
git push origin main
locate ".gitmodule"
locate ".gitmodules"
ls
cd vault-guides/
ls
cd plugins/
ls
cat vault-plugin-auth-mock/
cd vault-plugin-auth-mock/
ls
cd
ls
cd /
ls
cd vault-data/
ls
cd auth/
ls
cd ../logs
cd ../logs
cd ../logs
cd ../../logs/
ls
cd vault/
ls
ls -la
cd 
cd /etc/
ls
cd ../var
ls
cd /log
cd log
ls
cd user.log 
cat user.log 
ls -la
git -log
git
git log 
cd 
cd .git
ls
cd logs/
ls
cd 
exit
clear
vault login -method=github token=a8e0e2c82b75585cde16075c184e34f2a5162467
export VAULT_TOKEN s.8WY4rbEbErMLRDqKz6D9pUA0
export VAULT_TOKEN "s.8WY4rbEbErMLRDqKz6D9pUA0"
vault auth enable github
export VAULT_TOKEN s.8WY4rbEbErMLRDqKz6D9pUA0
clear
export VAULT_TOKEN s.8WY4rbEbErMLRDqKz6D9pUA0
vault status
vault login -method=github token=a8e0e2c82b75585cde16075c184e34f2a5162467
export VAULT_TOKEN s.8WY4rbEbErMLRDqKz6D9pUA0
$ vault auth enable github
$ vault auth enable github
 vault auth enable github
valut init
vault init
clear
vault add .
git add .
clear
ls
cd vault-guides/
ls
cd 
exit
ls
cd vault-guides/ls
exit
