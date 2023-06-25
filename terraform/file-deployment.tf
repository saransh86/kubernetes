resource "kubernetes_deployment" "file" {
  metadata {
    name = "file"

    labels = {
      "io.kompose.service" = "file"
    }
  }

  spec {
    replicas = 1

    selector {
      match_labels = {
        "io.kompose.service" = "file"
      }
    }

    template {
      metadata {
        labels = {
          "io.kompose.network/kubernetes-default" = "true"

          "io.kompose.service" = "file"
        }
      }

      spec {
        container {
          name  = "file"
          image = "543713428195.dkr.ecr.us-east-1.amazonaws.com/file-management:latest"

          port {
            container_port = 3000
          }
        }

        restart_policy = "Always"
      }
    }
  }
}

