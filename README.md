# AWS Assignment- 5

## Category
- AWS Resources
- Terraform modules
- Terraform State management and state locking

## In this assignment, we will create an end-to-end infrastructure using Terraform resources.

# Details

### In this assignment, we will create an end-to-end infrastructure using Terraform modules

### We are taking reference from our previously created architecture diagram and creating terraform code to implement the complete infrastructure over AWS using Terraform modules.

---

# Input 

![a5_o1](/uploads/0ba21134f9b59b2f3dfaa879a0c4ea5c/a5_o1.png)

## As you can see in above ss that 20 resources are created after applying "terraform apply" command.

## I have created these resources by defining all the modules and calling them in main file via source. You can refer to all the files which i have uploaded to see the working.

---

# Output

## We can use "terraform destroy" which will delete all these resources including the pem key which i have created for this task. The ss of the same is attached below

![a5_o2](/uploads/880e19556449f901ebb48d3cd01e8971/a5_o2.png)

---

![thank-you-10](/uploads/2587ebe2af75fce39d44699b385a8b7f/thank-you-10.gif)

## Author
## [Rishabh Arora](https://gitlab.com/rishabharora)