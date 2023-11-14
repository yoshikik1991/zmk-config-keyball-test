#!/bin/bash

ZMK_PATH=/workspaces/zmk/app
SHIELD_NAME=keyball44
BOARD_NAME=nice_nano_v2
OUTPUR_DIR=/workspaces/zmk-config/release
ZMK_CONFIG_DIR=/workspaces/zmk-config/config
OPTION="-p"


echo $ZMK_PATH
echo $SHIELD_NAME
echo $BOARD_NAME
cd $ZMK_PATH
west build $OPTION -d "build/${SHIELD_NAME}/right" -b $BOARD_NAME -- -DSHIELD="${SHIELD_NAME}_right" -DZMK_CONFIG="${ZMK_CONFIG_DIR}"
cp "${ZMK_PATH}/build/${SHIELD_NAME}/right/zephyr/zmk.uf2" "${OUTPUR_DIR}/right.uf2"
west build $OPTION -d "build/${SHIELD_NAME}/left" -b $BOARD_NAME -- -DSHIELD="${SHIELD_NAME}_left" -DZMK_CONFIG="${ZMK_CONFIG_DIR}"
cp "${ZMK_PATH}/build/${SHIELD_NAME}/left/zephyr/zmk.uf2" "${OUTPUR_DIR}/left.uf2"
echo $OUTPUR_DIR
