# Game Of Life

 You can find this app here https://github.com/docclion/game-of-life

# Preparing enviroments

 In this example we use Google Cloud Platform ( VM instances with Centos 7 )

# 1. First tep 

 Create VM instance on Google Cloud.
 
 ![1](images/1.png) 

# 2. Second step

 Prepare your vm host:
  - by running scripts on host 
    ```bassh
    bash docker_inst.sh 
    bash maven_inst.sh
    ```
 
 - or run ansible playbooks ( before that prepare your ansbile by specify your vm instance ip in /etc/ansible/hosts and credentials): 
   ```bash
   ansible-playbook docker.yml 
   ansible-playbook maven.yml
   ```
   
 # 3. Third step
 
  Configuring Jenkins master
   - added 2 new nodes ( specify labels and numbers of executors)
    
   ![2](images/2.png)
   
   ![3](images/3.png)
   
   - configure your jenkins with github ( added webhook and credentials)
    
   ![4](images/4.png)

    - 
