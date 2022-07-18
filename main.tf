terraform {

  cloud {
    organization = "iavirvarei"

    workspaces {
      name = "Google_credentials"
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
