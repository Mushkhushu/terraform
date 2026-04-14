exit
pws
pwd
aws --version
terraform --version
cd .aws/
ls
cat config 
exit
cat config 
pwd
terraform version
aws --version
ls
exit
pwd
exit
ls
pwd
ls
terraform --version
cd TP1
exit
pws
pwd
aws --version
terraform --version
cd .aws/
cat config 
exit
cat config 
pwd
terraform version
aws --version
exit
pwd
exit
pwd
ping 8.8.8.8
git -version
git --version
terraform init
terraform plan
terraform apply
open terraform.tfstate 
terraform destroy
cd TP1/
rm -rf .git
cd ..
git reset .
git add .
git remote add origin https://github./Mushkhushu/terraform.git
git config --global user.email "flavie.houlette@laposte.net"
git config --global user.name "flavie"
git commit -m "TP1 - premier déploiement TF sur aws"
git remote add origin https://github.com/Mushkhushu/terraform.git
git remote set-url origin https://github.com/Mushkhushu/terraform/git
git remote -v
git push -- set-upstream origin master
git status
git push
git init
git branch -M main
git remote add origin https://github.com/Mushkhushu/user1.git
git remote set-url origin https://github.com/Mushkhushu/terraform.git
git config --global user.name "flavie.houlette@laposte.net"
cd TP1
ls
cat terraform.tfstate
git remote add origin git@github.com:Mushkhushu/terraform.git
git remote set-url origin git@github.com:Mushkhushu/terraform.git
git push -u origin main
ssh -T git@github.com
ssh-add
clear
touch outputs.tf
mkdir .vscode
touch .vscode/sftp.json
touch .gitingore
clear
terraform plan -out
terraform init
terraform plan
terraform apply
git init
git add .
git commit -m "test"
git push
git remote add origin https://github.com/Mushkhushu/terraform.git
git remote add origin git@github.com:Mushkhushu/terraform.git
git remote set-url origin git@github.com:Mushkhushu/terraform.git
git push --set-upstream origin master
git push origin
git branch
git push main
ls ~/.ssh
ssh-keygen -t rsa -b 4096 -C "votre_email@example.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa
ssh-keygen -t rsa -b 4096 -C "flavie.houlette@laposte.net"
cat ~/.ssh/id_rsa.pub
ssh -T git@github.com
git push --set-upstream origin main
git lfs track
git rev-list --objects --all | git cat-file --batch-check='%(objectname) %(objecttype) %(rest)' | sort -k3 -n | tail -n 10
git rm -r --cached .terraform.d
git commit -m "change gitingore
"
git add .gitignore
git add TP2/
git status
git add .gitingore 
git commit -m "change gitingore"
cat .gitignore
cat .vscode/sftp.json
cd .vscode
cat sftp.json
sftp -P 22 user1@10.53.101.41
cd TP2
terraform destroy
cd ..
git push origin main
cat .gitingore
ls
ls ~/.ssh
ssh-keygen -t rsa -b 4096 -C "votre_email@example.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa
ssh-keygen -t rsa -b 4096 -C "flavie.houlette@laposte.net"
cat ~/.ssh/id_rsa.pub
ssh -T git@github.com
git lfs track
git rev-list --objects --all | git cat-file --batch-check='%(objectname) %(objecttype) %(rest)' | sort -k3 -n | tail -n 10
git rm -r --cached .terraform.d
git commit -m "change gitingore
"
git add TP2/
git add .gitingore 
git commit -m "change gitingore"
cat .gitignore
cat .vscode/sftp.json
cd .vscode
cat sftp.json
sftp -P 22 user1@10.53.101.41
cd ..
cat .gitingore
ls
git status
git push
git rm --cached .terraform.d/plugin-cache/registry.terraform.io/hashico
git ls-files | grep ".terraform.d"
ls -l .terraform.d/plugin-cache/registry.terraform.io/hashicorp/aws/5.100.0/linux_amd64/
echo ".terraform.d/" >> .gitignore
git add .gitignore
git commit -m "Ajoute .terraform.d/ au .gitignore"
git rm -r --cached .terraform.d/
git commit -m "Supprime .terraform.d/ du suivi Git"
git check-ignore -v .terraform.d/
git add .
git commit -m "truc"
git push --set-upstream origin main
git rm --cached .terraform.d/plugin-cache/registry.terraform.io/hashicorp/aws/5.100.0/linux_amd64/terraform-provider-aws_v5.100.0_x5
git push origin main
git config --global user.name "Mushkhushu"
git config --global user.email "flavie.houlette@laposte.net"
git config --list --local
git fsck
git branch -u origin/<main>
git remote set-head origin -d
git remote set-head origin main
git prune
git fetch --all
git branch --set-upstream-to=origin/main main
git branch -r
git remote -v
git push -u origin main
cd TP2
ssh-keygen -t rsa -b 4096 -f ~/.ssh/id_rsa_tp2 -N ""
aws ec2 import-key-pair
aws ec2 import-key-pair -- region us-east-1 --key-name tf-flavie-dev-key -- public-key-material fileb://~/.ssh/id_rsa_tp2.pub
aws ec2 import-key-pair  --region eu-west-3  --key-name tf-flavie-dev-key \
aws ec2 import-key-pair  --region eu-west-3  --key-name tf-flavie-dev-key \
aws ec2 import-key-pair  --region us-east-1  --key-name tf-flavie-dev-key  --public-key-material fileb://~/.ssh/id_rsa_tp2.pub
terraform init
terraform plan
terraform apply
terraform destroy
tflint init
tflint --init
tflint
terraform fmt
terraform validate
