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

import
  Message_Messenger, Message_Gravity, Message_MetricType,
  ../NCollection/NCollection_Vector, ../OSD/OSD_MemInfo,
  ../TCollection/TCollection_AsciiString

discard "forward decl of Message_Report"
type
  Message* {.importcpp: "Message", header: "Message.hxx", bycopy.} = object ## ! Defines default messenger for OCCT
                                                                    ## applications.
                                                                    ## ! This is global static instance of the messenger.
                                                                    ## ! By default, it contains single printer directed to std::cout.
                                                                    ## ! It can be customized according to the application needs.
                                                                    ## !
                                                                    ## ! The following syntax can be used to print messages:
                                                                    ## ! @begincode
                                                                    ## !
                                                                    ## Message::DefaultMessenger()->Send ("My Warning",
                                                                    ## Message_Warning);
                                                                    ## !
                                                                    ## Message::SendWarning ("My Warning"); // short-cut for
                                                                    ## Message_Warning
                                                                    ## !
                                                                    ## Message::SendWarning() << "My Warning with " << theCounter << " arguments";
                                                                    ## !
                                                                    ## Message::SendFail ("My Failure"); // short-cut for Message_Fail
                                                                    ## ! @endcode
                                                                    ## !@name Short-cuts to
                                                                    ## DefaultMessenger
                                                                    ## ! Returns the string filled with values of hours, minutes and seconds.
                                                                    ## ! Example:
                                                                    ## ! 1. (5, 12, 26.3345) returns
                                                                    ## "05h:12m:26.33s",
                                                                    ## ! 2. (0,  6, 34.496 ) returns
                                                                    ## "06m:34.50s",
                                                                    ## ! 3. (0,  0,  4.5   ) returns "4.50s"
                                                                    ## ! returns the only one instance of Report
                                                                    ## ! When theToCreate is true -
                                                                    ## automatically creates message report when not exist.


proc DefaultMessenger*(): handle[Message_Messenger] {.
    importcpp: "Message::DefaultMessenger(@)", header: "Message.hxx".}
proc Send*(theGravity: Message_Gravity): StreamBuffer {.
    importcpp: "Message::Send(@)", header: "Message.hxx".}
proc Send*(theMessage: TCollection_AsciiString; theGravity: Message_Gravity) {.
    importcpp: "Message::Send(@)", header: "Message.hxx".}
proc SendFail*(): StreamBuffer {.importcpp: "Message::SendFail(@)",
                              header: "Message.hxx".}
proc SendAlarm*(): StreamBuffer {.importcpp: "Message::SendAlarm(@)",
                               header: "Message.hxx".}
proc SendWarning*(): StreamBuffer {.importcpp: "Message::SendWarning(@)",
                                 header: "Message.hxx".}
proc SendInfo*(): StreamBuffer {.importcpp: "Message::SendInfo(@)",
                              header: "Message.hxx".}
proc SendTrace*(): StreamBuffer {.importcpp: "Message::SendTrace(@)",
                               header: "Message.hxx".}
proc SendFail*(theMessage: TCollection_AsciiString) {.
    importcpp: "Message::SendFail(@)", header: "Message.hxx".}
proc SendAlarm*(theMessage: TCollection_AsciiString) {.
    importcpp: "Message::SendAlarm(@)", header: "Message.hxx".}
proc SendWarning*(theMessage: TCollection_AsciiString) {.
    importcpp: "Message::SendWarning(@)", header: "Message.hxx".}
proc SendInfo*(theMessage: TCollection_AsciiString) {.
    importcpp: "Message::SendInfo(@)", header: "Message.hxx".}
proc SendTrace*(theMessage: TCollection_AsciiString) {.
    importcpp: "Message::SendTrace(@)", header: "Message.hxx".}
proc FillTime*(Hour: Standard_Integer; Minute: Standard_Integer;
              Second: Standard_Real): TCollection_AsciiString {.
    importcpp: "Message::FillTime(@)", header: "Message.hxx".}
proc DefaultReport*(theToCreate: Standard_Boolean = Standard_False): handle[
    Message_Report] {.importcpp: "Message::DefaultReport(@)", header: "Message.hxx".}
proc MetricFromString*(theString: Standard_CString; theType: var Message_MetricType): Standard_Boolean {.
    importcpp: "Message::MetricFromString(@)", header: "Message.hxx".}
proc MetricToString*(theType: Message_MetricType): Standard_CString {.
    importcpp: "Message::MetricToString(@)", header: "Message.hxx".}
proc MetricFromString*(theString: Standard_CString): Message_MetricType {.
    importcpp: "Message::MetricFromString(@)", header: "Message.hxx".}
proc ToOSDMetric*(theMetric: Message_MetricType; theMemInfo: var Counter): Standard_Boolean {.
    importcpp: "Message::ToOSDMetric(@)", header: "Message.hxx".}
proc ToMessageMetric*(theMemInfo: Counter; theMetric: var Message_MetricType): Standard_Boolean {.
    importcpp: "Message::ToMessageMetric(@)", header: "Message.hxx".}