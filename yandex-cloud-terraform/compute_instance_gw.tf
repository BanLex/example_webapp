resource "yandex_compute_instance" "gw" {
  name = "gw"
  hostname = "gw"
  resources {
    cores  = 2
    memory = 2
  }

  boot_disk {
    initialize_params {
      image_id = "fd8drj7lsj7btotd7et5"
      size = "8"
    }
  }

  network_interface {
    subnet_id = yandex_vpc_subnet.subnet-1.id
    ip_address = "192.168.10.3"
    nat       = true
    nat_ip_address = "84.201.129.141"
    dns_record {
      fqdn = "gw.ru-central1.internal."
    }
  }

  metadata = {
    user-data = "${file("user")}"
  }

}
