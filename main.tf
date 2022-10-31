# Configure the Google Cloud provider
provider "google" {
  project = "terraform-examples-gcloud"
  region  = "us-central1"
}

# Create a Google Compute instance
resource "google_compute_instance" "example" {
  name          = "example"
  machine_type  = "f1-micro"
  zone          = "us-central-b"
  
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
