/*
data "aws_subnet_ids" "my_subnet_ids" {
    vpc_id = "${aws_vpc.TF_VPC.id}"
}

data "aws_subnet" "subnets" {
    count = "${length(data.aws_subnet_ids.my_subnet_ids.ids)}"
    id    = "${data.aws_subnet_ids.my_subnet_ids.ids[count.index]}"
}

resource "aws_instance" "EC2_with_TF" {
    ami = "${lookup(var.amis,var.aws_region)}"
    instance_type = "t2.micro"
    key_name = "${var.key_name}"
    availability_zone = "us-east-1"
    vpc = aws_vpc.TF_VPC.id
    subnet_id = "${element(data.aws_subnet_ids.my_subnet_ids.ids, count.index)}"
    vpc_security_group_ids=["${aws_security_group.TF_SG.id}"]
    associate_public_ip_address = true

    tags = {
        Name = "AnsiSlave${count.index+1}"
    }
}
*/