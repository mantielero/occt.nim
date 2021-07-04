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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_GUID, TDF_ChildIterator,
  ../Standard/Standard_Boolean

discard "forward decl of TDF_Attribute"
discard "forward decl of TDF_Label"
discard "forward decl of Standard_GUID"
type
  TDF_ChildIDIterator* {.importcpp: "TDF_ChildIDIterator",
                        header: "TDF_ChildIDIterator.hxx", bycopy.} = object ## ! Creates an empty
                                                                        ## iterator.


proc constructTDF_ChildIDIterator*(): TDF_ChildIDIterator {.constructor,
    importcpp: "TDF_ChildIDIterator(@)", header: "TDF_ChildIDIterator.hxx".}
proc constructTDF_ChildIDIterator*(aLabel: TDF_Label; anID: Standard_GUID;
                                  allLevels: Standard_Boolean = Standard_False): TDF_ChildIDIterator {.
    constructor, importcpp: "TDF_ChildIDIterator(@)",
    header: "TDF_ChildIDIterator.hxx".}
proc Initialize*(this: var TDF_ChildIDIterator; aLabel: TDF_Label;
                anID: Standard_GUID; allLevels: Standard_Boolean = Standard_False) {.
    importcpp: "Initialize", header: "TDF_ChildIDIterator.hxx".}
proc More*(this: TDF_ChildIDIterator): Standard_Boolean {.noSideEffect,
    importcpp: "More", header: "TDF_ChildIDIterator.hxx".}
proc Next*(this: var TDF_ChildIDIterator) {.importcpp: "Next",
                                        header: "TDF_ChildIDIterator.hxx".}
proc NextBrother*(this: var TDF_ChildIDIterator) {.importcpp: "NextBrother",
    header: "TDF_ChildIDIterator.hxx".}
proc Value*(this: TDF_ChildIDIterator): handle[TDF_Attribute] {.noSideEffect,
    importcpp: "Value", header: "TDF_ChildIDIterator.hxx".}