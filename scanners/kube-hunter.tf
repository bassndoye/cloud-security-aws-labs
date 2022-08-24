resource "kubernetes_manifest" "job_kube_hunter" {
  manifest = {
    "apiVersion" = "batch/v1"
    "kind" = "Job"
    "metadata" = {
      "name" = "kube-hunter"
      "namespace" ="default"
    }
    "spec" = {
      "template" = {
        "metadata" = {
          "labels" = {
            "app" = "kube-hunter"
          }
        }
        "spec" = {
          "containers" = [
            {
              "args" = [
                "--pod",
              ]
              "command" = [
                "kube-hunter",
              ]
              "image" = "aquasec/kube-hunter:0.6.8"
              "name" = "kube-hunter"
            },
          ]
          "restartPolicy" = "Never"
        }
      }
    }
  }
}