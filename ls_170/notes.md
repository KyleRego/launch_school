## What is the internet?

The internet is a vast network of networks, comprised both of the network infrastructure and the protocols that enable that infrastructure to function. A network is basically two or more devices connected in such a way that they can communicate or exchange data. The networks are able to communicate with each other via routers, which are network devices that can route network traffic to other networks. They act as gateways into and out of a specific network.

## Protocols

Protocols are systems of rules governing the exchange of data over a network. Different protocols were developed to address different aspects of network communication (TCP and HTTP) and different protocols were developed to address the same aspect of network communication (TCP and UDP).

## Protocol data unit and encapsulation

Separation between protocols operating at different layers is by encapsulation of data into a protocol data unit, consisting of a header and payload (and possibly a footer) where the payload is the protocol data unit of the layer above. In other words, data from one layer is encapsulated within the data unit of the layer below.

The protocol data unit is known as a frame at the link layer, a packet at the network layer, and a segment (TCP) or datagram (UDP) at the transport layer. Therefore an HTTP request or response is the payload of a TCP segment, which is the payload of an IP packet, which is the payload of an Ethernet frame.

## Latency and bandwidth

The two main performance characteristics of a physical network are latency and bandwidth. Latency is a measure of the time it takes for data to get from one point to another in a network. Bandwidth is the amount of data that can be send in a particulra unit of time. Four types of delays that contribute to the latency are propagation delay, transmission delay, processing delay, and queueing delay. 

## The different delays

Propagation delay is a function of the distance and speed (distance divided by speed) over which a message travels from sender to receiver. Transmission delay is the amount of time it takes to push the data onto a communication link. Processing delay is the amount of time a router spends processing the packet before it is pushed onto the next link. Queueing delay is the amount of time the packet is spent waiting in the router's queue or buffer. 

## Last-mile latency and round-trip time

Last-mile latency refers to the latency introduced within the parts of the network closest to the end points. Round-trip time is a measure of latency which is the amount of time it takes from the sending of a signal to receiving the response that the signal was received.

## The physical layer and link layer

At the physical layer, bits are converted to signals which may be electrical signals, light, or radio waves.

The link layer is primarily concerned with identifying devices on the physical network and moving data over the physical network between devices.

Ethernet cables may be used to connect hosts, switches, and routers. Frames are the protocol data unit of the Ethernet protocol and encapsulate data from the network layer above. An Ethernet frame adds structure to the binary data of the physical layer. A network device is able to identify the different parts of the frame due to the frame having fields with specific lengths and appearing in a set order. 

The MAC address fields are used by switches to direct the frame between network devices. Each device connected to the network has a network interface card (NIC) which is assigned a unique MAC address. The MAC address is a sequence of six 2-digit hexadecimal numbers separated by colons. 

A **hub** replicates a message and forwards it to all of the devices on a network. If a hub was being used, each device receiving the message would check to see if its own MAC address was the destination MAC address field of the frame; if they did not match, then the frame is ignored. Most modern networks do not use hubs, instead they use a **switch**, which uses the destination MAC address to direct frames only to the device for which it is intended. The switch does this by keeping a record of the MAC addresses of the devices connected to it and associated each address with the Ethernet port to which the device is connected on the switch. The switch keeps this data in a **Mac address table**.

## Internet Protocol (the network layer)

The Internet Protocol provides communication between hosts. In other words, while the Ethernet protocol (or link layer) provides communication between devices on the same link or network, IP enables communication between two networked devices anywhere in the world. It does not provide communication between applications.

**The primary features of both IPv4 and IPv6 are routing via IP addressing and data encapsulation into packets.**

All routers store a routing table which is used to match the destination IP address field of a packet with a network address, which defines a range of addresses within a particular subnet.

The protocol data unit of IP is the packet. The packet encapsulates the protocol data unit of the transport layer above as its payload.

The most important header fields to note in the packet are the source IP address and destination IP address. There is also a checksum (error checking value generated via an algorithm) and a **time to live** value which is decremented once by each router and indicates the maximum number of network hops a packet can make before being dropped.

## IP addresses

IP addresses are logical; instead of being tied to a specific device as is a MAC address, they can be assigned to devices as they join a network, and must fall within the range of addresses available to the network that the device is connected to.

The **network address** is the IP address at the start of the range of IP addresses available to a network. The **broadcast address** is the address at the end of the range. 

## TCP and UDP

TCP provides the abstraction of reliable network communication over an unreliable channel. TCP is connection-oriented: this means that application data is not sent until a connection has been established between processes. The connection is established via the **TCP three-way handshake**. The three-way handshake introduces an entire round-trip of latency before application data is sent. TCP  is reliable: data is delivered intact and in the correct order. This reliability is provided through message acknowledgement and retransmission. In-ordery delivery introduces the possibility of **head-of-line blocking**, where if the first message in a sequence of messages does not arrive, the processing of subsequent messages in the sequence is delayed.

