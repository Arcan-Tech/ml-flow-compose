#!/bin/sh

# Check if the .htpasswd file exists, if not, create it
if [ ! -f /etc/nginx/.htpasswd ]; then
	# Install htpasswd if it's not installed (using alpine)
	apk add --no-cache apache2-utils
	htpasswd -cb /etc/nginx/.htpasswd ${ML_FLOW_AUTH_USERNAME} ${ML_FLOW_AUTH_PASSWORD}
else
	htpasswd -b /etc/nginx/.htpasswd ${ML_FLOW_AUTH_USERNAME} ${ML_FLOW_AUTH_PASSWORD}
fi
