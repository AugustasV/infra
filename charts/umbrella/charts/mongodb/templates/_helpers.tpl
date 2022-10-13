{{- define "nameOverride" -}}
  {{- if .Values.nameOverride -}}
    {{- .Values.nameOverride -}}
  {{- else -}}
    {{- .Release.Namespace -}}
  {{- end -}}
{{- end -}}
