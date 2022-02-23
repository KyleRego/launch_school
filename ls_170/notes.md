## What is the internet?

The internet is a network of networks. A network is basically two or more devices connected in such a way that they can communicate or exchange data. The networks are able to communicate with each other via routers, which are network devices that can route network traffic to other networks. They act as gateways into and out of a specific network.

## Latency and bandwidth

The two main performance characteristics of a physical network are latency and bandwidth. Latency is a measure of the time it takes for data to get from one point to another in a network. Bandwidth is the amount of data that can be send in a particulra unit of time. Four types of delays that contribute to the latency are propagation delay, transmission delay, processing delay, and queueing delay. Last-mile latency refers to the latency introduced within the parts of the network closest to the end points. Round-trip time is a measure of latency which is the amount of time it takes from the sending of a signal to receiving the response that the signal was received.

## The physical layer and link layer

At the physical layer, bits are converted to signals which may be electrical signals, light, or radio waves.

The link layer is primarily concerned with identifying devices on the physical network and moving data over the physical network between devices.

Ethernet cables may be used to connect hosts, switches, and routers. Frames are the protocol data unit of the Ethernet protocol and encapsulate data from the network layer above. An Ethernet frame adds structure to the binary data of the physical layer. A network device is able to identify the different parts of the frame due to the frame having fields with specific lengths and appearing in a set order. 

The MAC address fields are used by switches to direct the frame between network devices. Each device connected to the network has a network interface card (NIC) which is assigned a unique MAC address. The MAC address is a sequence of six 2-digit hexadecimal numbers separated by colons. 

A **hub** replicates a message and forwards it to all of the devices on a network. If a hub was being used, each device receiving the message would check to see if its own MAC address was the destination MAC address field of the frame; if they did not match, then the frame is ignored. Most modern networks do not use hubs, instead they use a **switch**, which uses the destination MAC address to direct frames only to the device for which it is intended. The switch does this by keeping a record of the MAC addresses of the devices connected to it and associated each address with the Ethernet port to which the device is connected on the switch. The switch keeps this data in a **Mac address table**.

## Internet Protocol

The Internet Protocol provides communication between hosts.

The primary features of both IPv4 and IPv6 are routing via IP addressing and data encapsulation into packets. All routers store a routing table which is used to match the destination IP address field of a packet with a network address, which defines a range of addresses within a particular subnet.

## IP addresses and port numbers

IP addresses are logical; instead of being tied to a specific device as is a MAC address, they can be assigned to devices as they join a network, and must fall within the range of addresses available to the network that the device is connected to.

The **network address** is the IP address at the start of the range of IP addresses available to a network. The **broadcast address** is the address at the end of the range. 

Port numbers are identifiers for specific processes running on a host. The source and destination port numbers are included in the transport layer segments. While IP addresses allow for data to be directed from one host to another, the IP address and port number together enable end-to-end communication between specific processes running on different hosts.

The combination of IP address and port number can be thought of as a **socket**.

## DNS

The **Domain Name System** is what handles the mapping of URL to IP address. DNS is a distributed database which keeps track of domain names and their corresponding IP addresses. If a DNS server does not contain the requested domain name, the DNS server routes the request to a different DNS server higher on the hierarchy of DNS servers. A DNS request is made to the Domain Name System after typing a URL into the browser's search bar and before the HTTP request is sent over the Internet.

## Client-server model

HTTP is the protocol which defines the message format of the web. HTTP messages are either requests or responses. Requests are sent from the client (a web browser) to the server. The server processes the request, and then sends a response to the client. Therefore HTTP is referred to as a request response protocol. 

## TCP and UDP

TCP provides the abstraction of reliable network communication over an unreliable channel. TCP is connection-oriented: this means that application data is not snet until a connection has been established between processes. The connection is established via the **TCP three-way handshake**. The three-way handshake introduces an entire round-trip of latency. TCP also ensures data is delivered in the correct order. This introduces the possibility of **head-of-line blocking**, where if the first message in a sequence of messages does not arrive, the processing of subsequent messages in the sequence is delayed.

TCP also provides mechanisms for flow control and congestion avoidance. Flow control prevents the sender from overwhelming the receiver with too much data at once. Each side of the connection lets the other side know how much data it is willing to accept, and this number may be updated. Congestion avoidance helps prevent overwhelming the underlying network with too much data. TCP interprets packets being dropped as the network being congested responds by reducing the amount of data sent. 

UDP provides multiplexing in the same way that TCP does. However, UDP does not guarantee message delivery or message delivery in order like TCP does. UDP also does not have mechanisms for flow control or congestion avoidance. UDP is a connectionless protocol. 

UDP's advantage over TCP is its simplicity, which provides speed and flexibility.