# Configure the Google Cloud provider
provider "google" {
  project = "unified-icon-364119"
  region  = "us-central1"
}

# Create a Google Compute instance
resource "google_compute_instance" "example" {
  name          = "example"
  machine_type  = "f1-micro"
  zone          = "us-central1-a"
  
  boot_disk {
    initialize_params {
      image = "ubuntu-1604-lts"
    }
  }
  
  network_interface {
    network = "test"

    access_config {
      // Ephemeral IP
    }
  }
  
  tags = ["terraform-example"]
}
