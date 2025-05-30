resource "aws_instance" "expense" {
    for_each = var.instance_names # each.key and each.value
    ami = data.aws_ami.ami_info.id
    vpc_security_group_ids = ["sg-09acba1c4168699b4"] # replace with you SG ID
    instance_type = each.value
    tags = merge(
        var.common_tags,
        {
            Name = "${each.key}"
            Module = "${each.key}"
            Environment = var.environment
        }
    )
}


#terraform init  -backend-config=dev/backend.tf (if 2nd time -reconfigure)
#terraform plan -var-file=dev/dev.tfvars

