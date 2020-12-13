#!/usr/bin/with-contenv bashio
# ==============================================================================

declare CONFIG
declare incomplete_bool
declare download_dir
declare incomplete_dir

if ! bashio::fs.directory_exists '/share/transmission'; then
  mkdir '/share/transmission'
fi

if ! bashio::fs.file_exists '/share/transmission/settings.json'; then
  echo "{}" > /share/transmission/settings.json
fi

CONFIG=$(</share/transmission/settings.json)

download_dir=$(bashio::config 'download_dir')
incomplete_dir=$(bashio::config 'incomplete_dir')
if incomplete_dir=""; then
  incomplete_bool=false ; else
  incomplete_bool=true
fi

# Defaults
CONFIG=$(bashio::jq "${CONFIG}" ".\"incomplete-dir\"=\"${incomplete_dir}\"")
CONFIG=$(bashio::jq "${CONFIG}" ".\"download-dir\"=\"${download_dir}\"")
CONFIG=$(bashio::jq "${CONFIG}" ".\"incomplete-dir-enabled\"=${incomplete_bool}")
CONFIG=$(bashio::jq "${CONFIG}" ".\"rpc-whitelist-enabled\"=false")
CONFIG=$(bashio::jq "${CONFIG}" ".\"rpc-host-whitelist-enabled\"=false")
CONFIG=$(bashio::jq "${CONFIG}" ".\"bind-address-ipv4\"=\"0.0.0.0\"")

echo "${CONFIG}" > /share/transmission/settings.json
