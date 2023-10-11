resource "vsphere_virtual_machine" "vm" {
    name = var.vm_name
    datastore_id = data.vsphere_datastore.datastore.id
    resource_pool_id = data.vsphere_resource_pool.pool.id 
    num_cpus = var.num_cpus
    memory = var.memory
    guest_id = var.guest_id
    wait_for_guest_net_timeout = var.wait_for_guest_net_timeout
    wait_for_guest_ip_timeout = var.wait_for_guest_ip_timeout
    network_interface {
      network_id = data.vsphere_network.network.id 
    }
    disk {
      label = var.disk.label
      size = var.disk.size
    }
  
}
