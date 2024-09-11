# Platform Demo
[Deployed App](http://ecs-load-balancer-1520435687.us-east-1.elb.amazonaws.com)
[App Health Check](http://ecs-load-balancer-1520435687.us-east-1.elb.amazonaws.com/health)

This repository represents a simple python app deployed using AWS ECS with Fargate.

## MVP Requirements
[X] repo  
[X] application  
[X] docker  
[X] github actions  
[] argoCD  
[] helm  
[X] terraform

## TODOs
[X] .gitignore
[X] .dockerignore
[] separate out IaC
[X] create service role/user
[] reduce az, only need 1
[] clean up git history

## Roadblocks
- Learning curve
- Starting from scratch is tedious.
    - Installing, setting up accounts, environments variables, aws
- Debugging AI responses
- Configuring security groups
- Setting up health check to make a valid target
- Updating app and docker to support a Flask app