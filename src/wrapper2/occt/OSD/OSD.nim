##  Copyright (c) 1992-1999 Matra Datavision
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

## ! Set of Operating Sytem Dependent (OSD) Tools

type
  Osd* {.importcpp: "OSD", header: "OSD.hxx", bycopy.} = object ## ! Sets or removes signal and FPE (floating-point exception) handlers.
                                                        ## ! OCCT signal handlers translate signals raised by C subsystem to C++
                                                        ## ! exceptions inheriting Standard_Failure.
                                                        ## !
                                                        ## ! ### Windows-specific notes
                                                        ## !
                                                        ## ! Compiled with MS VC++ sets 3 main handlers:
                                                        ## ! @li Signal handlers (via ::signal() functions) that translate system signals
                                                        ## ! (SIGSEGV, SIGFPE, SIGILL) into C++ exceptions (classes inheriting
                                                        ## ! Standard_Failure). They only be called if function ::raise() is called
                                                        ## ! with one of supported signal type set.
                                                        ## ! @li Exception handler OSD::WntHandler() (via
                                                        ## ::SetUnhandledExceptionFilter())
                                                        ## ! that will be used when user's code is compiled with /EHs option.
                                                        ## ! @li Structured exception (SE) translator (via _set_se_translator()) that
                                                        ## ! translates SE exceptions (aka asynchronous exceptions) into the
                                                        ## ! C++ exceptions inheriting Standard_Failure. This translator will be
                                                        ## ! used when user's code is compiled with /EHa option.
                                                        ## !
                                                        ## ! This approach ensures that regardless of the option the user chooses to
                                                        ## ! compile his code with (/EHs or /EHa), signals (or SE exceptions) will be
                                                        ## ! translated into Open CASCADE C++ exceptions.
                                                        ## !
                                                        ## ! MinGW should use SEH exception mode for signal handling to work.
                                                        ## !
                                                        ## ! ### Linux-specific notes
                                                        ## !
                                                        ## ! OSD::SetSignal() sets handlers (via ::sigaction()) for multiple signals
                                                        ## ! (SIGFPE, SIGSEGV, etc).
                                                        ## !
                                                        ## ! ### Common notes
                                                        ## !
                                                        ## ! If @a theFloatingSignal is TRUE then floating point exceptions will
                                                        ## ! generate SIGFPE in accordance with the mask
                                                        ## ! - Windows: _EM_INVALID | _EM_DENORMAL | _EM_ZERODIVIDE | _EM_OVERFLOW,
                                                        ## !            see _controlfp() system function.
                                                        ## ! - Linux:   FE_INVALID | FE_DIVBYZERO | FE_OVERFLOW,
                                                        ## !            see feenableexcept() system function.
                                                        ## !
                                                        ## ! If @a theFloatingSignal is FALSE then floating point calculations will gracefully
                                                        ## ! complete regardless of occurred exceptions (e.g. division by zero).
                                                        ## ! Otherwise the (thread-specific) FPE flags are set to raise signal if one of
                                                        ## ! floating-point exceptions (division by zero, overflow, or invalid operation) occurs.
                                                        ## !
                                                        ## ! The recommended approach is to call OSD::SetSignal() in the beginning of the
                                                        ## ! execution of the program, in function main() or its equivalent.
                                                        ## ! In multithreaded programs it is advisable to call OSD::SetSignal() or
                                                        ## !
                                                        ## OSD::SetThreadLocalSignal() with the same parameters in other threads where
                                                        ## ! OCCT is used, to ensure consistency of behavior.
                                                        ## !
                                                        ## ! Note that in order to handle signals as C++ exceptions on Linux and under
                                                        ## ! MinGW on Windows it is necessary to compile both OCCT and application with
                                                        ## ! OCC_CONVERT_SIGNALS macro, and use macro OCC_CATCH_SIGNALS within each try{}
                                                        ## ! block that has to catch this kind of exceptions.
                                                        ## !
                                                        ## ! Refer to documentation of
                                                        ## Standard_ErrorHandler.hxx for details.


proc setSignal*(theSignalMode: OSD_SignalMode; theFloatingSignal: StandardBoolean) {.
    importcpp: "OSD::SetSignal(@)", header: "OSD.hxx".}
proc setSignal*(theFloatingSignal: StandardBoolean = standardTrue) {.
    importcpp: "OSD::SetSignal(@)", header: "OSD.hxx".}
proc setThreadLocalSignal*(theSignalMode: OSD_SignalMode;
                          theFloatingSignal: StandardBoolean) {.
    importcpp: "OSD::SetThreadLocalSignal(@)", header: "OSD.hxx".}
proc setFloatingSignal*(theFloatingSignal: StandardBoolean) {.
    importcpp: "OSD::SetFloatingSignal(@)", header: "OSD.hxx".}
proc signalMode*(): OSD_SignalMode {.importcpp: "OSD::SignalMode(@)",
                                  header: "OSD.hxx".}
proc toCatchFloatingSignals*(): StandardBoolean {.
    importcpp: "OSD::ToCatchFloatingSignals(@)", header: "OSD.hxx".}
proc secSleep*(theSeconds: StandardInteger) {.importcpp: "OSD::SecSleep(@)",
    header: "OSD.hxx".}
proc milliSecSleep*(theMilliseconds: StandardInteger) {.
    importcpp: "OSD::MilliSecSleep(@)", header: "OSD.hxx".}
proc realToCString*(aReal: StandardReal; aString: var StandardPCharacter): StandardBoolean {.
    importcpp: "OSD::RealToCString(@)", header: "OSD.hxx".}
proc cStringToReal*(aString: StandardCString; aReal: var StandardReal): StandardBoolean {.
    importcpp: "OSD::CStringToReal(@)", header: "OSD.hxx".}
proc controlBreak*() {.importcpp: "OSD::ControlBreak(@)", header: "OSD.hxx".}

