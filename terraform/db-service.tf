resource "kubernetes_service" "db" {
  metadata {
    name = "db"

    labels = {
      "io.kompose.service" = "db"
    }
  }

  spec {
    port {
      name        = "27017"
      port        = 27017
      target_port = "27017"
    }

    selector = {
      "io.kompose.service" = "db"
    }

    type = "NodePort"
  }
}

