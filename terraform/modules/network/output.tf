output "subnet_ids" {
  value = google_compute_subnetwork.subnet.*.id
}

output "region" {
  value       = var.region
  description = "region"
}