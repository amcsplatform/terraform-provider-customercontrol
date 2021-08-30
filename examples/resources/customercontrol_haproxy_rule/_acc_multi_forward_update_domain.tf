resource "customercontrol_haproxy_rule" "multi-forward" {
  domain_name = "terraform-provider-test-2.amcsgroup.io"
  setup_kind  = "multi-forward"

  setup_configuration_multi_forward {
    set_host = true

    servers {
      url    = "grafana-dev.amcsgroup.io"
      is_ssl = false
      port   = 80
    }
    servers {
      url    = "grafana.amcsgroup.io"
      is_ssl = false
      port   = 80
    }
  }
}
