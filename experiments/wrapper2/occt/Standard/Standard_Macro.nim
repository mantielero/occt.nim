##  Copyright (c) 1998-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
##
##  This file is part of Open CASCADE Technology software library.
##
##  This library is free software; you can redistribute it and/or modify it under
##  the terms of the GNU Lesser General Public License version 2.1 as published
##  by the Free Software Foundation, with special exception defined in the file
##  OCCT_LGPL_EXCEPTION.txt. Consult the file LICENSE_LGPL_21.txt included in OCCT
##  distribution for complete text of the license and disclaimer of any warranty.
##
##  Alternatively, this file may be used under the terms of Open CASCADE
##  commercial license or contractual agreement.
## ! @file
## ! This file is intended to be the first file included to any
## ! Open CASCADE source. It defines platform-specific pre-processor
## ! macros necessary for correct compilation of Open CASCADE code.

## !!!Ignored construct:  # _Standard_Macro_HeaderFile [NewLine] # _Standard_Macro_HeaderFile [NewLine] ! @def Standard_OVERRIDE
## ! Should be used in declarations of virtual methods overriden in the
## ! derived classes, to cause compilation error in the case if that virtual
## ! function disappears or changes its signature in the base class.
## !
## ! Expands to C++11 keyword "override" on compilers that are known to
## ! suppot it; empty in other cases. # defined ( __cplusplus ) && ( __cplusplus >= 201100L ) [NewLine]  part of C++11 standard # override [NewLine] # defined ( _MSC_VER ) && ( _MSC_VER >= 1700 ) [NewLine]  MSVC extension since VS2012 # override [NewLine] # [NewLine] # [NewLine] # [NewLine] ! @def Standard_FALLTHROUGH
## ! Should be used in a switch statement immediately before a case label,
## ! if code associated with the previous case label may fall through to that
## ! next label (i.e. does not end with "break" or "return" etc.).
## ! This macro indicates that the fall through is intentional and should not be
## ! diagnosed by a compiler that warns on fallthrough.
## !
## ! Expands to C++17 attribute statement "[[fallthrough]];" on compilers that
## ! declare support of C++17, or to "__attribute__((fallthrough));" on
## ! GCC 7+. # defined ( __cplusplus ) && ( __cplusplus >= 201703L ) [NewLine]  part of C++17 standard # Standard_FALLTHROUGH fallthrough ;
## Error: identifier expected, but got: [NewLine]!!!

## !!!Ignored construct:  [NewLine] # defined ( __GNUC__ ) && ( __GNUC__ >= 7 ) [NewLine]  gcc 7+ # Standard_FALLTHROUGH __attribute__ ( ( fallthrough ) ) ;
## Error: did not expect [NewLine]!!!

