sudo mkdir /myagent 
cd /myagent
sudo wget https://vstsagentpackage.azureedge.net/agent/2.179.0/vsts-agent-linux-x64-2.179.0.tar.gz
sudo tar zxvf ./vsts-agent-linux-x64-2.179.0.tar.gz
sudo chmod -R 777 /myagent
runuser -l MyVmUser -c '/myagent/config.sh --unattended  --url https://dev.azure.com/walxar --auth pat --token incsf7otp4gab4wnl2kihm25zpzwdrhkbudsh2i5cmzzegw52fcq --pool Default'
sudo /myagent/svc.sh install
sudo /myagent/svc.sh start
exit 0
