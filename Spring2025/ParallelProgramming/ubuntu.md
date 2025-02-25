# Setting up an Ubuntu Server
- servers dont typically use bluetooth or wifi
- use an ssd for the operating system for quicker response time and booting (doesnt need to be large, only needed for os not actual storage)
- use magnetic disks to store very large files
  - cheaper
- dont overload our server with roles and tasks
- plan ram and storage carfully, so theres enough for the needed tasks
- when we provide services to others we need them to be reliable
  - if you have time, try testing different configurations
  - dont be afraid to rebuild
- should keep on LTS (long term support)
- configure network connections
  - specify static network address
  - provide router address
- serves should have a _static ip address_, we can also use automatic dhcp
- we can also provide a proxy address or different mirror of ubuntu
- lvm needs to grow, doesnt take up entire disk by default
    - everytime system boots we need to enter password if encrypted

> [!NOTE]
> I should make my old desktop a server, do that for a fun side project. I have ubuntu already on it so it shouldnt be hard
> buttt I should reinstall the server version instead
