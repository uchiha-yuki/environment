## INTRODUCTION

Easyrsa is a simplified version of openssl. It's your PKI. You use it to
establish CA, sign server and client CSRs(Certificate Signing Request), 
revoke certificate in CRL(Certificate Revocation List), make CSR and so on
PS: you can reference Chapter 3 on Mastering OpenVPN by EFC and JJK

## CERTIFICATE DETAIL

make sure of the X509v3 Basic Constraints(CA:TRUE for CA)
make sure of the X509v3 Key Usage, there are 3 examples:
	CA:
		X509v3 Key Usage:
			Certificate Sign, CRL Sign
	server:
		X509v3 Extended Key Usage:
			TLS Web Server Authentication
		X509v3 Key Usage:
			Digital Signature, Key Encipherment
	client:
		X509v3 Extended Key Usage:
			TLS Web Client Authentication
		X509v3 Key Usage:
			Digital Signature


## COMMON OPERATIONS

```
# the default working directory of easyrsa is $PWD, you can change it
# in vars by changing the value to something like "set_var EASYRSA	/usr/local/etc/easy-rsa"
# first mkdir if it doesn't exist 
mkdir -p /usr/local/etc/easy-rsa
# copy configurations to the working directory
cp openssl-1.0.cnf /usr/local/etc/easy-rsa
cp –R x509-types /usr/local/etc/easy-rsa/
# initialize the pki
./easyrsa init-pki
# setup CA
./easyrsa build-ca
# setup an empty CRL
./easyrsa gen-crl
# make CSR and sign for server
./easyrsa build-server-full SERVER_COMMON_NAME
# make CSR and sign for client
./easyrsa build-client-full CLIENT_COMMON_NAME
# check certificate *.crt
openssl x509 -in *.crt -text -noout
# check CRL *.pem
openssl crl -noout -text -in *.pem
```
