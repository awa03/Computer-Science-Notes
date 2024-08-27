# Assignment 4
**Aiden Allen**


Throughout this assignment I had alot of difficulty, that being said most of the features that we were asked to implement I was able to accomplish. 

My first step was updating my windows version since it had not been fully updated in the previous step. This took alot of time... 

Moving on to the next step... 
<blockquote>For Azure, double-check that your two VMs are already in the same virtual network (they should be by default).</blockquote>

From this step I had some major issues that I did not realize till later in the process. Since I used Azure and followed the instructions I assumed (always a dangerous choice) that my environments had been setup correctly, in fact this is partially why I could not fully complete this assignment.  My environments were created within <b>separate resource groups</b>. There is definitely a work around to this issue that I was unable to discover, however It did lead me to the conclusion that I needed to completely delete my client vm. This maybe over the top, but after repeated attempts to migrate the client to the same resource group it proved impossible given my current setup. I was receiving strange error codes for my migration, and even after attempting some fixes I found online I could not figure it out. 

![[link.png]]

One such attempt, linking the virtual networks, I thought would be the solution ended up causing more issues for me than it solved. However I am glad that I did the wrong thing in the end because I believe it made me feel more comfortable working with Azure, as well as making mistakes in the process, and figuring out how to remedy them.

Deploying the Active Directory domain was another source of my issues. I am unaware as to why, however when doing this the installation process failed to install the DNS options, which I assumed was a difference in Azure versions rather than an issue on my part. The domain service was setup correctly, however without this it proved impossible to link the two accounts.


![[Active_Domain.png]]

Here are further screenshots confirming my installations, as well as the creation of a new forest aptly named Main.Src. In retrospect another issue of my environment structure is my poor naming conventions which made navigation extremely confusing. The most of which was accidently naming the client "server" and the server "test".

![[Confirm_Active_Domain.png]]

Following this installation I attempted to add the DNS to my client. However this never successfully worked as intended. I tried every combination of public and private IP's that I could imagine ranging from `10.0.0.4` and `8.8.8.8` to the use of the servers public ip address as seen below. 

![[ip.png]]

This stage of the process was the most frustrating to me. This is where to slow response time of Azure started to bother me, as I would wait sometimes minutes in order for my keystrokes to register. All in all this stage consumed the majority of my debugging time, amounting up to several days of stress and lost sleep. In retrospect I should have gone to office hours for this assignment however I wanted to attempt to learn and fix my issues on my own. 

There were several differences between the tutorial and my versions which made this process even more difficult. First and foremost the DNS configuration on my machine looked entirely different, and was no where to be found within the settings location given by the tutorial. I eventually found the DNS configuration after basically randomly clicking within the ethernet management pop up that you see above. Secondly my ip configuration was much more limited than the one shown in the tutorial, as well as archaic in the graphical interface, when compared to the tutorial versions. Lastly the connection method to show a more detailed error code was no where to be found within my machine. I searched to no luck so I was stuck seeing `Unable to find domain` every time I attempted to add my servers domain to my client. 

Around this stage is unfortunately when I discovered that my client and server were on separate virtual networks (as well as resource groups), and so I decided to scrap the client and start from scratch.

To my dismay this was not the final stage of issues, leading to my final issue that I was unable to resolve which was finding out my server did not that the DNS tool installed. This should have been an easy fix...

![[issues.png]]

However as you can plainly see the request was invalid. I attempted to trouble shoot this however my device would not allow me because of an issue with storage / memory capacity. I am unsure if this is referring to ram usage or disk memory (my assumption is disk), due to the multitude of low memory warnings that I received while using my server.

In order to fix these issues I am going to start from scratch, and follow the tutorial more closely with my new found understanding of Azure and hope that these issues will resolve themselves. I will also be attending office hours in hope of finding a solution to these issues. 