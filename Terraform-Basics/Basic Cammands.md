### Terraform Basic commands
### Main commands:
```sh
  init          Prepare your working directory for other commands
  validate      Check whether the configuration is valid
  plan          Show changes required by the current configuration
  apply         Create or update infrastructure
  destroy       Destroy previously-created infrastructure
  ```

### All other commands:
```sh
  console       Try Terraform expressions at an interactive command prompt
  fmt           Reformat your configuration in the standard style
  force-unlock  Release a stuck lock on the current workspace
  get           Install or upgrade remote Terraform modules
  graph         Generate a Graphviz graph of the steps in an operation
  import        Associate existing infrastructure with a Terraform resource
  login         Obtain and save credentials for a remote host
  logout        Remove locally-stored credentials for a remote host
  metadata      Metadata related commands
  output        Show output values from your root module
  providers     Show the providers required for this configuration
  refresh       Update the state to match remote systems
  replace       Rebuild the resource with current state file
  show          Show the current state or a saved plan
  state         Advanced state management
  taint         Mark a resource instance as not fully functional
  target        Target specific resource for plan or apply
  test          Experimental support for module integration testing
  untaint       Remove the 'tainted' state from a resource instance
  version       Show the current Terraform version
  workspace     Workspace management
  ```

### Global options (use these before the subcommand, if any):
```sh
  version       Show the current Terraform version
  workspace     Workspace management
  ```

### Global options (use these before the subcommand, if any):
```sh
  -chdir=DIR    Switch to a different working directory before executing the given subcommand.
  -help         Show this help output, or the help for a specified subcommand.
  -version      An alias for the "version" subcommand.
  ```

### Debugging Terraform.
```sh
export TF_LOG_PATH=/tmp/ERROR
export TF_LOG=TRACE
```
### Terraform Graph
```sh
terraform graph > graph.dot
yum install graphviz
cat graph.dot | dot -Tsvg > graph.svg
```

### Save Terraform Plan
```sh
terraform plan -out=demopath
terraform apply demopath
```
### Terraform State Commands
```sh
terraform state list
terraform state mv resourcetype.resourcemname
terraform state pull
terraform state rm resourcetype.resourcemname
terraform state show resourcetype.resourcemname
```