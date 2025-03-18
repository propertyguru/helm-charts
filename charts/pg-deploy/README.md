# pg-deploy

![Version: 0.1.0](https://img.shields.io/badge/Version-0.1.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 1.0.0](https://img.shields.io/badge/AppVersion-1.0.0-informational?style=flat-square)

A Helm chart for PropertyGuru Kubernetes deployments.

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| businessunit | string | `""` | The business unit associated with the deployment |
| component | string | `""` | component is the key to group applications together under a common namespace |
| deployment.applicationPort | int | `3000` | applicationPort is the port on which the application will run |
| deployment.autoscaling.enabled | bool | `true` | Enable or disable autoscaling |
| deployment.autoscaling.maxReplicas | int | `10` | Maximum number of replicas |
| deployment.autoscaling.minReplicas | int | `1` | Minimum number of replicas |
| deployment.autoscaling.targetCPUUtilizationPercentage | int | `80` | Target CPU utilization percentage threshold to trigger autoscaling |
| deployment.awsSecrets | list | `[{"key":"key","objectName":"objectName"}]` | Key is the Key in the AWS secret and ObjectName is the environment variable name to set in the pod corresponding to the key |
| deployment.capturePodFailures | object | `{}` |  |
| deployment.configMap | object | `{"data":"\"key\": \"value\"\n"}` | ConfigMap data to be set as environment variables in the pod |
| deployment.datadogTracing.enabled | bool | `false` | Enable or disable Datadog tracing |
| deployment.image.pullPolicy | string | `"Always"` | pullPolicy for the container Image (e.g., Always, IfNotPresent, Never) |
| deployment.image.repository | string | `""` | repository of the Docker image to deploy |
| deployment.image.tag | string | `""` | tag is the docker image tag |
| deployment.livenessProbe | object | `{}` | Liveness probe configuration. More details - https://kubernetes.io/docs/tasks/configure-pod-container/configure-liveness-readiness-startup-probes/#define-a-liveness-command |
| deployment.podSecurityContext | object | `{}` | Pod security context. More details - https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ |
| deployment.readinessProbe | object | `{}` | Readiness probe configuration. More details - https://kubernetes.io/docs/tasks/configure-pod-container/configure-liveness-readiness-startup-probes/#define-readiness-probes |
| deployment.replicaCount | int | `1` | replicaCount is the number of replicas for the deployment. Only required if autoscaling.enabled: false |
| deployment.resources.limits.cpu | string | `"100m"` | CPU limit for entire pod |
| deployment.resources.limits.memory | string | `"128Mi"` | Memory limit for entire pod |
| deployment.resources.requests.cpu | string | `"100m"` | CPU request for entire pod |
| deployment.resources.requests.memory | string | `"128Mi"` | Memory request for entire pod |
| deployment.securityContext | object | `{}` | Container security context. More details - https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ |
| deployment.startupProbe | object | `{}` | Startup probe configuration. More details - https://kubernetes.io/docs/tasks/configure-pod-container/configure-liveness-readiness-startup-probes/#define-startup-probes |
| deployment.strategy.maxSurge | string | `"50%"` | maxSurge is the maximum number of pods that can be created over the desired number of pods |
| deployment.strategy.maxUnavailable | string | `"25%"` | maxUnavailable is the maximum number of pods that can be unavailable during the update process |
| deployment.strategy.progressDeadlineSeconds | int | `600` | progressDeadlineSeconds is the time in seconds for the deployment to progress |
| deployment.strategy.revisionHistoryLimit | int | `5` | revisionHistoryLimit is the number of old ReplicaSets to retain |
| deployment.strategy.type | string | `"RollingUpdate"` | type of Deployment strategy (e.g., RollingUpdate, Recreate) |
| deployment.volumeMounts | object | `{}` | Volume mounts to attach to the pod. |
| deployment.volumes | object | `{}` | Additional volumes to be mounted in the pod. More details - https://kubernetes.io/docs/concepts/storage/volumes/ |
| env | string | `""` | The environment to deploy the application (e.g., integration, sandbox$n, staging, production) |
| gitRepository | string | `""` | gitRepository is the URL of the git repository associated with the application |
| name | string | `""` | The name of the deployment |
| namespace | string | `""` | namespace is the key to group applications together under a common namespace |
| service.port | int | `8080` | Port at which service will be exposed |
| team | string | `""` | The team responsible for the deployment |
| version | string | `""` | version is the git sha associated with the commit being deployed |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.14.2](https://github.com/norwoodj/helm-docs/releases/v1.14.2)
