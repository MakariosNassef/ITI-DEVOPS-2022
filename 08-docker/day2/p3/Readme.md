Network drivers
Docker’s networking subsystem is pluggable, using drivers. Several drivers exist by default, and provide core networking functionality:

1-bridge: The default network driver. Bridge networks are usually used when your applications run in standalone containers that need to communicate.

2-host: For standalone containers, remove network isolation between the container and the Docker host

3-overlay: Overlay networks connect multiple Docker daemons together and enable swarm services to communicate with each other. 

4-none: For this container, disable all networking. Usually used in conjunction with a custom network driver.

5-ipvlan: IPvlan networks give users total control over both IPv4 and IPv6 addressing. 

6-macvlan: Macvlan networks allow you to assign a MAC address to a container, making it appear as a physical device on your network. The Docker daemon routes traffic to containers by their MAC addresses. Using the macvlan driver is sometimes the best choice when dealing with legacy applications that expect to be directly connected to the physical network, rather than routed through the Docker host’s network stack. 