resource "kubernetes_deployment" "db" {
  metadata {
    name = "db"

    labels = {
      "io.kompose.service" = "db"
    }
  }

  spec {
    replicas = 1

    selector {
      match_labels = {
        "io.kompose.service" = "db"
      }
    }

    template {
      metadata {
        labels = {
          "io.kompose.network/kubernetes-default" = "true"

          "io.kompose.service" = "db"
        }
      }

      spec {
        container {
          name  = "db"
          image = "mongo"

          port {
            container_port = 27017
          }
        }

        restart_policy = "Always"
      }
    }
  }
}

