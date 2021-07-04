##  Created on: 1991-01-21
##  Created by: Christophe MARION
##  Copyright (c) 1991-1999 Matra Datavision
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
  ../Standard/Standard_OStream, ../gp/gp_Trsf

discard "forward decl of TopLoc_Datum3D"
discard "forward decl of TopLoc_Location"
discard "forward decl of TopLoc_SListOfItemLocation"
type
  TopLoc_ItemLocation* {.importcpp: "TopLoc_ItemLocation",
                        header: "TopLoc_ItemLocation.hxx", bycopy.} = object ## ! Sets the
                                                                        ## elementary Datum to <D>
                                                                        ## ! Sets the exponent to <P>


proc constructTopLoc_ItemLocation*(D: handle[TopLoc_Datum3D]; P: Standard_Integer): TopLoc_ItemLocation {.
    constructor, importcpp: "TopLoc_ItemLocation(@)",
    header: "TopLoc_ItemLocation.hxx".}
proc DumpJson*(this: TopLoc_ItemLocation; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "TopLoc_ItemLocation.hxx".}