import message_types
import ../standard/standard_types
import ../tcollection/tcollection_types
##  Created on: 1999-07-29
##  Created by: Roman LYGIN
##  Copyright (c) 1999 Matra Datavision
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

discard "forward decl of Message_Report"


proc defaultMessenger*(): Handle[MessageMessenger] {.cdecl,
    importcpp: "Message::DefaultMessenger(@)", header: "Message.hxx".}
proc send*(theGravity: MessageGravity): StreamBuffer {.cdecl,
    importcpp: "Message::Send(@)", header: "Message.hxx".}
proc send*(theMessage: TCollectionAsciiString; theGravity: MessageGravity) {.cdecl,
    importcpp: "Message::Send(@)", header: "Message.hxx".}
proc sendFail*(): StreamBuffer {.cdecl, importcpp: "Message::SendFail(@)",
                              header: "Message.hxx".}
proc sendAlarm*(): StreamBuffer {.cdecl, importcpp: "Message::SendAlarm(@)",
                               header: "Message.hxx".}
proc sendWarning*(): StreamBuffer {.cdecl, importcpp: "Message::SendWarning(@)",
                                 header: "Message.hxx".}
proc sendInfo*(): StreamBuffer {.cdecl, importcpp: "Message::SendInfo(@)",
                              header: "Message.hxx".}
proc sendTrace*(): StreamBuffer {.cdecl, importcpp: "Message::SendTrace(@)",
                               header: "Message.hxx".}
proc sendFail*(theMessage: TCollectionAsciiString) {.cdecl,
    importcpp: "Message::SendFail(@)", header: "Message.hxx".}
proc sendAlarm*(theMessage: TCollectionAsciiString) {.cdecl,
    importcpp: "Message::SendAlarm(@)", header: "Message.hxx".}
proc sendWarning*(theMessage: TCollectionAsciiString) {.cdecl,
    importcpp: "Message::SendWarning(@)", header: "Message.hxx".}
proc sendInfo*(theMessage: TCollectionAsciiString) {.cdecl,
    importcpp: "Message::SendInfo(@)", header: "Message.hxx".}
proc sendTrace*(theMessage: TCollectionAsciiString) {.cdecl,
    importcpp: "Message::SendTrace(@)", header: "Message.hxx".}
proc fillTime*(hour: cint; minute: cint; second: cfloat): TCollectionAsciiString {.
    cdecl, importcpp: "Message::FillTime(@)", header: "Message.hxx".}
proc defaultReport*(theToCreate: bool = false): Handle[MessageReport] {.cdecl,
    importcpp: "Message::DefaultReport(@)", header: "Message.hxx".}
proc metricFromString*(theString: cstring; theType: var MessageMetricType): bool {.
    cdecl, importcpp: "Message::MetricFromString(@)", header: "Message.hxx".}
proc metricToString*(theType: MessageMetricType): cstring {.cdecl,
    importcpp: "Message::MetricToString(@)", header: "Message.hxx".}
proc metricFromString*(theString: cstring): MessageMetricType {.cdecl,
    importcpp: "Message::MetricFromString(@)", header: "Message.hxx".}
proc toOSDMetric*(theMetric: MessageMetricType; theMemInfo: var Counter): bool {.cdecl,
    importcpp: "Message::ToOSDMetric(@)", header: "Message.hxx".}
proc toMessageMetric*(theMemInfo: Counter; theMetric: var MessageMetricType): bool {.
    cdecl, importcpp: "Message::ToMessageMetric(@)", header: "Message.hxx".}
