{{/* https://github.com/qdm12/gluetun/wiki/Torguard */}}
{{- define "gluetun.torguard.openvpn.validation" -}}
  {{- $req := (list "openvpnUser" "openvpnPassword") -}}

  {{- $unsup := (list "serverRegions" "serverNames") -}}

  {{- include "gluetun.options.required" (dict "rootCtx" $ "options" $req) -}}
  {{- include "gluetun.unsupported.server.options" (dict "rootCtx" $ "options" $unsup) -}}
{{- end -}}

{{- define "gluetun.torguard.wireguard.validation" -}}
  {{- include "gluetun.unsupported.type" $ -}}
{{- end -}}