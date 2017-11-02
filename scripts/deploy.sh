#! /bin/bash

scp -i /home/knoldus/JenkinsKnolx/JenkinsProjectKey.pem ~/JenkinsKnolx/JenkinsProject/scripts/remote-deploy.sh ec2-user@18.221.171.188:~/

ssh -i /home/knoldus/JenkinsKnolx/JenkinsProjectKey.pem ec2-user@18.221.171.188 remote-deploy.sh
