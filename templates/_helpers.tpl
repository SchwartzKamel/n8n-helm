{{/*
Return the name of the chart.
*/}}
{{- define "n8n.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end }}

{{/*
Return the fully qualified name of the chart, including the release name.
*/}}
{{- define "n8n.fullname" -}}
{{- printf "%s-%s" .Release.Name (include "n8n.name" .) | trunc 63 | trimSuffix "-" -}}
{{- end }}
