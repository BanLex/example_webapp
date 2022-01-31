resource "yandex_vpc_route_table" "net-rt-a" {
  network_id = "${yandex_vpc_network.network-1.id}"

  static_route {
    destination_prefix = "0.0.0.0/0"
    next_hop_address   = yandex_compute_instance.gw.network_interface.0.ip_address
  }
}
