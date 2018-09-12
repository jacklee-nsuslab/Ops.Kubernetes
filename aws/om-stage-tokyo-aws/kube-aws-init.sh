kube-aws init \
 --cluster-name=om-stage-tokyo-aws\
 --region=ap-northeast-1\
 --availability-zone=ap-northeast-1a\
 --hosted-zone-id=Z2LWICAFHWTFD\
 --external-dns-name=stage.k8s.omgame.net\
 --key-name=kube-node\
 --kms-key-arn=arn:aws:kms:ap-northeast-1:902098765056:key/9a5aacca-6b6a-4a8d-b0c4-f7d0dc938cc3\
 --s3-uri=s3://om-kube-aws/
