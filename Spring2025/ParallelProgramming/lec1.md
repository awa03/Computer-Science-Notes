# Secure Programming

## Networking 
- Port 54711
	- Used for TCP and UDP protocols
	- Ensures delivery of data packets
- Port 443
	- Used for secure web traffic via HTTPS
	- Encrypted transmission
	- Uses SSL/TLS encryption to protect data
	- Vital for information such as passwords or credit card details


| Port | Protocol / Service                      | Description                                                   |
| ---- | --------------------------------------- | ------------------------------------------------------------- |
| 21   | FTP                                     | File Transfer Protocol                                        |
| 22   | SSH                                     | Secure remote login and command-line access                   |
| 23   | Telnet                                  | Unsecure remote login                                         |
| 25   | SMTP (Simple Mail Transfer Protocol)    | Sending emails between mail servers                           |
| 53   | DNS (Domain Name System)                | Translates domain names to IP addresses                       |
| 80   | HTTP (Hyper Transfer Protocol)          | Web page transfer                                             |
| 110  | POP3 (Post Office Protocol v3)          | Email retrieval (downloads and often deletes from the server) |
| 123  | NTP (Network Time Protocol)             | Network time synchronization                                  |
| 143  | IMAP (Internet Message Access Protocol) | Email retrieval (keeps emails on the server)                  |
| 443  | HTTPS (HTTP Secure)                     | Secure web page transfer                                      |
| 3389 | RDP (Remote Desktop Protocol)           | Remote Desktop access                                         |
## IP Address: CIDR
- IP Address is a unique numerical identifier assigned to every device connected to a computer network
- Two types
	- v4 (32 bits): `192.168.0.1`
	- v6 (128 bits): `2001:0db8:85a3:0000:0000:8a2e:0370:f928`
- Classless Inter-Domain Routing
	- allocating IP addresses and routing internet traffic
	- used for firewalls, routing tables, etc
- `192.168.5/24` <- indicate the first 24 bits are network ID
	- Last 8 bits are hosts
- __Lookback Address__
	- `127.0.0.0/8` (`127.0.0.1 -- localhost`)
- ISPs use a protocol called _Dynamic Host Configuration Protocol_ (__DHCP__)
	- automatically assign IP addresses to devices (using leases)
	- You can also request a static IP

## DNS 
- translates to human readable text rather than numbers 
- DNS Lookup tools
	- allow to query DNS directly and examine responses

## Servers and Clients
- Servers wait for network connections (and respond with data) 
	- One machine can run alot of servers, each at a different port
	- Generally provide a service
- Clients to connect and request
	- Browsers
	- SSH
	- telnet
- `curl` - can make http requests for you
- `telnet` - establishing text based communication with a remote computer or server

## Web Server Responses
- _static_
	- html
	- css
	- jpg
- dynamic
	- generated on the fly
	- python
	- node
	- leverage database to organize and query data that populates the dynamic data

## Delivery method
- __Streams__ (TCP)
	- make sure data arrives complete, in order without errors
	- used when reliability is important
	- http / https
	- ssh
- __Discrete messages (UDP)__
	- send data quickly
	- some bits maybe lost or out of order
	- used when speed is more important
	- streaming movies
	- dns

## Flask Server Hello World

```python
# import library 
from flask import Flask 

# initialize
app Flask(__name__)

# a route
@app.route("/")
def hello_world():
	return "<p>Hello, World!</p>" # serve html

app.run() # run the server
```

