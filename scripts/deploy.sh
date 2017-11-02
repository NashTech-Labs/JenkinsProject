#! /bin/bash

scp -i /home/knoldus/JenkinsKnolx/JenkinsProjectKey.pem scripts/remote-deploy.sh ec2-user@18.221.171.188:~/

ssh -i /home/knoldus/JenkinsKnolx/JenkinsProjectKey.pem ec2-user@18.221.171.188 'bash -s' < ~/JenkinKnox/JenskinProject/scripts/remote-deploy.sh
