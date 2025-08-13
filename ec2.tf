# this is like main in terraform, we are keeping this means this module code ill use no of project so terraform lo this ane key word pedatam as given in the terraform offical doc prakaram.

# Programming lo manaki yenti andhi telidu annappudu this anedi use chestam like main annattu. so I name it as this.


resource "aws_instance" "this" {        # 🔎 terraform naming convention, once read it total Doc
  ami           = var.ami_id
  instance_type = var.instance_type
  #vpc_security_group_ids = [  aws_security_group.allow_all.id  ]
  vpc_security_group_ids = var.sg_ids

  tags = var.tags
}
