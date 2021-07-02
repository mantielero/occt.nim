##  Created on: 1992-09-23
##  Created by: Christian CAILLET
##  Copyright (c) 1992-1999 Matra Datavision
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

discard "forward decl of Interface_Graph"
discard "forward decl of Standard_Transient"
discard "forward decl of Interface_EntityIterator"
type
  IFGraphArticulations* {.importcpp: "IFGraph_Articulations",
                         header: "IFGraph_Articulations.hxx", bycopy.} = object of InterfaceGraphContent ##
                                                                                                  ## !
                                                                                                  ## creates
                                                                                                  ## Articulations
                                                                                                  ## to
                                                                                                  ## evaluate
                                                                                                  ## a
                                                                                                  ## Graph
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## whole
                                                                                                  ## True
                                                                                                  ## :
                                                                                                  ## works
                                                                                                  ## on
                                                                                                  ## the
                                                                                                  ## whole
                                                                                                  ## Model
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## whole
                                                                                                  ## False
                                                                                                  ## :
                                                                                                  ## remains
                                                                                                  ## empty,
                                                                                                  ## ready
                                                                                                  ## to
                                                                                                  ## work
                                                                                                  ## on
                                                                                                  ## a
                                                                                                  ## sub-part
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## basic
                                                                                                  ## routine
                                                                                                  ## of
                                                                                                  ## computation
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## (see
                                                                                                  ## book
                                                                                                  ## Sedgewick
                                                                                                  ## "Algorithms",
                                                                                                  ## p
                                                                                                  ## 392)


proc constructIFGraphArticulations*(agraph: InterfaceGraph; whole: StandardBoolean): IFGraphArticulations {.
    constructor, importcpp: "IFGraph_Articulations(@)",
    header: "IFGraph_Articulations.hxx".}
proc getFromEntity*(this: var IFGraphArticulations; ent: Handle[StandardTransient]) {.
    importcpp: "GetFromEntity", header: "IFGraph_Articulations.hxx".}
proc getFromIter*(this: var IFGraphArticulations; iter: InterfaceEntityIterator) {.
    importcpp: "GetFromIter", header: "IFGraph_Articulations.hxx".}
proc resetData*(this: var IFGraphArticulations) {.importcpp: "ResetData",
    header: "IFGraph_Articulations.hxx".}
proc evaluate*(this: var IFGraphArticulations) {.importcpp: "Evaluate",
    header: "IFGraph_Articulations.hxx".}

