# Configure the Google Cloud provider
provider "google" {
  project = "unified-icon-364119"
  region  = "us-central1"
}

# Create a Google Compute instance
resource "google_compute_instance" "example" {
  name          = "test-2"
  machine_type  = "e2-micro"
  zone          = "us-central1-a"
  
  boot_disk {
    initialize_params {
      image = "centos-7-v20200309"
    }
  }
  
  network_interface {
    network = "test"
    subnetwork = "test-priv-1"

    access_config {
      // Ephemeral IP
    }
  }
  
  tags = ["terraform-specs"]
}
