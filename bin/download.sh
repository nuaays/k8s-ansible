wget https://mirrors.aliyun.com/docker-ce/linux/static/stable/x86_64/docker-17.03.2-ce.tgz
tar -zxvf docker-17.03.2-ce.tgz
mv docker docker-17.03.2
mv -f docker-17.03.2/* .
rm -rf docker-17.03.2*


wget https://dl.k8s.io/v1.11.0/kubernetes-server-linux-amd64.tar.gz
tar -zxvf kubernetes-server-linux-amd64.tar.gz
mv -f kubernetes/server/bin/kube* .
rm -rf kubernetes rm -rf kubernetes kubernetes-server-linux-amd64.tar.gz *.tar *.docker_tag


wget https://github.com/coreos/etcd/releases/download/v3.3.8/etcd-v3.3.8-linux-amd64.tar.gz
tar -zxvf etcd-v3.3.8-linux-amd64.tar.gz
mv -f etcd-v3.3.8-linux-amd64/etcd* .
rm -rf etcd-v3.3.8-linux-amd64*


curl https://pkg.cfssl.org/R1.2/cfssl_linux-amd64 -o cfssl
curl https://pkg.cfssl.org/R1.2/cfssljson_linux-amd64 -o cfssljson
curl https://pkg.cfssl.org/R1.2/cfssl-certinfo_linux-amd64 -o cfssl-certinfo
chmod +x cfssl*

wget https://github.com/containernetworking/plugins/releases/download/v0.7.1/cni-plugins-amd64-v0.7.1.tgz
tar -zxvf cni-plugins-amd64-v0.7.1.tgz
rm -f cni-plugins-amd64-v0.7.1.tgz


curl https://github.com/docker/compose/releases/download/1.18.0/docker-compose-Linux-x86_64 -o docker-compose
chmod +x docker-compose

