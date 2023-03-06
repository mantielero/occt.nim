import message_types
import ../tcollection/tcollection_types 
import ../standard/standard_types 
##  Copyright (c) 2020 OPEN CASCADE SAS
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

discard "forward decl of Message_Alert"
discard "forward decl of Message_AlertExtended"


proc undefinedMetricValue*(): cfloat {.cdecl, importcpp: "Message_AttributeMeter::UndefinedMetricValue(@)",
                                    header: "Message_AttributeMeter.hxx".}
proc newMessageAttributeMeter*(theName: TCollectionAsciiString = TCollectionAsciiString()): MessageAttributeMeter {.
    cdecl, constructor, importcpp: "Message_AttributeMeter(@)", header: "Message_AttributeMeter.hxx".}
proc hasMetric*(this: MessageAttributeMeter; theMetric: MessageMetricType): bool {.
    noSideEffect, cdecl, importcpp: "HasMetric", header: "Message_AttributeMeter.hxx".}
proc isMetricValid*(this: MessageAttributeMeter; theMetric: MessageMetricType): bool {.
    noSideEffect, cdecl, importcpp: "IsMetricValid", header: "Message_AttributeMeter.hxx".}
proc startValue*(this: MessageAttributeMeter; theMetric: MessageMetricType): cfloat {.
    noSideEffect, cdecl, importcpp: "StartValue", header: "Message_AttributeMeter.hxx".}
proc setStartValue*(this: var MessageAttributeMeter; theMetric: MessageMetricType;
                   theValue: cfloat) {.cdecl, importcpp: "SetStartValue",
                                     header: "Message_AttributeMeter.hxx".}
proc stopValue*(this: MessageAttributeMeter; theMetric: MessageMetricType): cfloat {.
    noSideEffect, cdecl, importcpp: "StopValue", header: "Message_AttributeMeter.hxx".}
proc setStopValue*(this: var MessageAttributeMeter; theMetric: MessageMetricType;
                  theValue: cfloat) {.cdecl, importcpp: "SetStopValue",
                                    header: "Message_AttributeMeter.hxx".}
proc startAlert*(theAlert: Handle[MessageAlertExtended]) {.cdecl,
    importcpp: "Message_AttributeMeter::StartAlert(@)", header: "Message_AttributeMeter.hxx".}
proc stopAlert*(theAlert: Handle[MessageAlertExtended]) {.cdecl,
    importcpp: "Message_AttributeMeter::StopAlert(@)", header: "Message_AttributeMeter.hxx".}
proc setAlertMetrics*(theAlert: Handle[MessageAlertExtended]; theStartValue: bool) {.
    cdecl, importcpp: "Message_AttributeMeter::SetAlertMetrics(@)", header: "Message_AttributeMeter.hxx".}
proc dumpJson*(this: MessageAttributeMeter; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "Message_AttributeMeter.hxx".}
