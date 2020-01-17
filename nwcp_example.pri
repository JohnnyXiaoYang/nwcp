 
NWCP_INSTALL_DIR = $$(NWCP_ROOT)
QT     -= core gui
CONFIG -= qt
CONFIG -= app_bundle

CONFIG += warn_on

include($${PWD}/nwcp_variables.pri)

contains(TEMPLATE, app) {
    CONFIG += console
}

contains(TEMPLATE, lib) {
    CONFIG += dll plugin
}

exists($${PWD}/nwcp_build.pri){
    isEmpty(NWCP_INSTALL_DIR) {
        NWCP_INSTALL_DIR = $$PWD/../nwDeployed
        message("NWCP_INSTALL = $${NWCP_INSTALL_DIR} (export NWCP_ROOT to change it)" )
    }
    target.path    = $$NWCP_INSTALL_DIR/lib
    INSTALLS       = target
}

include($$PWD/../nwDeployed/nwDeployed.pri)