TCP also provides mechanisms for flow control and congestion avoidance. **Flow control** prevents the sender from overwhelming the receiver with too much data at once. Each side of the connection lets the other side know how much data it is willing to accept, and this number may be updated. **Congestion avoidance** helps prevent overwhelming the underlying network with too much data. TCP interprets packets being dropped as the network being congested responds by reducing the amount of data sent. 

UDP provides transport layer multiplexing and demultiplexing in the same way that TCP does. However in contrast to TCP:
- UDP is connectionless
- UDP does not guarantee message delivery or message delivery in order
- UDP also does not have mechanisms for flow control or congestion avoidance

UDP's advantage over TCP is its simplicity, which provides speed and flexibility.

## Transport layer multiplexing and demultiplexing

Multiplexing refers to transmitting multiple signals over a signal channel; demultiplexing is the reverse process. Multiplexing and demultiplexing takes place at the transport layer through the use of **ports**, which are identifiers for specific processes running on a host. Source port and destination port are the fields of the segment headers which provide the multiplexing capability of the protocol.

## Port numbers

Port numbers are identifiers for specific processes running on a host. The source and destination port numbers are included in fields of the transport layer segment headers. While IP addresses allow for data to be directed from one host to another, the IP address and port number together enable end-to-end communication between specific processes running on different hosts.

The combination of IP address and port number can be thought of as a **socket**. Conceptually a socket is an abstraction of an endpoint used for communication between processes. In socket programming the implementation of this concept involves instantiating socket objects.

## DNS

The **Domain Name System** is what handles the mapping of URL to IP address. DNS is a distributed database which keeps track of domain names and their corresponding IP addresses. If a DNS server does not contain the requested domain name, the DNS server routes the request to a different DNS server higher on the hierarchy of DNS servers. A DNS request is made to the Domain Name System after typing a URL into the browser's search bar and before the HTTP request is sent over the Internet.

## HTTP

HTTP is a text-based application layer protocol.

HTTP messages are divided into responses and requests. Both types of messages have up to three components: a start line, headers, and a body.

The start line is termed the request line in the case of HTTP requests. The start line is termed the status line in the case of HTTP responses.

The end of the headers is indicated by an empty line with HTTP/1.1.

The body is optional for both requests and responses. The headers are optional for responses.

The Content-Length header can be used to indicate the size of the body, which helps determine where the HTTP message should end.

## Client-server model

HTTP is the protocol which defines the message format of the web. HTTP messages are either requests or responses. Requests are sent from the client (a web browser) to the server. The server processes the request, and then sends a response to the client. Therefore HTTP is referred to as a request response protocol. 

## "State" in the context of the web

The HTTP protocol is stateless, meaning each request/response pair is completely independent of the previous one and the server does not hang on to information about previous request/response cycles. However, it is common for web applications to feel "stateful" in that you can log in to the website and perform some actions without being logged out. One way this can be accomplished is by passing back and forth a **session identifier** which is a unique token to the client. Usually the session id is a random string and comes in the form of a browser cookie.

A **cookie** is a small file sent from the server during a request/response cycle and stored in the browser. The server may store information about the current session on its side, and then compare session information from the cookie with the server's session data to identify the current session. 

**AJAX** is another technique involved in designing stateful web applications and allows the browser to issue requests and process responses without a full page refresh (which is termed asynchronous). This means that an action can be performed by the user and the page can be updated without having to refresh the entire page.

## Security and HTTP

HTTP is insecure due to the fact that messages are transferred in plain text. Security can be increased by using HTTPS and enforcing the same-origin policy.

**HTTPS** encrypts every request/response using TLS before transporting the message over the network so that even if a malicious user intercepted the message, they would not be able to do anything with the information.

The **same-origin policy** restricts certain interactions between resources originating from different origins. Typically it is cross-origin requests where resources are being accessed programmtically using APIs such as `fetch`. **CORS** is a HTTP header-based mechanism that allows interactions that would normally be restricted by the same-origin policy.

**Session hijacking** occurs when a malicious user shares the same session as the user by having gained access to the session id. This allows the malicious user to log in as the user without knowing their username and password. Some countermeasures are resetting sessions (a successful login renders an old session id invalid and creates a new one; websites may require users to login when entering sensitive areas), expiring sessions after a certain amount of time, and using HTTPS across the entire app.

**Cross-site scripting** or **XSS** can occur if a website allows a user to input HTML or JavaScript that is directly displayed by the site. If the input is not sanitized and is allowed to be injected into the page content, the browser will interpret the HTML and JavaScript and execute it. Countermeasures include sanitizing user input and escaping user input data when displaying it.