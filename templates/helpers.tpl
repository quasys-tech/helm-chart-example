# CONFIGMAP TEST
{{- define "helpers.list-env-variables-cm-test"}}
{{- $name  := .Values.name -}}
{{- $env  := .Values.environment -}}
{{- range $key, $val := .Values.envVar.configmap.test }}
- name: {{ $key }}
  valueFrom:
    configMapKeyRef:
      name: cm-{{ $name }}-{{ $env }}
      key: {{ $key }}
{{- end }}
{{- end }}

# SECRET TEST
{{- define "helpers.list-env-variables-secret-test" }}
{{- $name  := .Values.name -}}
{{- $env  := .Values.environment -}}
{{- range $key, $val := .Values.envVar.secret.test }}
- name: {{ $key }}
  valueFrom:
    secretKeyRef:
      name: sec-{{ $name }}-{{ $env }}
      key: {{ $key }}
{{- end }}
{{- end }}

# CONFIGMAP uat
{{- define "helpers.list-env-variables-cm-uat"}}
{{- $name  := .Values.name -}}
{{- $env  := .Values.environment -}}
{{- range $key, $val := .Values.envVar.configmap.uat }}
- name: {{ $key }}
  valueFrom:
    configMapKeyRef:
      name: cm-{{ $name }}-{{ $env }}
      key: {{ $key }}
{{- end }}
{{- end }}

# SECRET uat
{{- define "helpers.list-env-variables-secret-uat" }}
{{- $name  := .Values.name -}}
{{- $env  := .Values.environment -}}
{{- range $key, $val := .Values.envVar.secret.uat }}
- name: {{ $key }}
  valueFrom:
    secretKeyRef:
      name: sec-{{ $name }}-{{ $env }}
      key: {{ $key }}
{{- end }}
{{- end }}

# CONFIGMAP PROD
{{- define "helpers.list-env-variables-cm-prod"}}
{{- $name  := .Values.name -}}
{{- $env  := .Values.environment -}}
{{- range $key, $val := .Values.envVar.configmap.prod }}
- name: {{ $key }}
  valueFrom:
    configMapKeyRef:
      name: cm-{{ $name }}-{{ $env }}
      key: {{ $key }}
{{- end }}
{{- end }}

# SECRET PROD
{{- define "helpers.list-env-variables-secret-prod" }}
{{- $name  := .Values.name -}}
{{- $env  := .Values.environment -}}
{{- range $key, $val := .Values.envVar.secret.prod }}
- name: {{ $key }}
  valueFrom:
    secretKeyRef:
      name: sec-{{ $name }}-{{ $env }}
      key: {{ $key }}
{{- end }}
{{- end }}
