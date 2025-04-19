# 🚀 Terraform AWS EC2 Instance Deployment

This is a beginner-friendly Terraform project that deploys a basic EC2 instance in AWS. It's designed to help you understand Infrastructure as Code (IaC) fundamentals using Terraform and AWS.

---

![image](https://github.com/user-attachments/assets/21a2c54a-f217-4c2c-b2b5-4df01079b127)


## 📌 Project Highlights

- Provisions an Amazon EC2 instance using Terraform
- Uses an existing Key Pair (`bablu-key`) for SSH access
- Automatically tags the instance
- Outputs the public IP address after deployment
- Built to be expanded into more complex projects (VPC, EKS, etc.)

---

## 🧱 Project Structure

```plaintext
terraform-aws-ec2/
├── main.tf         # EC2 resource definition
├── provider.tf     # AWS provider configuration
├── variables.tf    # Input variables
├── outputs.tf      # Output values
└── README.md       # Project documentation
```

## 🔧 Pre-requisites
Before running this project, ensure the following:

✅ Terraform is installed on your system

✅ AWS CLI is configured with IAM credentials

✅ A Key Pair named bablu-key already exists in your AWS account

This key will be used for SSH access to your EC2 instance.
You will need the .pem file locally to connect to the instance.

## 📥 Input Variables

These variables are defined in variables.tf.
Variable Name	Description	Default Value
aws_region	AWS region to deploy resources	ap-south-1
ami_id	Amazon Linux 2 AMI ID (ap-south-1)	ami-0c55b159cbfafe1f0
instance_type	EC2 instance type	t2.micro
key_name	Name of the existing SSH Key Pair	bablu-key

## ⚙️ Usage Instructions

## 1. Clone the Repository
```
git clone https://github.com/skbablualam/terraform-aws-ec2.git
cd terraform-aws-ec2
```

## 2. Initialize Terraform
```
terraform init
```

## 3. Review the Terraform Plan
```
terraform plan
```

## 4. Apply the Configuration
```
terraform apply
Type yes to confirm when prompted.
```

## 🔑 SSH Access

Once the instance is created, you can connect via SSH:

```
ssh -i /path/to/bablu-key.pem ec2-user@<public_ip>
Replace /path/to/bablu-key.pem with the actual path to your .pem file and <public_ip> with the IP from the Terraform output.
```

## 📤 Output

After successful deployment, Terraform will show:

Outputs:
```
instance_public_ip = "XX.XX.XX.XX"
```

## 🧹 Cleanup Resources

To avoid AWS charges, destroy the infrastructure when you're done:

```
terraform destroy

Type yes when prompted.
```

## 📸 Check out this visual from my terminal session:

![Image 1947-01-29 at 4 05 PM](https://github.com/user-attachments/assets/ebdddc11-80c7-448f-a5b5-0ee301deb239)
![Image 1947-01-29 at 4 00 PM](https://github.com/user-attachments/assets/f0057744-0dfb-4f96-ab99-d84ea8282d16)


## 📚 Learning Objectives

By completing this project, you will:

Understand the structure of a basic Terraform project

Learn to use variables and outputs

Gain experience with provisioning AWS resources using code

Build a solid foundation for more advanced Terraform and DevOps projects

## 🙌 Author

Bablu Alam

Cloud & Systems Engineer | DevOps Enthusiast

LinkedIn
