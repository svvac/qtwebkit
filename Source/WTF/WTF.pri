# -------------------------------------------------------------------
# This file contains shared rules used both when building WTF itself
# and for targets that depend in some way on WTF.
#
# See 'Tools/qmake/README' for an overview of the build system
# -------------------------------------------------------------------

# All external modules should include WTF headers by prefixing with "wtf" (#include <wtf/some/thing.h>).
INCLUDEPATH += $$PWD

mac {
    # Mac OS does ship libicu but not the associated header files.
    # Therefore WebKit provides adequate header files.
    INCLUDEPATH = $${ROOT_WEBKIT_DIR}/Source/WTF/icu $$INCLUDEPATH
    LIBS += -licucore
} else:!use?(wchar_unicode): {
    win32 {
        CONFIG(static, static|shared) {
            CONFIG(debug, debug|release) {
                LIBS += -lsicuind -lsicuucd -lsicudtd
            } else {
                LIBS += -lsicuin -lsicuuc -lsicudt
            }
        } else {
            LIBS += -licuin -licuuc -licudt
        }
    }
    else:!contains(QT_CONFIG,no-pkg-config):packagesExist("icu-i18n"): PKGCONFIG *= icu-i18n
    else: LIBS += -licui18n -licuuc -licudata
}

use?(GLIB) {
    PKGCONFIG *= glib-2.0 gio-2.0
}

win32-* {
    LIBS += -lwinmm
    LIBS += -lgdi32
}

mac {
    LIBS += -framework AppKit
}
