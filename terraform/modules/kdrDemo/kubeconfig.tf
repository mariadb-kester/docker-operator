resource "local_file" "kubeconfig" {
    content  = digitalocean_kubernetes_cluster.this.kube_config[0].raw_config
    filename = pathexpand(var.kubeconfig_path)
    file_permission = "0600"
}