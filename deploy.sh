

#cd bin
#bash download.sh
#cd -

rm -rf *.retry

ansible-playbook -vvvv -i hosts 01.prepare.yml

ansible-playbook -vvvv -i hosts 02.etcd.yml

ansible-playbook -vvvv -i hosts 03.docker.yml

# ansible-playbook -vvvv -i hosts 03.docker-image.yml

ansible-playbook -vvvv -i hosts 04.kube-master.yml

ansible-playbook -vvvv -i hosts 05.kube-node.yml

ansible-playbook -vvvv -i hosts 06.network.yml

# ansible-playbook -vvvv -i hosts 07.cluster-addon.yml

ansible-playbook -vvvv -i hosts 08.kube-plugin.yml

