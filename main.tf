resource "google_compute_network" "vpc" {
  name                    = "tf-demo-net-2"
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "subnet" {
  name          = "tf-demo-subnet"
  ip_cidr_range = "10.10.0.0/24"
  region        = var.region
  network       = google_compute_network.vpc.id
}

output "network" { value = google_compute_network.vpc.name }
output "subnet" { value = google_compute_subnetwork.subnet.name }

