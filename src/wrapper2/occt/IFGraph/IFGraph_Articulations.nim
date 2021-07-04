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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Interface/Interface_Graph,
  ../Standard/Standard_Integer, ../TColStd/TColStd_HSequenceOfInteger,
  ../Interface/Interface_GraphContent, ../Standard/Standard_Boolean

discard "forward decl of Interface_Graph"
discard "forward decl of Standard_Transient"
discard "forward decl of Interface_EntityIterator"
type
  IFGraph_Articulations* {.importcpp: "IFGraph_Articulations",
                          header: "IFGraph_Articulations.hxx", bycopy.} = object of Interface_GraphContent ##
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


proc constructIFGraph_Articulations*(agraph: Interface_Graph;
                                    whole: Standard_Boolean): IFGraph_Articulations {.
    constructor, importcpp: "IFGraph_Articulations(@)",
    header: "IFGraph_Articulations.hxx".}
proc GetFromEntity*(this: var IFGraph_Articulations; ent: handle[Standard_Transient]) {.
    importcpp: "GetFromEntity", header: "IFGraph_Articulations.hxx".}
proc GetFromIter*(this: var IFGraph_Articulations; iter: Interface_EntityIterator) {.
    importcpp: "GetFromIter", header: "IFGraph_Articulations.hxx".}
proc ResetData*(this: var IFGraph_Articulations) {.importcpp: "ResetData",
    header: "IFGraph_Articulations.hxx".}
proc Evaluate*(this: var IFGraph_Articulations) {.importcpp: "Evaluate",
    header: "IFGraph_Articulations.hxx".}