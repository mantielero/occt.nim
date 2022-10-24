import ifselect_types

##  Created on: 1998-10-15
##  Created by: Christian CAILLET
##  Copyright (c) 1998-1999 Matra Datavision
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

discard "forward decl of IFSelect_SelectDeduct"
discard "forward decl of Interface_Graph"
discard "forward decl of IFSelect_GraphCounter"




proc newIFSelectGraphCounter*(withmap: bool = true; withlist: bool = false): IFSelectGraphCounter {.
    cdecl, constructor, importcpp: "IFSelect_GraphCounter(@)", header: "IFSelect_GraphCounter.hxx".}
proc applied*(this: IFSelectGraphCounter): Handle[IFSelectSelectDeduct] {.
    noSideEffect, cdecl, importcpp: "Applied", header: "IFSelect_GraphCounter.hxx".}
proc setApplied*(this: var IFSelectGraphCounter; sel: Handle[IFSelectSelectDeduct]) {.
    cdecl, importcpp: "SetApplied", header: "IFSelect_GraphCounter.hxx".}
proc addWithGraph*(this: var IFSelectGraphCounter;
                  list: Handle[TColStdHSequenceOfTransient]; graph: InterfaceGraph) {.
    cdecl, importcpp: "AddWithGraph", header: "IFSelect_GraphCounter.hxx".}
