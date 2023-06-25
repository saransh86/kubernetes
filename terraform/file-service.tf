resource "kubernetes_service" "file" {
  metadata {
    name = "file"

    labels = {
      "io.kompose.service" = "file"
    }
  }

  spec {
    port {
      name        = "3000"
      port        = 80
      target_port = "3000"
    }

    selector = {
      "io.kompose.service" = "file"
    }

    type = "LoadBalancer"
  }
}

