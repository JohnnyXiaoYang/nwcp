######################################################################
# Automatically generated by qmake (2.01a) ?? ??? 2 23:39:39 2010
######################################################################

TEMPLATE = app
TARGET = nwcp_test_prwlock
CONFIG += nwcp

include(../nwcp_example.pri)

SOURCES += test_prwlock.cxx

test.files      = ./*.pro ./*.h ./*.cxx ./*.cpp
test.path       = $$NWCP_INSTALL_DIR/test
INSTALLS       +=  test

