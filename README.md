<u><b>Portable Runtime for Ansible Automation Playbooks</b></u>


<u>Build the Ansible runtime container:</u>  
```docker-compose build```

<u>Start the service interactively with this command:</u>   
```docker-compose run --rm -it ansible_runtime bash```  
...this will start the container running Ansible and land at a command prompt. Also, on Mac OS / Linux type operating systems, the user home directory of the user launching the container, will be mounted to the /home directory inside the container, enabling the user to access and run Playbooks on their local machine storage. To end the session, typing ```exit``` at the command prompt, will terminate the session and the running container.  

<u>Start the service as a container running in the background:</u>  
```docker-compose up -d```  
...you can then connect to a command promot in the running container and disconnect, in the standard way you do this using Docker commands
