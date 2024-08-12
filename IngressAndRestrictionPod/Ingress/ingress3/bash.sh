# Install OpenSSL
sudo apt update
sudo apt install openssl
# Generate a Private Key
openssl genrsa -out tls.key 2048
# Generate a Certificate Signing Request (CSR)
openssl req -new -key tls.key -out tls.csr
# Generate a Self-Signed Certificate
openssl x509 -req -days 365 -in tls.csr -signkey tls.key -out tls.crt
# Create a Kubernetes Secret
kubectl create secret tls tls-secret --cert=tls.crt --key=tls.key