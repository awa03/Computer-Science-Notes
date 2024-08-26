## Assignment 6

**Aiden Allen**

#### 1. Setting up the Ubuntu 18.04 VM on Virtual Box
Since I am using virtual box, I simply downloaded the Ubuntu iso, and added it as a guest addition to an old ubuntu virtual machine. From here I simply downloaded, and renamed my virtual machine to fit the new distribution. 

![[pic1 1.png]]

I could have created a ssh through a tool such as openssh, however this would be impractical seeing as I am the only user on this machine, and we are already provided with a gui interface on install. 

#### 2. Installing a complex software package (CORE) on Ubuntu
The next stage was to update and upgrade my package manager. The package manager provided through our Ubuntu distribution is entitled apt or Advanced Package Manager. This package manager is responsible for managing Debian based Linux distributions, with other package managers existing such as yum, dnf, and choco. 

![[pic2 2.png]]

The first stage however is to become a root user in order to successfully update and upgrade our packages / package manager. 

```sh
su - 

# alternatively
sudo su
```

The commands shown above are two methods of becoming a root user. I had to use `su -` because my user was not root by default, thus I did not have permissions to execute `sudo`. However if the user does have administrative access using the command `sudo su` will switch the users privileges to have root access.

![[pic3 2.png]]

Following the successful transition to a root user, as well as installing any necessary upgrades of the package manager, the commands for which can be seen below. We can now install the necessary packages to run our complex software.

```sh
apt upgrade && apt update
```

Additionally we need to enable auto remove in order to remove any deprecated or unnecessary packages that may cause conflict within further steps. 

```sh
apt autoremove
```

![[pic4 2.png]]

The  `wget` request seen above will create a web request for the core_6.4.0_amd64.deb file. This file is a Debian-based CORE prepackaged installer. Now we execute the file! 

![[pic5 2.png]]

Since many of the dependencies may not have been installed we resolve this through the following command.

```sh 
apt-get -f install
```

If this command is not completed we will face issues in launching our Complex Software in later steps.

![[pic6 2.png]]

In the next stage we installed the python3 package manager pip. 

![[pic7 2.png]]

The following image details the additional installations and steps that we needed in order to successfully complete the labs. This screenshot is the output of the `history` command.

![[pic8 2.png]]

Finally we can launch our CORE daemon by executing the following command.

```sh
/etc/init.d/core-daemon start
```

As detailed in the screenshot below, the execution was successful with no errors. This means that all of our dependencies were successfully installed.

![[pic9 2.png]]

We have now successfully completed the third step in using our Complex Software. 
#### 3. Using a Network Simulator

![[pic12 2.png]]

The first step in using our network simulator was choosing a file in order to simulate a network. As instructed I opened the sample9-vpn.imn core config file in order to study the network diagram. The two symbols seen below represent the following: laptop, represents clients, circles, routers.

In order to properly understand this assignment we need to first understand the OSPF internal gateway protocol. The OSPF (Open Shortest Path First) protocol plays a pivotal role in ip routing information being distributed within a single Autonomous System, which is contained within an ip network. The OSPF allows for detailed topological information to be exchanged between the nearest neighbor. The Autonomous system possesses an all encompassing view of the topology of the system. This view is the foundation for finding the shortest path for data to travel within the system. Dijkstra's algorithm is the foundation for the calculation of the shortest path, the next path address is made through the selection of the optimal path.

![[pic13 2.png]]

The image above is a view of the core simulation. I have enabled OSPFv3, which can be found within the Adjacency options -> widgets tab. The simulation is then ran through the start icon that can be seen in the upper left hand corner of the simulator, denoted through a green arrow.

![[pic14 1.png]]

Additionally the image above details an observer widget that we have enabled. This widget allows us to monitor the status of the OSPF protocol. This can be enabled through the Widgets tab -> Observer Widgets, then selecting the OSPFv3 Neighbors option.

![[pic15 1.png]]

I then pinged the ip in order to verify that it is infact online. We can leverage our ip commands through the previously installed package entitled traceroute. 

```sh
traceroute 10.0.1.10
```

The command above allows us to trace the route of communication from the source to the destination. The subsequent output can be seen below.

![[pic16 1.png]]

I then restarted the ping, and set the loss to 100% in order to observe the differences in how the path would be navigated.

![[pic17 1.png]]

As detailed below changing the packet loss percentage affected the path in which the data was taken. This observation led me to the conclusion that because of the high loss percentage a new path was constructed, since it would now form a shorter path. Additionally the nearest neighbor had also changed within the OSPF protocol.

![[pic18 1.png]]

I then introduced a 5 millisecond delay onto the active path. Following this I returned to pinging the ip once again, breaking, and then restoring the delay. Once again I pinged the ip in order to compare the results of the changes that may have been introduced through the delay.

Once again, the 5 millisecond delay had less effect than one might think. This is due to the shortest path algorithm. When the link from n1 to n3 was broken the network found an alternative route, and when the changes were restored the network reverted to the original path.

![[pic19 1.png]]

#### Learning the working procedure of the BGP external gateway protocol

BGP (Border Gateway Protocol) is the backbone of the internet's global routing infrastructure. It manages the routing of packets between different networks by enabling edge routers to exchange routing and reachability information. BGP is crucial for directing packets between autonomous systems (AS), which are networks operated by a single entity, such as an enterprise or a service provider.

One of BGP's key contributions is enhancing network stability by ensuring routers can quickly adapt to route failures. When a path becomes unavailable, BGP promptly identifies and establishes an alternative route. BGP's routing decisions are governed by predefined rules or network policies set by network administrators. These policies dictate how routing is conducted, enabling BGP to make informed routing choices.

The first stage in demonstrating this procedure is to open the sample3-bgp.imn file. Upon the opening of this file I initially decided to ping the ip, as well as trace some of the ip routes that I found interesting. 

![[pic20.png]]

I then began enabling widgets in order to further study the routing of the network. I enjoyed this process, and found it extremely beneficial in understanding the procedure that is used to navigate networks such as the one seen below.

![[pic21.png]]

