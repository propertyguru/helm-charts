![PropertyGuru Logo](https://www.propertyguru.com.sg/images/cms/Image/PropertyGuru%20Brand%20Refresh%20-%20New%20Logo.jpg)

## Add the PropertyGuru Helm repository

```sh
helm repo add pg-helm-charts https://propertyguru.github.io/helm-charts
```

## List Charts available in repo
```sh
helm search repo pg-helm-charts
```

## Install Chart
```sh
helm install <release-name> <chart-name> -f <path-to-values.yaml> -n <namespace>
```
