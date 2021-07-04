##  Created on: 1993-05-07
##  Created by: Jacques GOUSSARD
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
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean,
  ../Standard/Standard_Real

discard "forward decl of Standard_DomainError"
discard "forward decl of IntPatch_Line"
discard "forward decl of Adaptor3d_HSurface"
discard "forward decl of Adaptor3d_TopolTool"
type
  IntPatch_RstInt* {.importcpp: "IntPatch_RstInt", header: "IntPatch_RstInt.hxx",
                    bycopy.} = object


proc PutVertexOnLine*(L: handle[IntPatch_Line]; Surf: handle[Adaptor3d_HSurface];
                     Domain: handle[Adaptor3d_TopolTool];
                     OtherSurf: handle[Adaptor3d_HSurface];
                     OnFirst: Standard_Boolean; Tol: Standard_Real) {.
    importcpp: "IntPatch_RstInt::PutVertexOnLine(@)",
    header: "IntPatch_RstInt.hxx".}