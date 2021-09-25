##  Created on: 1997-04-17
##  Created by: Christophe MARION
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

discard "forward decl of HLRBRep_Data"
type
  HLRBRepHider* {.importcpp: "HLRBRep_Hider", header: "HLRBRep_Hider.hxx", bycopy.} = object ##
                                                                                     ## !
                                                                                     ## Creates
                                                                                     ## a
                                                                                     ## Hider
                                                                                     ## processing
                                                                                     ## the
                                                                                     ## set
                                                                                     ## of
                                                                                     ## Edges
                                                                                     ## and
                                                                                     ##
                                                                                     ## !
                                                                                     ## hiding
                                                                                     ## faces
                                                                                     ## described
                                                                                     ## by
                                                                                     ## <DS>.
                                                                                     ## Stores
                                                                                     ## the
                                                                                     ## hidden
                                                                                     ##
                                                                                     ## !
                                                                                     ## parts
                                                                                     ## in
                                                                                     ## <DS>.


proc constructHLRBRepHider*(ds: Handle[HLRBRepData]): HLRBRepHider {.constructor,
    importcpp: "HLRBRep_Hider(@)", header: "HLRBRep_Hider.hxx".}
proc ownHiding*(this: var HLRBRepHider; fi: int) {.importcpp: "OwnHiding",
    header: "HLRBRep_Hider.hxx".}
proc hide*(this: var HLRBRepHider; fi: int; mst: var BRepTopAdaptorMapOfShapeTool) {.
    importcpp: "Hide", header: "HLRBRep_Hider.hxx".}