## !!!Ignored construct:  [NewLine] # [NewLine] # Standard_FALLTHROUGH [NewLine] # [NewLine] ! @def Standard_NODISCARD
## ! This attribute may appear in a function declaration,
## ! enumeration declaration or class declaration. It tells the compiler to
## ! issue a warning, if a return value marked by that attribute is discarded.
## !
## ! Expands to C++17 attribute statement "[[nodiscard]]" on compilers that
## ! declare support of this attribute, or equivalent attribute on GCC. # defined ( __has_cpp_attribute ) [NewLine] # __has_cpp_attribute ( nodiscard ) [NewLine] # nodiscard [NewLine] # [NewLine] # [NewLine] # [NewLine] # defined ( __GNUC__ ) && ! defined ( INTEL_COMPILER ) [NewLine]  According to available documentation, GCC-style __attribute__ ((warn_unused_result))
##  should be available in GCC since version 3.4, and in CLang since 3.9;
##  Intel compiler does not seem to support this # __attribute__ ( ( warn_unused_result ) ) [NewLine] # [NewLine] # [NewLine] # [NewLine] ! @def Standard_UNUSED
## ! Macro for marking variables / functions as possibly unused
## ! so that compiler will not emit redundant "unused" warnings.
## !
## ! Expands to "__attribute__((unused))" on GCC and CLang. # defined ( __GNUC__ ) || defined ( __clang__ ) [NewLine] # Standard_UNUSED __attribute__ ( ( unused ) ) [NewLine] # [NewLine] # Standard_UNUSED [NewLine] # [NewLine] ! @def Standard_THREADLOCAL
## ! Define Standard_THREADLOCAL modifier as C++11 thread_local keyword where it is available. # defined ( __clang__ ) [NewLine]  CLang version: standard CLang > 3.3 or XCode >= 8 (but excluding 32-bit ARM)
##  Note: this has to be in separate #if to avoid failure of preprocessor on other platforms # __has_feature ( cxx_thread_local ) [NewLine] # Standard_THREADLOCAL thread_local [NewLine] # [NewLine] # defined ( __INTEL_COMPILER ) [NewLine] # ( defined ( _MSC_VER ) && _MSC_VER >= 1900 && __INTEL_COMPILER > 1400 ) [NewLine]  requires msvcrt vc14+ (Visual Studio 2015+) # Standard_THREADLOCAL thread_local [NewLine] # ( ! defined ( _MSC_VER ) && __INTEL_COMPILER > 1500 ) [NewLine] # Standard_THREADLOCAL thread_local [NewLine] # [NewLine] # ( defined ( _MSC_VER ) && _MSC_VER >= 1900 ) [NewLine]  msvcrt coming with vc14+ (VS2015+) # Standard_THREADLOCAL thread_local [NewLine] # ( defined ( __GNUC__ ) && ( __GNUC__ > 4 || ( __GNUC__ == 4 && __GNUC_MINOR__ >= 8 ) ) ) [NewLine]  GCC >= 4.8 # Standard_THREADLOCAL thread_local [NewLine] # [NewLine] # Standard_THREADLOCAL [NewLine] # Standard_THREADLOCAL [NewLine] # [NewLine] ! @def Standard_DEPRECATED("message")
## ! Can be used in declaration of a method or a class to mark it as deprecated.
## ! Use of such method or class will cause compiler warning (if supported by
## ! compiler and unless disabled).
## ! If macro OCCT_NO_DEPRECATED is defined, Standard_DEPRECATED is defined empty. # OCCT_NO_DEPRECATED [NewLine] # Standard_DEPRECATED ( theMsg ) [NewLine] # [NewLine] # defined ( _MSC_VER ) [NewLine] # Standard_DEPRECATED ( theMsg ) __declspec ( deprecated ( theMsg ) ) [NewLine] # defined ( __GNUC__ ) && ( __GNUC__ > 4 || ( __GNUC__ == 4 && __GNUC_MINOR__ >= 5 ) || defined ( __clang__ ) ) [NewLine] # Standard_DEPRECATED ( theMsg ) __attribute__ ( ( deprecated ( theMsg ) ) ) [NewLine] # defined ( __GNUC__ ) && ( __GNUC__ > 3 || ( __GNUC__ == 3 && __GNUC_MINOR__ >= 1 ) ) [NewLine] # Standard_DEPRECATED ( theMsg ) __attribute__ ( ( deprecated ) ) [NewLine] # [NewLine] # Standard_DEPRECATED ( theMsg ) [NewLine] # [NewLine] # [NewLine] ! @def Standard_DISABLE_DEPRECATION_WARNINGS
## ! Disables warnings on use of deprecated features (see Standard_DEPRECATED),
## ! from the current point till appearance of Standard_ENABLE_DEPRECATION_WARNINGS macro.
## ! This is useful for sections of code kept for backward compatibility and scheduled for removal.
## !
## ! @def Standard_ENABLE_DEPRECATION_WARNINGS
## ! Enables warnings on use of deprecated features previously disabled by
## ! Standard_DISABLE_DEPRECATION_WARNINGS. # defined ( __ICL ) || defined ( __INTEL_COMPILER ) [NewLine] # Standard_DISABLE_DEPRECATION_WARNINGS __pragma ( warning ( push ) ) __pragma ( warning ( disable : 1478 ) ) [NewLine] # Standard_ENABLE_DEPRECATION_WARNINGS __pragma ( warning ( pop ) ) [NewLine] # ( defined ( __GNUC__ ) && __GNUC__ > 4 || ( __GNUC__ == 4 && __GNUC_MINOR__ >= 6 ) ) || defined ( __clang__ ) [NewLine]  available since at least gcc 4.2 (maybe earlier), however only gcc 4.6+ supports this pragma inside the function body
##  CLang also supports this gcc syntax (in addition to "clang diagnostic ignored") # Standard_DISABLE_DEPRECATION_WARNINGS _Pragma ( GCC diagnostic ignored "-Wdeprecated-declarations" ) [NewLine] # Standard_ENABLE_DEPRECATION_WARNINGS _Pragma ( GCC diagnostic warning "-Wdeprecated-declarations" ) [NewLine] # defined ( _MSC_VER ) [NewLine] # Standard_DISABLE_DEPRECATION_WARNINGS __pragma ( warning ( push ) ) __pragma ( warning ( disable : 4996 ) ) [NewLine] # Standard_ENABLE_DEPRECATION_WARNINGS __pragma ( warning ( pop ) ) [NewLine] # [NewLine] # Standard_DISABLE_DEPRECATION_WARNINGS [NewLine] # Standard_ENABLE_DEPRECATION_WARNINGS [NewLine] # [NewLine] ! @def OCCT_NO_RVALUE_REFERENCE
## ! Disables methods and constructors that use rvalue references
## ! (C++11 move semantics) not supported by obsolete compilers. # ( defined ( _MSC_VER ) && ( _MSC_VER < 1600 ) ) [NewLine] # OCCT_NO_RVALUE_REFERENCE [NewLine] # [NewLine] # _WIN32 [NewLine]  We must be careful including windows.h: it is really poisonous stuff!
##  The most annoying are #defines of many identifiers that you could use in
##  normal code without knowing that Windows has its own knowledge of them...
##  So lets protect ourselves by switching OFF as much as possible of this in advance.
##  If someone needs more from windows.h, he is encouraged to #undef these symbols
##  or include windows.h prior to any OCCT stuff.
##  Note that we define each symbol to itself, so that it still can be used
##  e.g. as name of variable, method etc. # WIN32_LEAN_AND_MEAN [NewLine] # WIN32_LEAN_AND_MEAN  exclude extra Windows stuff [NewLine] # [NewLine] # NOMINMAX [NewLine] # NOMINMAX NOMINMAX  avoid #define min() and max() [NewLine] # [NewLine] # NOMSG [NewLine] # NOMSG NOMSG  avoid #define SendMessage etc. [NewLine] # [NewLine] # NODRAWTEXT [NewLine] # NODRAWTEXT NODRAWTEXT  avoid #define DrawText etc. [NewLine] # [NewLine] # NONLS [NewLine] # NONLS NONLS  avoid #define CompareString etc. [NewLine] # [NewLine] # NOGDI [NewLine] # NOGDI NOGDI  avoid #define SetPrinter (winspool.h) etc. [NewLine] # [NewLine] # NOSERVICE [NewLine] # NOSERVICE NOSERVICE [NewLine] # [NewLine] # NOKERNEL [NewLine] # NOKERNEL NOKERNEL [NewLine] # [NewLine] # NOUSER [NewLine] # NOUSER NOUSER [NewLine] # [NewLine] # NOMCX [NewLine] # NOMCX NOMCX [NewLine] # [NewLine] # NOIME [NewLine] # NOIME NOIME [NewLine] # [NewLine] # [NewLine] ! @def Standard_EXPORT
## ! This macro should be used in declarations of public methods
## ! to ensure that they are exported from DLL on Windows and thus
## ! can be called from other (dependent) libraries or applications.
## !
## ! If macro OCCT_STATIC_BUILD is defined, then Standard_EXPORT
## ! is set to empty. # defined ( _WIN32 ) && ! defined ( OCCT_STATIC_BUILD ) && ! defined ( HAVE_NO_DLL ) [NewLine] ======================================================
##  Windows-specific definitions
## ====================================================== # [NewLine] # __declspec ( dllexport ) [NewLine]  For global variables : # Standard_EXPORTEXTERN __declspec ( dllexport ) extern [NewLine] # Standard_EXPORTEXTERNC extern C __declspec ( dllexport ) [NewLine] #  Standard_EXPORT [NewLine] # Standard_IMPORT [NewLine] # Standard_IMPORT __declspec ( dllimport ) extern [NewLine] # Standard_IMPORTC extern C __declspec ( dllimport ) [NewLine] #  Standard_IMPORT [NewLine] #  UNIX [NewLine] ======================================================
##  UNIX / static library definitions
## ====================================================== # [NewLine] # [NewLine]  For global variables : # Standard_EXPORTEXTERN extern [NewLine] # Standard_EXPORTEXTERNC extern C [NewLine] #  Standard_EXPORT [NewLine] # Standard_IMPORT [NewLine] # Standard_IMPORT extern [NewLine] # Standard_IMPORTC extern C [NewLine] #  Standard_IMPORT [NewLine]  Compatibility with old SUN compilers  This preprocessor directive is a kludge to get around
##  a bug in the Sun Workshop 5.0 compiler, it keeps the
##  /usr/include/memory.h file from being #included
##  with an incompatible extern "C" definition of memchr
##  October 18, 2000  <rboehne@ricardo-us.com> # __SUNPRO_CC_COMPAT == 5 [NewLine] # _MEMORY_H [NewLine] # [NewLine] #  _WIN32 [NewLine] ! @def OCCT_UWP
## ! This macro is defined on Windows platform in the case if the code
## ! is being compiled for UWP (Universal Windows Platform). # defined ( WINAPI_FAMILY ) && WINAPI_FAMILY == WINAPI_FAMILY_APP [NewLine] # OCCT_UWP [NewLine] # [NewLine] # OCCT_UWP [NewLine] # OCCT_UWP [NewLine] # [NewLine] # [NewLine] # [NewLine]
## Error: did not expect [NewLine]!!!
