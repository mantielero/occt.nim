##  Created on: 2008-06-25
##  Created by: data exchange team
##  Copyright (c) 2008-2014 OPEN CASCADE SAS
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
  ../Standard/Standard, ../Message/Message_ProgressIndicator, Draw_Interpretor

discard "forward decl of Draw_ProgressIndicator"
discard "forward decl of Draw_ProgressIndicator"
type
  Handle_Draw_ProgressIndicator* = handle[Draw_ProgressIndicator]

## ! Implements ProgressIndicator (interface provided by Message)
## ! for DRAW, with possibility to output to TCL window
## ! and/or trace file

type
  Draw_ProgressIndicator* {.importcpp: "Draw_ProgressIndicator",
                           header: "Draw_ProgressIndicator.hxx", bycopy.} = object of Message_ProgressIndicator ##
                                                                                                         ## !
                                                                                                         ## Creates
                                                                                                         ## a
                                                                                                         ## progress
                                                                                                         ## indicator
                                                                                                         ## and
                                                                                                         ## remembers
                                                                                                         ## pointer
                                                                                                         ## to
                                                                                                         ## Draw_Interpretor
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ## @param
                                                                                                         ## theUpdateThreshold
                                                                                                         ## defines
                                                                                                         ## minimal
                                                                                                         ## progress
                                                                                                         ## (in
                                                                                                         ## percents)
                                                                                                         ## between
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ## updates
                                                                                                         ## of
                                                                                                         ## the
                                                                                                         ## indicator
                                                                                                         ## (non-forced
                                                                                                         ## updates
                                                                                                         ## of
                                                                                                         ## the
                                                                                                         ## progress
                                                                                                         ## bar
                                                                                                         ## will
                                                                                                         ## be
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ## disabled
                                                                                                         ## until
                                                                                                         ## that
                                                                                                         ## progress
                                                                                                         ## is
                                                                                                         ## reached
                                                                                                         ## since
                                                                                                         ## last
                                                                                                         ## update).


proc constructDraw_ProgressIndicator*(di: Draw_Interpretor;
                                     theUpdateThreshold: Standard_Real = 1.0): Draw_ProgressIndicator {.
    constructor, importcpp: "Draw_ProgressIndicator(@)",
    header: "Draw_ProgressIndicator.hxx".}
proc destroyDraw_ProgressIndicator*(this: var Draw_ProgressIndicator) {.
    importcpp: "#.~Draw_ProgressIndicator()", header: "Draw_ProgressIndicator.hxx".}
proc SetTclMode*(this: var Draw_ProgressIndicator; theTclMode: Standard_Boolean) {.
    importcpp: "SetTclMode", header: "Draw_ProgressIndicator.hxx".}
proc GetTclMode*(this: Draw_ProgressIndicator): Standard_Boolean {.noSideEffect,
    importcpp: "GetTclMode", header: "Draw_ProgressIndicator.hxx".}
proc SetConsoleMode*(this: var Draw_ProgressIndicator; theMode: Standard_Boolean) {.
    importcpp: "SetConsoleMode", header: "Draw_ProgressIndicator.hxx".}
proc GetConsoleMode*(this: Draw_ProgressIndicator): Standard_Boolean {.noSideEffect,
    importcpp: "GetConsoleMode", header: "Draw_ProgressIndicator.hxx".}
proc SetGraphMode*(this: var Draw_ProgressIndicator; theGraphMode: Standard_Boolean) {.
    importcpp: "SetGraphMode", header: "Draw_ProgressIndicator.hxx".}
proc GetGraphMode*(this: Draw_ProgressIndicator): Standard_Boolean {.noSideEffect,
    importcpp: "GetGraphMode", header: "Draw_ProgressIndicator.hxx".}
proc Reset*(this: var Draw_ProgressIndicator) {.importcpp: "Reset",
    header: "Draw_ProgressIndicator.hxx".}
proc Show*(this: var Draw_ProgressIndicator; theScope: Message_ProgressScope;
          force: Standard_Boolean = Standard_True) {.importcpp: "Show",
    header: "Draw_ProgressIndicator.hxx".}
proc UserBreak*(this: var Draw_ProgressIndicator): Standard_Boolean {.
    importcpp: "UserBreak", header: "Draw_ProgressIndicator.hxx".}
proc DefaultTclMode*(): var Standard_Boolean {.
    importcpp: "Draw_ProgressIndicator::DefaultTclMode(@)",
    header: "Draw_ProgressIndicator.hxx".}
proc DefaultConsoleMode*(): var Standard_Boolean {.
    importcpp: "Draw_ProgressIndicator::DefaultConsoleMode(@)",
    header: "Draw_ProgressIndicator.hxx".}
proc DefaultGraphMode*(): var Standard_Boolean {.
    importcpp: "Draw_ProgressIndicator::DefaultGraphMode(@)",
    header: "Draw_ProgressIndicator.hxx".}
proc StopIndicator*(): var Standard_Address {.
    importcpp: "Draw_ProgressIndicator::StopIndicator(@)",
    header: "Draw_ProgressIndicator.hxx".}
type
  Draw_ProgressIndicatorbase_type* = Message_ProgressIndicator

proc get_type_name*(): cstring {.importcpp: "Draw_ProgressIndicator::get_type_name(@)",
                              header: "Draw_ProgressIndicator.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Draw_ProgressIndicator::get_type_descriptor(@)",
    header: "Draw_ProgressIndicator.hxx".}
proc DynamicType*(this: Draw_ProgressIndicator): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "Draw_ProgressIndicator.hxx".}