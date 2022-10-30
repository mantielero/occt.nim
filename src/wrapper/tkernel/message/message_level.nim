import message_types
import ../tcollection/tcollection_types
import ../standard/standard_types

##  Copyright (c) 2019 OPEN CASCADE SAS
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

## ! This class is an instance of Sentry to create a level in a message report
## ! Constructor of the class add new (active) level in the report, destructor removes it
## ! While the level is active in the report, new alerts are added below the level root alert.
## !
## ! The first added alert is a root alert, other are added below the root alert
## !
## ! If alert has Message_AttributeMeter attribute, active metrics of the default report are stored in
## ! the attribute: start value of metric on adding alert, stop on adding another alert or closing (delete) the level
## ! in the report.
## !
## ! Processing of this class is implemented in Message_Report, it is used only inside it.
## ! Levels using should be only through using OCCT_ADD_MESSAGE_LEVEL_SENTRY only. No other code is required outside.



proc newMessageLevel*(theName: TCollectionAsciiString = TCollectionAsciiString()): MessageLevel {.
    cdecl, constructor, importcpp: "Message_Level(@)", header: "Message_Level.hxx".}
proc destroyMessageLevel*(this: var MessageLevel) {.cdecl,
    importcpp: "#.~Message_Level()", header: "Message_Level.hxx".}
proc rootAlert*(this: MessageLevel): Handle[MessageAlertExtended] {.noSideEffect,
    cdecl, importcpp: "RootAlert", header: "Message_Level.hxx".}
proc setRootAlert*(this: var MessageLevel; theAlert: Handle[MessageAlertExtended];
                  isRequiredToStart: bool) {.cdecl, importcpp: "SetRootAlert",
    header: "Message_Level.hxx".}
proc addAlert*(this: var MessageLevel; theGravity: MessageGravity;
              theAlert: Handle[MessageAlert]): bool {.cdecl, importcpp: "AddAlert",
    header: "Message_Level.hxx".}
## ! @def MESSAGE_NEW_LEVEL
## ! Creates a new level instance of Sentry. This row should be inserted before messages using in the method.
##  #define OCCT_ADD_MESSAGE_LEVEL_SENTRY(theMessage) \
##    Message_Level aLevel(theMessage);

