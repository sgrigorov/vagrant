kubeadm join k8svip:6443 --token i0e8cv.i6clyv06fp20vwwx --discovery-token-ca-cert-hash sha256:db3106e625c28f739a81824b315f0c0ebe629eec04095e4bdc76203da8a26ad3  --apiserver-advertise-address $(hostname -I | cut -d " " -f 2)  --control-plane --certificate-key c887423c8ecb85a063c2dcd767ff5c47ce5dbaecff7397739fc2993cf8f11f08
