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

## !!!Ignored construct:  # _Message_Level_HeaderFile [NewLine] # _Message_Level_HeaderFile [NewLine] # Message.hxx [NewLine] # Message_AlertExtended.hxx [NewLine] # Message_Gravity.hxx [NewLine] # Message_Messenger.hxx [NewLine] # Message_MetricType.hxx [NewLine] # ../NCollection/NCollection_DataMap.hxx [NewLine] # ../Standard/Standard.hxx [NewLine] ! This class is an instance of Sentry to create a level in a message report
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
## ! Levels using should be only through using OCCT_ADD_MESSAGE_LEVEL_SENTRY only. No other code is required outside. class Message_Level { public : ! Constructor.
## ! One string key is used for all alert meters.
## ! The perf meter is not started automatically, it will be done in AddAlert() method Message_Level ( const TCollection_AsciiString & theName = TCollection_AsciiString ( ) ) ; ! Assures stopping upon destruction ~ Message_Level ( ) ; ! Returns root alert of the level
## ! @return alert instance or NULL const opencascade :: handle < Message_AlertExtended > [end of template] & RootAlert ( ) const { return myRootAlert ; } ! Sets the root alert. Starts collects alert metrics if active.
## ! @param theAlert an alert void SetRootAlert ( const opencascade :: handle < Message_AlertExtended > [end of template] & theAlert , const Standard_Boolean isRequiredToStart ) ; ! Adds new alert on the level. Stops the last alert metric, appends the alert and starts the alert metrics collecting.
## ! Sets root alert beforehand this method using, if the root is NULL, it does nothing.
## ! @param theGravity an alert gravity
## ! @param theAlert an alert
## ! @return true if alert is added Standard_Boolean AddAlert ( const Message_Gravity theGravity , const opencascade :: handle < Message_Alert > [end of template] & theAlert ) ; private : ! Remove the current level from the report. It stops metric collecting for the last and the root alerts. void remove ( ) ; private : opencascade :: handle < Message_AlertExtended > [end of template] myRootAlert ; !< root alert opencascade :: handle < Message_AlertExtended > [end of template] myLastAlert ; !< last added alert on the root alert } ;
## Error: did not expect [NewLine]!!!

## ! @def MESSAGE_NEW_LEVEL
## ! Creates a new level instance of Sentry. This row should be inserted before messages using in the method.

template OCCT_ADD_MESSAGE_LEVEL_SENTRY*(theMessage: untyped): untyped =
  constructMessage_Level

aLevel(theMessage)
## !!!Ignored construct:  [NewLine] #  _Message_Level_HeaderFile [NewLine]
## Error: did not expect [NewLine]!!!