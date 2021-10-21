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
type
  MessageAttributeMeter* {.importcpp: "Message_AttributeMeter",
                          header: "Message_AttributeMeter.hxx", bycopy.} = object of MessageAttribute ##
                                                                                               ## !
                                                                                               ## Returns
                                                                                               ## default
                                                                                               ## value
                                                                                               ## of
                                                                                               ## the
                                                                                               ## metric
                                                                                               ## when
                                                                                               ## it
                                                                                               ## is
                                                                                               ## not
                                                                                               ## defined
                                                                                               ##
                                                                                               ## !
                                                                                               ## @return
                                                                                               ## undefined
                                                                                               ## value
                                                                                               ##
                                                                                               ## !
                                                                                               ## Constructor
                                                                                               ## with
                                                                                               ## string
                                                                                               ## argument
                                                                                               ##
                                                                                               ## !
                                                                                               ## Sets
                                                                                               ## start
                                                                                               ## values
                                                                                               ## of
                                                                                               ## default
                                                                                               ## report
                                                                                               ## metrics
                                                                                               ## into
                                                                                               ## the
                                                                                               ## alert
                                                                                               ##
                                                                                               ## !
                                                                                               ## @param
                                                                                               ## theAlert
                                                                                               ## an
                                                                                               ## alert
    ## !< computed metrics


proc undefinedMetricValue*(): cfloat {.cdecl, importcpp: "Message_AttributeMeter::UndefinedMetricValue(@)",
                                    dynlib: tkernel.}
proc newMessageAttributeMeter*(theName: TCollectionAsciiString = TCollectionAsciiString()): MessageAttributeMeter {.
    cdecl, constructor, importcpp: "Message_AttributeMeter(@)", dynlib: tkernel.}
proc hasMetric*(this: MessageAttributeMeter; theMetric: MessageMetricType): bool {.
    noSideEffect, cdecl, importcpp: "HasMetric", dynlib: tkernel.}
proc isMetricValid*(this: MessageAttributeMeter; theMetric: MessageMetricType): bool {.
    noSideEffect, cdecl, importcpp: "IsMetricValid", dynlib: tkernel.}
proc startValue*(this: MessageAttributeMeter; theMetric: MessageMetricType): cfloat {.
    noSideEffect, cdecl, importcpp: "StartValue", dynlib: tkernel.}
proc setStartValue*(this: var MessageAttributeMeter; theMetric: MessageMetricType;
                   theValue: cfloat) {.cdecl, importcpp: "SetStartValue",
                                     dynlib: tkernel.}
proc stopValue*(this: MessageAttributeMeter; theMetric: MessageMetricType): cfloat {.
    noSideEffect, cdecl, importcpp: "StopValue", dynlib: tkernel.}
proc setStopValue*(this: var MessageAttributeMeter; theMetric: MessageMetricType;
                  theValue: cfloat) {.cdecl, importcpp: "SetStopValue",
                                    dynlib: tkernel.}
proc startAlert*(theAlert: Handle[MessageAlertExtended]) {.cdecl,
    importcpp: "Message_AttributeMeter::StartAlert(@)", dynlib: tkernel.}
proc stopAlert*(theAlert: Handle[MessageAlertExtended]) {.cdecl,
    importcpp: "Message_AttributeMeter::StopAlert(@)", dynlib: tkernel.}
proc setAlertMetrics*(theAlert: Handle[MessageAlertExtended]; theStartValue: bool) {.
    cdecl, importcpp: "Message_AttributeMeter::SetAlertMetrics(@)", dynlib: tkernel.}
proc dumpJson*(this: MessageAttributeMeter; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 dynlib: tkernel.}