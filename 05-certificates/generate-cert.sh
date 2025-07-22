openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
  -keyout tls.key -out tls.crt \
  -subj "/CN=my-nginx.local/O=DevOps" \
  -addext "subjectAltName=DNS:my-nginx.local"

kubectl create secret tls my-nginx-tls-secret \
  --cert=tlss.crt --key=tls.key \
  -n devops-training
