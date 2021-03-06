dnl @synopsis CHECK_ZLIB()
dnl
dnl This macro searches for an installed zlib library. If nothing
dnl was specified when calling configure, it searches first in /usr/local
dnl and then in /usr. If the --with-zlib=DIR is specified, it will try
dnl to find it in DIR/include/zlib.h and DIR/lib/libz.a. If --without-zlib
dnl is specified, the library is not searched at all.
dnl
dnl If either the header file (zlib.h) or the library (libz) is not
dnl found, the configuration exits on error, asking for a valid
dnl zlib installation directory or --without-zlib.
dnl
dnl The macro defines the symbol HAVE_LIBZ if the library is found. You should
dnl use autoheader to include a definition for this symbol in a config.h
dnl file. Sample usage in a C/C++ source is as follows:
dnl
dnl   #ifdef HAVE_LIBZ
dnl   #include <zlib.h>
dnl   #endif /* HAVE_LIBZ */
dnl
dnl @version $Id: check_zlib.m4,v 1.2 2000/07/19 13:03:32 simons Exp $
dnl @author Loic Dachary <loic@senga.org>
dnl

AC_DEFUN([CHECK_ZLIB],
#
# Handle user hints
#
[AC_MSG_CHECKING(if zlib is wanted)
AC_ARG_WITH(zlib,
AC_HELP_STRING([--with-zlib=DIR],[root directory path of zlib installation defaults to /usr/local or /usr if not found in /usr/local]),
[if test "$withval" != no ; then
  AC_MSG_RESULT(yes)
  ZLIB_HOME="$withval"
else
  AC_MSG_RESULT(no)
fi], [
AC_MSG_RESULT(yes)
ZLIB_HOME=/usr/local
if test ! -f "${ZLIB_HOME}/include/zlib.h"
then
        ZLIB_HOME=/usr
fi
])

#
# Locate zlib, if wanted
#


if test -n "${ZLIB_HOME}"
then
        ZLIB_OLD_LDFLAGS=$LDFLAGS
        ZLIB_OLD_LIBS=$LIBS	
        ZLIB_OLD_CPPFLAGS=$LDFLAGS

        LDFLAGS="$LDFLAGS -L${ZLIB_HOME}/lib"
        CPPFLAGS="$CPPFLAGS -I${ZLIB_HOME}/include"
        CPPFLAGS="$CPPFLAGS -I${ZLIB_HOME}/include"	
        AC_LANG_SAVE
        AC_LANG_C
        AC_CHECK_LIB(z, inflateEnd, [zlib_cv_libz=yes], [zlib_cv_libz=no])
        AC_CHECK_HEADER(zlib.h, [zlib_cv_zlib_h=yes], [zlib_cv_zlib_h=no])
        AC_LANG_RESTORE
        if test "$zlib_cv_libz" = "yes" -a "$zlib_cv_zlib_h" = "yes"
        then
                #
                # If both library and header were found, use them
                #
                # AC_CHECK_LIB(z, inflateEnd)
	        # AC_MSG_CHECKING(zlib in ${ZLIB_HOME})
                # AC_MSG_RESULT(ok)
		ZLIB_CPPFLAGS="-I${ZLIB_HOME}/include"
                ZLIB_LDFLAGS="-L${ZLIB_HOME}/lib"
                ZLIB_LIBS="-lz"
                AC_SUBST(ZLIB_LDFLAGS)
                AC_SUBST(ZLIB_LIBS)
                AC_SUBST(ZLIB_CPPFLAGS)
        else
                #
                # If either header or library was not found, revert and bomb
                #
                AC_MSG_ERROR(either specify a valid zlib installation with --with-zlib=DIR or disable zlib usage with --without-zlib)
        fi
        LDFLAGS="$ZLIB_OLD_LDFLAGS"
        CPPFLAGS="$ZLIB_OLD_CPPFLAGS"
        LIBS="$ZLIB_OLD_LIBS"
fi

])
