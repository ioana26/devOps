terraform {

  cloud {
    organization = "iavirvarei"

    workspaces {
      name = "Google_credentials"
    }
  }
}



resource "google-compute_instace" "my-server" {
  name = "my-gcp_server"
  machine = "f1.micro"
  
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-g"
    }
  }
  network_interface {
    network = "default" //This Enable Private IP Addresses
    access_config{}  //This Enable Public IP Address
  }
}

//resource "aws_instance" "web" {
  //ami                    = data.aws_ami.ubuntu.id
  //instance_type          = "t2.micro"
  //vpc_security_group_ids = [aws_security_group.web-sg.id]



/*resource "aws_security_group" "web-sg" {
  name = "${random_pet.sg.id}-sg"
  ingress {
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  

output "web-address" {
  value = "${aws_instance.web.public_dns}:8080"
}
*/
