resource "digitalocean_kubernetes_cluster" "cluster1" {
  name    = "personal-app-k8s"
  region  = "lon1"
  version = "1.16.6-do.2"

  node_pool {
    name       = "k8s-worker-pool"
    size       = "s-1vcpu-2gb"
    node_count = 2
  }
}

output "cluster-id" {
  value = "${digitalocean_kubernetes_cluster.cluster1.id}"
}