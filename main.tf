terraform {

  cloud {
    organization = "iavirvarei"

    workspaces {
      name = "Google_credentials"
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
}
