provider "aws" {

access_key="AKIAZTIMJ7JHPVODYVZA"
secret_key="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"
region="eu-west-1"
}
resource "aws_instance" "deepikastf1"{
ami="ami-04b29aaed8d74f8f3"
instance_type="t2.micro"
provisioner "chef" {
connection{
host = "$ {self.public_ip}"
type = "ssh"
user = "premag"
private_key = "${file("C:\\Prema\\key.pem")}"
}
client_options = ["chef_license 'accept'"]
run_list = ["terra::default"]
recreate_client = true
node_name = "tfakila.acc.come"
server_url = "https://api.chef.io/organizations/premag"
user_name = "premag"
user_key = "${file("C:\\Prema\\chef-starter\\chef-repo\\.chef\\premaganesan.pem")}"
ssl_verify_mode = ":verify_none"
}
}





