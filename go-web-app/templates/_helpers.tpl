{{/*
Expand the name of the chart.
*/}}
{{- define "go-web-app.name" -}}
go-web-app
{{- end }}

{{/*
Create a default fully qualified app name.
*/}}
{{- define "go-web-app.fullname" -}}
go-web-app
{{- end }}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "go-web-app.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "go-web-app.labels" -}}
app: go-web-app
{{- end }}

{{/*
Selector labels
*/}}
{{- define "go-web-app.selectorLabels" -}}
app: go-web-app
{{- end }}

{{/*
Create the name of the service account to use
*/}}
{{- define "go-web-app.serviceAccountName" -}}
{{- if .Values.serviceAccount.create }}
{{- default "go-web-app" .Values.serviceAccount.name }}
{{- else }}
{{- default "default" .Values.serviceAccount.name }}
{{- end }}
{{- end }}