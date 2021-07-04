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
  ../Standard/Standard_Handle, IFGraph_StrongComponants,
  ../Standard/Standard_Boolean

discard "forward decl of Interface_Graph"
discard "forward decl of IFGraph_StrongComponants"
type
  IFGraph_SCRoots* {.importcpp: "IFGraph_SCRoots", header: "IFGraph_SCRoots.hxx",
                    bycopy.} = object of IFGraph_StrongComponants ## ! creates with a Graph, and will analyse :
                                                             ## ! whole True  : all the contents of the Model
                                                             ## ! whole False : sub-parts which will be given later


proc constructIFGraph_SCRoots*(agraph: Interface_Graph; whole: Standard_Boolean): IFGraph_SCRoots {.
    constructor, importcpp: "IFGraph_SCRoots(@)", header: "IFGraph_SCRoots.hxx".}
proc constructIFGraph_SCRoots*(subparts: var IFGraph_StrongComponants): IFGraph_SCRoots {.
    constructor, importcpp: "IFGraph_SCRoots(@)", header: "IFGraph_SCRoots.hxx".}
proc Evaluate*(this: var IFGraph_SCRoots) {.importcpp: "Evaluate",
                                        header: "IFGraph_SCRoots.hxx".}