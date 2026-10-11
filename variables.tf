variable "iploadbalancing_udp_farms" {
  description = <<EOT
Map of iploadbalancing_udp_farms, attributes below
Required:
    - port
    - service_name
    - zone
Optional:
    - display_name
    - vrack_network_id
EOT

  type = map(object({
    port             = number
    service_name     = string
    zone             = string
    display_name     = optional(string)
    vrack_network_id = optional(number)
  }))
}

