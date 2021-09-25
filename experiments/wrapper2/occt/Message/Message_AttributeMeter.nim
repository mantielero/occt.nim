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


proc undefinedMetricValue*(): float {.importcpp: "Message_AttributeMeter::UndefinedMetricValue(@)",
                                   header: "Message_AttributeMeter.hxx".}
proc constructMessageAttributeMeter*(theName: TCollectionAsciiString = tCollectionAsciiString()): MessageAttributeMeter {.
    constructor, importcpp: "Message_AttributeMeter(@)",
    header: "Message_AttributeMeter.hxx".}
proc hasMetric*(this: MessageAttributeMeter; theMetric: MessageMetricType): bool {.
    noSideEffect, importcpp: "HasMetric", header: "Message_AttributeMeter.hxx".}
proc isMetricValid*(this: MessageAttributeMeter; theMetric: MessageMetricType): bool {.
    noSideEffect, importcpp: "IsMetricValid", header: "Message_AttributeMeter.hxx".}
proc startValue*(this: MessageAttributeMeter; theMetric: MessageMetricType): float {.
    noSideEffect, importcpp: "StartValue", header: "Message_AttributeMeter.hxx".}
proc setStartValue*(this: var MessageAttributeMeter; theMetric: MessageMetricType;
                   theValue: float) {.importcpp: "SetStartValue",
                                    header: "Message_AttributeMeter.hxx".}
proc stopValue*(this: MessageAttributeMeter; theMetric: MessageMetricType): float {.
    noSideEffect, importcpp: "StopValue", header: "Message_AttributeMeter.hxx".}
proc setStopValue*(this: var MessageAttributeMeter; theMetric: MessageMetricType;
                  theValue: float) {.importcpp: "SetStopValue",
                                   header: "Message_AttributeMeter.hxx".}
proc startAlert*(theAlert: Handle[MessageAlertExtended]) {.
    importcpp: "Message_AttributeMeter::StartAlert(@)",
    header: "Message_AttributeMeter.hxx".}
proc stopAlert*(theAlert: Handle[MessageAlertExtended]) {.
    importcpp: "Message_AttributeMeter::StopAlert(@)",
    header: "Message_AttributeMeter.hxx".}
proc setAlertMetrics*(theAlert: Handle[MessageAlertExtended]; theStartValue: bool) {.
    importcpp: "Message_AttributeMeter::SetAlertMetrics(@)",
    header: "Message_AttributeMeter.hxx".}
proc dumpJson*(this: MessageAttributeMeter; theOStream: var StandardOStream;
              theDepth: int = -1) {.noSideEffect, importcpp: "DumpJson",
                                header: "Message_AttributeMeter.hxx".}
type
  MessageAttributeMeterbaseType* = MessageAttribute

proc getTypeName*(): cstring {.importcpp: "Message_AttributeMeter::get_type_name(@)",
                            header: "Message_AttributeMeter.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Message_AttributeMeter::get_type_descriptor(@)",
    header: "Message_AttributeMeter.hxx".}
proc dynamicType*(this: MessageAttributeMeter): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Message_AttributeMeter.hxx".}
