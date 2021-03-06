resource "yandex_compute_instance" "nfs" {
  name = "nfs"
  hostname = "nfs"
  resources {
    cores  = 2
    memory = 2
  }

  boot_disk {
    initialize_params {
      image_id = "fd8f30hur3255mjfi3hq"
    }
  }

  network_interface {
    subnet_id = yandex_vpc_subnet.subnet-1.id
    nat       = false
    dns_record {
      fqdn = "nfs.ru-central1.internal."
    }
  }

  metadata = {
    user-data = "${file("user")}"
  }
  
  depends_on = [yandex_compute_instance.gw]
  
}
