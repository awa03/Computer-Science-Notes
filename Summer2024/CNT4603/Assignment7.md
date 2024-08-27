**Aiden Allen**
**Assignment 7**
#### 1. Investigative active TCP/IP connections with TCPView

TCP view allows us to view real time information about our network connections. Using this program we can view information such as local and remote ip addresses, connection state, amount of data sent and received, and IPv4 and IPv6 TCP/UDP connections.

The first step was to download the program. I completed this step by navigating to the [TCPView downloads page](https://learn.microsoft.com/en-us/sysinternals/downloads/tcpview)and installing the program from the sysinternals live link.

![[pic1 3.png]]

Now that we have launched the program we are greeted with an exorbitant amount of information regarding our systems connections. The information contains the name, an identification of the process or endpoint, the local and remote address, as well as the port and creation time.

![[pic2 3.png]]

I further explored TCPView through modifying the color scheme (change light to dark), disabling the UDPv4 view in order to gather a closer (less obstructed) view of other connections.

The TCPView application refreshes updates every 2 seconds. In order to view a less constant stream of updates I changed my refresh speed to 5 seconds, and then pause. This was done through accessing the view->update speed->pause.

![[pic3 3.png]]

I then terminated a process in order to gain familiarity with managing network connections. The app that I terminated I did not want running in the background, this allowed me to understand a use case for which I may leverage this application.

![[pic4 3.png]]

In order to understand the process in a more detailed manner I inspected the process for my Firefox browser. This allowed me to gain insight into how the application utilizes these connections. 

#### Interpreting ethernet packets using WireShark

Wireshark is a free and open source software allowing users to analyze packets from a network connection. 

After downloading WireShark I launched the software and I was greated with the following screen.

![[pic5 3.png]]

By using Wireshark, I had the ability to view packets that were being processed in real time. The advantage to using Wireshark over the previously mentioned TCP view is we as users can now access real time traffic through our network.

Additionally we can now view information such as the source, destination, length, time, and protocol. 

In order to gain a more robust understanding of the information being transmitted I selected an individual packet and selected it in order to view the information captured.

![[pic6 3.png]]

I then enabled the Resolve Network Addresses, and Resolve Transport Addresses in order to better understand the TCP Stream patterns. 

I then followed the UDP stream of a packet in order to gain a closer look as well.

![[pic7 3.png]]

The data from the packet can be viewed below. 

![[pic8 3.png]]

I began to ping the ip `8.8.8.8`, in order to observe the changes within Wireshark. I discovered that this ip address was then resolved to `dns.google`. 

![[pic9 3.png]]

#### Learning how TCP/IP and ethernet protocol interacts using ARP

The Address Resolution Protocol (ARP) is key in local-area networks (LANs) for linking an IP address to a device's physical MAC address. This mapping helps devices identify each other during communication. When a device joins a LAN, it gets a unique IP address, while its network interface has a specific MAC address. ARP then keeps track of these associations.

When a device needs to find another's MAC address, ARP searches for it and caches the result to avoid repetitive queries. This process is automatic and similar to DNS lookups. ARP sends four types of messages: ARP request, ARP reply, Reverse ARP (RARP) request, and RARP reply. To keep the system efficient, ARP caches resolved addresses but regularly clears outdated entries to ensure accuracy.

**TRACERT** allows us to use the command line in order to trace the root taken by the IP packet until it has reached its destination.

![[pic10 2.png]]

As we can see above the packet has gone through 8 stages in order to reach its destination.

![[pic11 2.png]]

Additionally I explored the `dublin-traceroute` command in order to view the differences between it and the traditional `traceroute`.

![[pic12 3.png]]

The `arp -a` allows us to obtain an ARP table. 


![[pic13 3.png]]

By pinging the my ip address I was able to observe changes within this table. 

****

#### Summary

In this lesson, we explored network analysis tools and protocols starting with TCPView, which provides real-time information about network connections including IP addresses and connection states. After downloading and launching TCPView, I modified its settings and terminated processes to manage network connections. Next, we used Wireshark to analyze network packets in real-time, viewing detailed information such as source, destination, and protocol. By enabling specific options and pinging `8.8.8.8`, I observed how packet data is resolved. We also examined the Address Resolution Protocol (ARP), which links IP addresses to MAC addresses in a LAN, facilitating device communication. ARP automatically caches MAC addresses to avoid repetitive queries, and we used commands like `arp -a` to view the ARP table. Finally, the **TRACERT** command demonstrated how to trace the route of an IP packet, showing each hop it takes, with additional insights gained by comparing it to the `dublin-traceroute` command.`