Terraform will prefere variables in following line
```sh
1. Vaule defined in resource
2. CLI Command (terraform plan -var="")
3. CLI Command (terraform plan -var-file="")
4. terraform.tfvars
5. Default value from variables.tf
```

### CLI Commands

```sh
terraform plan -var="instancetype=t2.small"
terraform plan -var-file="custom.tfvars"
```

### Environment Variables:

### Windows Approach:
```sh
setx TF_VAR_instancetype t2.large #(after running command, make sure to use new commmand prompt)
``` 
### Linux / MAC Approach
```sh
export TF_VAR_instancetype="t2.nano"
echo $TF_VAR
```

### Overview of Data Types

| Type Keywords | Description |
| --- | --- |
| string | sequence of unicode characters representing some text, like "Hello" |
| list | Sequentional list of values identified by their position. Starts with 0 ["Mumbai", "Houston", "Ahmednagar"] | 
| map | a group of values identified by named label, like {name = "Shubham", age = 52} |
| number | Example: 7 |