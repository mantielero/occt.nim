import ../standard/standard_types
import osd_types



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

## ! Set of Operating System Dependent (OSD) tools.



proc setSignal*(theSignalMode: OSD_SignalMode; theFloatingSignal: bool) {.cdecl,
    importcpp: "OSD::SetSignal(@)", header: "OSD.hxx".}
proc setSignal*(theFloatingSignal: bool = true) {.cdecl,
    importcpp: "OSD::SetSignal(@)", header: "OSD.hxx".}
proc setThreadLocalSignal*(theSignalMode: OSD_SignalMode; theFloatingSignal: bool) {.
    cdecl, importcpp: "OSD::SetThreadLocalSignal(@)", header: "OSD.hxx".}
proc setFloatingSignal*(theFloatingSignal: bool) {.cdecl,
    importcpp: "OSD::SetFloatingSignal(@)", header: "OSD.hxx".}
proc signalMode*(): OSD_SignalMode {.cdecl, importcpp: "OSD::SignalMode(@)",
                                  header: "OSD.hxx".}
proc toCatchFloatingSignals*(): bool {.cdecl, importcpp: "OSD::ToCatchFloatingSignals(@)",
                                    header: "OSD.hxx".}
proc secSleep*(theSeconds: cint) {.cdecl, importcpp: "OSD::SecSleep(@)",
                                header: "OSD.hxx".}
proc milliSecSleep*(theMilliseconds: cint) {.cdecl,
    importcpp: "OSD::MilliSecSleep(@)", header: "OSD.hxx".}
proc realToCString*(aReal: cfloat; aString: var StandardPCharacter): bool {.cdecl,
    importcpp: "OSD::RealToCString(@)", header: "OSD.hxx".}
proc cStringToReal*(aString: cstring; aReal: var cfloat): bool {.cdecl,
    importcpp: "OSD::CStringToReal(@)", header: "OSD.hxx".}
proc controlBreak*() {.cdecl, importcpp: "OSD::ControlBreak(@)", header: "OSD.hxx".}
proc signalStackTraceLength*(): cint {.cdecl, importcpp: "OSD::SignalStackTraceLength(@)",
                                    header: "OSD.hxx".}
proc setSignalStackTraceLength*(theLength: cint) {.cdecl,
    importcpp: "OSD::SetSignalStackTraceLength(@)", header: "OSD.hxx".}

