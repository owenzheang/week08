resource "azurerm_kubernetes_cluster_node_pool" "application" {
  name                  = "apps"
  kubernetes_cluster_id = azurerm_kubernetes_cluster.aks.id

  vm_size    = "Standard_D2s_v3"
  node_count = 1
  mode       = "User"

  tags = merge(var.tags, {
    Environment = var.environment
  })
}