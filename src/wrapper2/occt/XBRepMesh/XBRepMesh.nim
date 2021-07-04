##  Created on: 2008-04-11
##  Created by: Peter KURNEV
##  Copyright (c) 2008-2014 OPEN CASCADE SAS
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
  ../Standard/Standard_Macro, ../BRepMesh/BRepMesh_DiscretRoot

discard "forward decl of TopoDS_Shape"
type
  XBRepMesh* {.importcpp: "XBRepMesh", header: "XBRepMesh.hxx", bycopy.} = object


proc Discret*(theShape: TopoDS_Shape; theDeflection: Standard_Real;
             theAngle: Standard_Real; theAlgo: ptr BRepMesh_DiscretRoot): Standard_Integer {.
    importcpp: "XBRepMesh::Discret(@)", header: "XBRepMesh.hxx".}