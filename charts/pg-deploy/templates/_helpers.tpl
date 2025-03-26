{{/*
Expand the name of the chart.
*/}}
{{- define "pg-deploy.name" -}}
{{- if hasPrefix "sandbox" .Values.env }}
{{- printf "%s-%s" .Values.name .Values.env | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- default .Chart.Name .Values.name | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- end }}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "pg-deploy.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "pg-deploy.labels" -}}
{{ include "pg-deploy.selectorLabels" . }}
{{- if not .Values.team }}
{{- fail "The 'team' label is required in values.yaml" }}
{{- end }}
team: {{ .Values.team }}
businessunit: {{ .Values.businessunit }}
{{- end }}


{{/*
Selector labels
*/}}
{{- define "pg-deploy.selectorLabels" -}}
app: {{ include "pg-deploy.name" . }}
{{- end }}

