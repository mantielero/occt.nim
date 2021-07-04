##  Created on: 1993-01-14
##  Created by: Remi LEQUETTE
##  Copyright (c) 1993-1999 Matra Datavision
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
  ../Standard/Standard_Handle, ../Standard/Standard_OStream,
  ../Standard/Standard_Integer

discard "forward decl of TopoDS_Shape"
discard "forward decl of TopTools_ShapeMapHasher"
discard "forward decl of TopTools_OrientedShapeMapHasher"
discard "forward decl of TopTools_LocationSet"
discard "forward decl of TopTools_ShapeSet"
type
  TopTools* {.importcpp: "TopTools", header: "TopTools.hxx", bycopy.} = object ## ! A set of Shapes. Can be dump, wrote or read.
                                                                       ## ! Dumps the
                                                                       ## topological structure  of <Sh>  on the
                                                                       ## ! stream <S>.


proc Dump*(Sh: TopoDS_Shape; S: var Standard_OStream) {.
    importcpp: "TopTools::Dump(@)", header: "TopTools.hxx".}
proc Dummy*(I: Standard_Integer) {.importcpp: "TopTools::Dummy(@)",
                                header: "TopTools.hxx".}