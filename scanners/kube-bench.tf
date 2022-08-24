resource "kubernetes_manifest" "kube_bench" {
  manifest = {
    "apiVersion" = "batch/v1"
    "kind" = "Job"
    "metadata" = {
      "name" = "kube-bench"
      "namespace" ="default"
    }
    "spec" = {
      "template" = {
        "spec" = {
          "containers" = [
            {
              "command" = [
                "kube-bench",
                "run",
                "--targets",
                "node",
                "--benchmark",
                "eks-1.0.1",
              ]
              "image" = "docker.io/aquasec/kube-bench:latest"
              "name" = "kube-bench"
              "volumeMounts" = [
                {
                  "mountPath" = "/var/lib/kubelet"
                  "name" = "var-lib-kubelet"
                  "readOnly" = true
                },
                {
                  "mountPath" = "/etc/systemd"
                  "name" = "etc-systemd"
                  "readOnly" = true
                },
                {
                  "mountPath" = "/etc/kubernetes"
                  "name" = "etc-kubernetes"
                  "readOnly" = true
                },
              ]
            },
          ]
          "hostPID" = true
          "restartPolicy" = "Never"
          "volumes" = [
            {
              "hostPath" = {
                "path" = "/var/lib/kubelet"
              }
              "name" = "var-lib-kubelet"
            },
            {
              "hostPath" = {
                "path" = "/etc/systemd"
              }
              "name" = "etc-systemd"
            },
            {
              "hostPath" = {
                "path" = "/etc/kubernetes"
              }
              "name" = "etc-kubernetes"
            },
          ]
        }
      }
    }
  }
}