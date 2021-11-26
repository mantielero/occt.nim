##  Created on: 2002-02-20
##  Created by: Andrey BETENEV
##  Copyright (c) 2002-2014 OPEN CASCADE SAS
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

discard "forward decl of Message_ProgressIndicator"
type
  HandleC1C1* = Handle[MessageProgressIndicator]

discard "forward decl of Message_ProgressRange"
discard "forward decl of Message_ProgressScope"
type
  MessageProgressIndicator* {.importcpp: "Message_ProgressIndicator",
                             header: "Message_ProgressIndicator.hxx", bycopy.} = object of StandardTransient ## !@name Initialization of progress indication
                                                                                                      ## ! Resets the indicator to zero, calls Reset(), and returns the range.
                                                                                                      ## ! This range refers to the scope that has no name and is initialized
                                                                                                      ## ! with max value 1 and step 1.
                                                                                                      ## ! Use this method to get the top level range for progress indication.
                                                                                                      ## !@name Virtual methods to be defined by descendant.
                                                                                                      ## ! Should return True if user has sent a break signal.
                                                                                                      ## !
                                                                                                      ## ! This method can be called concurrently, thus implementation should
                                                                                                      ## ! be thread-safe. It should not call Show() or Position() to
                                                                                                      ## ! avoid possible data races. The method should return as soon
                                                                                                      ## ! as possible to avoid delaying the calling algorithm.
                                                                                                      ## !
                                                                                                      ## ! Default implementation returns False.
                                                                                                      ## !@name Auxiliary methods
                                                                                                      ## ! Returns total progress position ranged from 0 to 1.
                                                                                                      ## ! Should not be called concurrently while the progress is advancing,
                                                                                                      ## ! except from implementation of method Show().
                                                                                                      ## ! Constructor
                                                                                                      ## ! Increment the progress value by the specified step,
                                                                                                      ## ! then calls Show() to update presentation.
                                                                                                      ## ! The parameter theScope is reference to the caller object;
                                                                                                      ## ! it is passed to Show() where can be used to track context of the process.
    ## !< Total progress position ranged from 0 to 1
    ## !< Protection of myPosition from concurrent increment
    ## !< The root progress scope

  MessageProgressIndicatorbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "Message_ProgressIndicator::get_type_name(@)",
                            header: "Message_ProgressIndicator.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Message_ProgressIndicator::get_type_descriptor(@)",
    header: "Message_ProgressIndicator.hxx".}
proc dynamicType*(this: MessageProgressIndicator): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "Message_ProgressIndicator.hxx".}
proc start*(this: var MessageProgressIndicator): MessageProgressRange {.
    importcpp: "Start", header: "Message_ProgressIndicator.hxx".}
proc start*(theProgress: Handle[MessageProgressIndicator]): MessageProgressRange {.
    importcpp: "Message_ProgressIndicator::Start(@)",
    header: "Message_ProgressIndicator.hxx".}
proc getPosition*(this: MessageProgressIndicator): cfloat {.noSideEffect,
    importcpp: "GetPosition", header: "Message_ProgressIndicator.hxx".}
proc destroyMessageProgressIndicator*(this: var MessageProgressIndicator) {.
    importcpp: "#.~Message_ProgressIndicator()",
    header: "Message_ProgressIndicator.hxx".}
## =======================================================================
## function : Increment
## purpose  :
## =======================================================================

proc increment*(this: var MessageProgressIndicator; theStep: cfloat;
               theScope: MessageProgressScope) {.importcpp: "Increment",
    header: "Message_ProgressIndicator.hxx".}

























