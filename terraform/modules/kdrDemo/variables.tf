variable "environment" {}


variable "kubeconfig_path" {
  description = "The path to save the kubeconfig to"
  default     = "~/.kube/config"
}