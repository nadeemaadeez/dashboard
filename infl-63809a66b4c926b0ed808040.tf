resource "google_compute_firewall" "default-allow-ssh-b59" {
  allow {
    ports    = ["22"]
    protocol = "tcp"
  }
  description   = "Allow SSH from anywhere"
  direction     = "INGRESS"
  disabled      = false
  name          = "default-allow-ssh"
  network       = "${google_compute_network.default-d07.self_link}"
  priority      = 65534
  project       = "firefly-369408"
  source_ranges = ["0.0.0.0/0"]
}




resource "google_compute_network" "default-d07" {
  description  = "Default network for the project"
  name         = "default"
  project      = "firefly-369408"
  routing_mode = "REGIONAL"
}




resource "google_service_account" "projectsfirefly-369408serviceAccountsfirefly-369408appspotgserviceaccountcom-0e7" {
  account_id   = "firefly-369408"
  display_name = "App Engine default service account"
  project      = "firefly-369408"
}




resource "google_service_account" "projectsfirefly-369408serviceAccounts692243503063-computedevelopergserviceaccountcom-59c" {
  account_id   = "692243503063-compute"
  display_name = "Compute Engine default service account"
  project      = "firefly-369408"
}




resource "google_service_account" "projectsfirefly-369408serviceAccountsfirefly-gcpfirefly-369408iamgserviceaccountcom-319" {
  account_id   = "firefly-gcp"
  display_name = "Firefly-firefly-access"
  project      = "firefly-369408"
}

