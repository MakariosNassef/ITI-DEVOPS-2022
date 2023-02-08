# SonarQube with Jenkins
## 1- Install SonarQube with helm
  1. Install Helm and create Kubernetes cluster.
  2. Create a Postgress chart using Helm.
  3. Deploy the Postgress chart to My Kubernetes cluster using Helm.
  4. Create a SonarQube chart using Helm.
  5. Deploy the SonarQube chart to My Kubernetes cluster using Helm.

### - Cloning a repository https://github.com/kareemelkasaby1/Sonarqube-Demo
![image](https://user-images.githubusercontent.com/28235504/217260156-b0053835-6f13-4029-8817-4a4ed4753bf4.png)
### - Apply `Postgress` on K8S  useing Helm to deploy
![image](https://user-images.githubusercontent.com/28235504/217274487-c8e70ce7-287d-43fd-8342-0d838519a0ce.png)
### - Apply `Sonarqube` on K8S useing Helm to deploy
![image](https://user-images.githubusercontent.com/28235504/217274336-65d9429a-753b-4984-bb72-184c7875e838.png)
### - Output
![image](https://user-images.githubusercontent.com/28235504/217549045-4d03c56c-e641-4601-9be2-ae12cbe0761c.png)
![image](https://user-images.githubusercontent.com/28235504/217549236-a403e058-f58d-4875-902c-884c3f0f6e31.png)
![image](https://user-images.githubusercontent.com/28235504/217549447-dfb502a3-74f4-47ce-85fb-5821c17a71b2.png)
![image](https://user-images.githubusercontent.com/28235504/217549563-80de1bc6-490a-4273-b5ac-be164014264f.png)


## 2- integrate SonarQube with Jenkins - Apply Jenkins on K8S useing Helm to deploy
  1. Create a Jenkins chart using Helm.
  2. Deploy the Jenkins chart to My Kubernetes cluster using Helm.
  3. Configure the Jenkins chart to include the SonarQube plugin.
  4. Configure the SonarQube plugin in Jenkins with the appropriate credentials and settings for my SonarQube instance.
  5. Create a Jenkins job that will run a SonarQube analysis on any codebase and report back any issues or warnings found by SonarQube.
  6. Monitor the results of the analysis and take action as necessary to address any issues or warnings found by SonarQube.

- ![image](https://user-images.githubusercontent.com/28235504/217549891-c45b0945-db3f-434d-a88a-1790083d61e0.png)
- ![image](https://user-images.githubusercontent.com/28235504/217550017-d57ffd16-703a-4e0b-8969-2e90b0a51b44.png)
- ![image](https://user-images.githubusercontent.com/28235504/217564649-4f648136-742b-4727-ba28-97f71b837dee.png)
### Generate Tokens 
- ![image](https://user-images.githubusercontent.com/28235504/217664071-66f7a7b4-5ad4-4b5f-ab9e-b97ea44c41dc.png)
### Add Credentials for sonarqube in jenkins
- ![image](https://user-images.githubusercontent.com/28235504/217551126-e2c2d3d1-7130-424c-99b9-b92693b0e4e5.png)
- ![image](https://user-images.githubusercontent.com/28235504/217551534-942168fe-2b62-4a16-b7e6-aaa2f5a95119.png)
- ![image](https://user-images.githubusercontent.com/28235504/217551870-5440b6f7-ae7b-4e21-bbca-95f2812c485f.png)


## 3- Bonus: add multibranch plugins 
