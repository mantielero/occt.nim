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

discard "forward decl of Draw_ProgressIndicator"
discard "forward decl of Draw_ProgressIndicator"
type
  HandleDrawProgressIndicator* = Handle[DrawProgressIndicator]

## ! Implements ProgressIndicator (interface provided by Message)
## ! for DRAW, with possibility to output to TCL window
## ! and/or trace file

type
  DrawProgressIndicator* {.importcpp: "Draw_ProgressIndicator",
                          header: "Draw_ProgressIndicator.hxx", bycopy.} = object of MessageProgressIndicator ##
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


proc constructDrawProgressIndicator*(di: DrawInterpretor;
                                    theUpdateThreshold: StandardReal = 1.0): DrawProgressIndicator {.
    constructor, importcpp: "Draw_ProgressIndicator(@)",
    header: "Draw_ProgressIndicator.hxx".}
proc destroyDrawProgressIndicator*(this: var DrawProgressIndicator) {.
    importcpp: "#.~Draw_ProgressIndicator()", header: "Draw_ProgressIndicator.hxx".}
proc setTclMode*(this: var DrawProgressIndicator; theTclMode: StandardBoolean) {.
    importcpp: "SetTclMode", header: "Draw_ProgressIndicator.hxx".}
proc getTclMode*(this: DrawProgressIndicator): StandardBoolean {.noSideEffect,
    importcpp: "GetTclMode", header: "Draw_ProgressIndicator.hxx".}
proc setConsoleMode*(this: var DrawProgressIndicator; theMode: StandardBoolean) {.
    importcpp: "SetConsoleMode", header: "Draw_ProgressIndicator.hxx".}
proc getConsoleMode*(this: DrawProgressIndicator): StandardBoolean {.noSideEffect,
    importcpp: "GetConsoleMode", header: "Draw_ProgressIndicator.hxx".}
proc setGraphMode*(this: var DrawProgressIndicator; theGraphMode: StandardBoolean) {.
    importcpp: "SetGraphMode", header: "Draw_ProgressIndicator.hxx".}
proc getGraphMode*(this: DrawProgressIndicator): StandardBoolean {.noSideEffect,
    importcpp: "GetGraphMode", header: "Draw_ProgressIndicator.hxx".}
proc reset*(this: var DrawProgressIndicator) {.importcpp: "Reset",
    header: "Draw_ProgressIndicator.hxx".}
proc show*(this: var DrawProgressIndicator; theScope: MessageProgressScope;
          force: StandardBoolean = standardTrue) {.importcpp: "Show",
    header: "Draw_ProgressIndicator.hxx".}
proc userBreak*(this: var DrawProgressIndicator): StandardBoolean {.
    importcpp: "UserBreak", header: "Draw_ProgressIndicator.hxx".}
proc defaultTclMode*(): var StandardBoolean {.
    importcpp: "Draw_ProgressIndicator::DefaultTclMode(@)",
    header: "Draw_ProgressIndicator.hxx".}
proc defaultConsoleMode*(): var StandardBoolean {.
    importcpp: "Draw_ProgressIndicator::DefaultConsoleMode(@)",
    header: "Draw_ProgressIndicator.hxx".}
proc defaultGraphMode*(): var StandardBoolean {.
    importcpp: "Draw_ProgressIndicator::DefaultGraphMode(@)",
    header: "Draw_ProgressIndicator.hxx".}
proc stopIndicator*(): var StandardAddress {.
    importcpp: "Draw_ProgressIndicator::StopIndicator(@)",
    header: "Draw_ProgressIndicator.hxx".}
type
  DrawProgressIndicatorbaseType* = MessageProgressIndicator

proc getTypeName*(): cstring {.importcpp: "Draw_ProgressIndicator::get_type_name(@)",
                            header: "Draw_ProgressIndicator.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Draw_ProgressIndicator::get_type_descriptor(@)",
    header: "Draw_ProgressIndicator.hxx".}
proc dynamicType*(this: DrawProgressIndicator): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Draw_ProgressIndicator.hxx".}

