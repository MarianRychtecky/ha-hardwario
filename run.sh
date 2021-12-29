#!/usr/bin/with-contenv bashio
set -e

MQTT_USERNAME=$(bashio::config 'mqtt_username')
MQTT_PASSWORD=$(bashio::config 'mqtt_password')
MQTT_HOST=$(bashio::config 'mqtt_host')
MQTT_HOST_PORT=$(bashio::config 'mqtt_host_port')
USB_PORT=$(bashio::config 'usb_port')

bashio::log.info "Running bcg on ${USB_PORT}. Connecting to ${MQTT_HOST} on port ${MQTT_HOST_PORT} using username ${MQTT_USERNAME} ..."

bcg -H ${MQTT_HOST} -P ${MQTT_HOST_PORT} --mqtt-username ${MQTT_USERNAME} --mqtt-password ${MQTT_PASSWORD} -d ${USB_PORT} 
