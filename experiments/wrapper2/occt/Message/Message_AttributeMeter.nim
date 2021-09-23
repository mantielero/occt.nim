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

import
  Message_Attribute, Message_MetricType, ../NCollection/NCollection_IndexedDataMap

discard "forward decl of Message_Alert"
discard "forward decl of Message_AlertExtended"
type
  Message_AttributeMeter* {.importcpp: "Message_AttributeMeter",
                           header: "Message_AttributeMeter.hxx", bycopy.} = object of Message_Attribute ##
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


proc UndefinedMetricValue*(): Standard_Real {.
    importcpp: "Message_AttributeMeter::UndefinedMetricValue(@)",
    header: "Message_AttributeMeter.hxx".}
proc constructMessage_AttributeMeter*(theName: TCollection_AsciiString = TCollection_AsciiString()): Message_AttributeMeter {.
    constructor, importcpp: "Message_AttributeMeter(@)",
    header: "Message_AttributeMeter.hxx".}
proc HasMetric*(this: Message_AttributeMeter; theMetric: Message_MetricType): Standard_Boolean {.
    noSideEffect, importcpp: "HasMetric", header: "Message_AttributeMeter.hxx".}
proc IsMetricValid*(this: Message_AttributeMeter; theMetric: Message_MetricType): Standard_Boolean {.
    noSideEffect, importcpp: "IsMetricValid", header: "Message_AttributeMeter.hxx".}
proc StartValue*(this: Message_AttributeMeter; theMetric: Message_MetricType): Standard_Real {.
    noSideEffect, importcpp: "StartValue", header: "Message_AttributeMeter.hxx".}
proc SetStartValue*(this: var Message_AttributeMeter; theMetric: Message_MetricType;
                   theValue: Standard_Real) {.importcpp: "SetStartValue",
    header: "Message_AttributeMeter.hxx".}
proc StopValue*(this: Message_AttributeMeter; theMetric: Message_MetricType): Standard_Real {.
    noSideEffect, importcpp: "StopValue", header: "Message_AttributeMeter.hxx".}
proc SetStopValue*(this: var Message_AttributeMeter; theMetric: Message_MetricType;
                  theValue: Standard_Real) {.importcpp: "SetStopValue",
    header: "Message_AttributeMeter.hxx".}
proc StartAlert*(theAlert: handle[Message_AlertExtended]) {.
    importcpp: "Message_AttributeMeter::StartAlert(@)",
    header: "Message_AttributeMeter.hxx".}
proc StopAlert*(theAlert: handle[Message_AlertExtended]) {.
    importcpp: "Message_AttributeMeter::StopAlert(@)",
    header: "Message_AttributeMeter.hxx".}
proc SetAlertMetrics*(theAlert: handle[Message_AlertExtended];
                     theStartValue: Standard_Boolean) {.
    importcpp: "Message_AttributeMeter::SetAlertMetrics(@)",
    header: "Message_AttributeMeter.hxx".}
proc DumpJson*(this: Message_AttributeMeter; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "Message_AttributeMeter.hxx".}
type
  Message_AttributeMeterbase_type* = Message_Attribute

proc get_type_name*(): cstring {.importcpp: "Message_AttributeMeter::get_type_name(@)",
                              header: "Message_AttributeMeter.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Message_AttributeMeter::get_type_descriptor(@)",
    header: "Message_AttributeMeter.hxx".}
proc DynamicType*(this: Message_AttributeMeter): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "Message_AttributeMeter.hxx".}