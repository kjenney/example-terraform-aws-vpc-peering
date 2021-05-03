# Example - Peering 2 VPCs with Terraform

This project aims to provide a very straight-forward example of peering 2 entire
VPCs using Terraform.

Terraform provisions the following architecture:

![Terraform diagram](http://www.nicksantamaria.net/img/peer-vpc-diagram-connectivity.png)

Once provisioning is complete, run the [test script](test-instance-connectivity.php) to validate each of the connections.

## Dependencies

* Terraform v0.15 or greater
* An AWS account

## Usage

**1\. Ensure your AWS credentials are set up.**

This can be done using environment variables:

``` bash
$ export AWS_SECRET_ACCESS_KEY='your secret key'
$ export AWS_ACCESS_KEY_ID='your key id'
```

... or the `~/.aws/credentials` file.

```
$ cat ~/.aws/credentials
[default]
aws_access_key_id = your key id
aws_secret_access_key = your secret key
```

**2\. Set tfvars**

Rename `terraform.tfvars.example` to `terraform.tfvars` and set the variables accordingly.

**3\. Review the Terraform plan.**

Execute the below command and ensure you are happy with the plan.

``` bash
$ terraform plan
```

**4\. Execute the Terraform apply.**

Now execute the plan to provision the AWS resources.

``` bash
$ terraform apply
```

**5\. Run the test PHP script.**

``` bash
$ python test-instance-connectivity.py
```

**6\. Destroy the resources.**

Once you are finished your testing, ensure you destroy the resources to avoid unnecessary AWS charges.

``` bash
$ terraform destroy
```
