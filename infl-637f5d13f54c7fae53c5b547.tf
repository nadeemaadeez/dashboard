resource "google_compute_firewall" "default-allow-ssh-b59" {
  allow {
    ports    = ["22"]
    protocol = "tcp"
  }
  description   = "Allow SSH from anywhere"
  direction     = "INGRESS"
  disabled      = false
  name          = "default-allow-ssh"
  network       = "https://www.googleapis.com/compute/v1/projects/firefly-369408/global/networks/default"
  priority      = 65534
  project       = "firefly-369408"
  source_ranges = ["0.0.0.0/0"]
}

