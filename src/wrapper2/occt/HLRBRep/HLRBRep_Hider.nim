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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Integer,
  ../BRepTopAdaptor/BRepTopAdaptor_MapOfShapeTool

discard "forward decl of HLRBRep_Data"
type
  HLRBRep_Hider* {.importcpp: "HLRBRep_Hider", header: "HLRBRep_Hider.hxx", bycopy.} = object ##
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


proc constructHLRBRep_Hider*(DS: handle[HLRBRep_Data]): HLRBRep_Hider {.constructor,
    importcpp: "HLRBRep_Hider(@)", header: "HLRBRep_Hider.hxx".}
proc OwnHiding*(this: var HLRBRep_Hider; FI: Standard_Integer) {.
    importcpp: "OwnHiding", header: "HLRBRep_Hider.hxx".}
proc Hide*(this: var HLRBRep_Hider; FI: Standard_Integer;
          MST: var BRepTopAdaptor_MapOfShapeTool) {.importcpp: "Hide",
    header: "HLRBRep_Hider.hxx".}