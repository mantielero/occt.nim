##  Created by: DAUTRY Philippe
##  Copyright (c) 1997-1999 Matra Datavision
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

discard "forward decl of TDF_Label"
type
  TDF_ChildIterator* {.importcpp: "TDF_ChildIterator",
                      header: "TDF_ChildIterator.hxx", bycopy.} = object ## ! Creates an empty iterator  object to
                                                                    ## ! explore the children of a label.


proc constructTDF_ChildIterator*(): TDF_ChildIterator {.constructor,
    importcpp: "TDF_ChildIterator(@)", header: "TDF_ChildIterator.hxx".}
proc constructTDF_ChildIterator*(aLabel: TDF_Label; allLevels: bool = false): TDF_ChildIterator {.
    constructor, importcpp: "TDF_ChildIterator(@)", header: "TDF_ChildIterator.hxx".}
proc initialize*(this: var TDF_ChildIterator; aLabel: TDF_Label;
                allLevels: bool = false) {.importcpp: "Initialize",
                                       header: "TDF_ChildIterator.hxx".}
proc more*(this: TDF_ChildIterator): bool {.noSideEffect, importcpp: "More",
                                        header: "TDF_ChildIterator.hxx".}
proc next*(this: var TDF_ChildIterator) {.importcpp: "Next",
                                      header: "TDF_ChildIterator.hxx".}
proc nextBrother*(this: var TDF_ChildIterator) {.importcpp: "NextBrother",
    header: "TDF_ChildIterator.hxx".}
proc value*(this: TDF_ChildIterator): TDF_Label {.noSideEffect, importcpp: "Value",
    header: "TDF_ChildIterator.hxx".}
