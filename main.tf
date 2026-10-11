resource "ovh_iploadbalancing_udp_farm" "iploadbalancing_udp_farms" {
  for_each = var.iploadbalancing_udp_farms

  port             = each.value.port
  service_name     = each.value.service_name
  zone             = each.value.zone
  display_name     = each.value.display_name
  vrack_network_id = each.value.vrack_network_id
}

