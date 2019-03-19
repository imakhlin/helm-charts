CREATE DATABASE IF NOT EXISTS {{ .Values.db.name }};
CREATE USER IF NOT EXISTS '{{ .Values.db.user }}'@'{{ .Values.db.remoteAccessHost }}' IDENTIFIED BY '{{ .Values.db.password }}';

REVOKE ALL PRIVILEGES, GRANT OPTION FROM '{{ .Values.db.user }}'@'{{ .Values.db.remoteAccessHost }}';
GRANT ALL PRIVILEGES ON {{ .Values.db.name }}.* TO '{{ .Values.db.user }}'@'{{ .Values.db.remoteAccessHost }}';
FLUSH PRIVILEGES;
