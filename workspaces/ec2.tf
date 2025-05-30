resource "aws_instance" "db" {
    ami = "ami-09c813fb71547fc4f"
    vpc_security_group_ids = ["sg-0fea5e49e962e81c9"]
    instance_type = lookup(var.instance_type, terraform.workspace)
}


# terraform workspace new dev ---Creates a new workspace 'dev'

# terraform workspace select dev ---Switches to the 'dev' workspace

# terraform workspace list ---Lists all available workspaces

# terraform workspace show ---Shows the current active workspace


