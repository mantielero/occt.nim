##  Created on: 1998-06-11
##  Created by: data exchange team
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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Real

discard "forward decl of TopoDS_Vertex"
discard "forward decl of gp_Pnt"
type
  ShapeBuild_Vertex* {.importcpp: "ShapeBuild_Vertex",
                      header: "ShapeBuild_Vertex.hxx", bycopy.} = object ## ! Combines new vertex from two others. This new one is the
                                                                    ## ! smallest vertex which comprises both of the source vertices.
                                                                    ## ! The function takes into account the positions and tolerances
                                                                    ## ! of the source vertices.
                                                                    ## ! The tolerance of the new vertex will be equal to the minimal
                                                                    ## ! tolerance that is required to comprise source vertices
                                                                    ## ! multiplied by tolFactor (in order to avoid errors because
                                                                    ## ! of discreteness of
                                                                    ## calculations).


proc CombineVertex*(this: ShapeBuild_Vertex; V1: TopoDS_Vertex; V2: TopoDS_Vertex;
                   tolFactor: Standard_Real = 1.0001): TopoDS_Vertex {.noSideEffect,
    importcpp: "CombineVertex", header: "ShapeBuild_Vertex.hxx".}
proc CombineVertex*(this: ShapeBuild_Vertex; pnt1: gp_Pnt; pnt2: gp_Pnt;
                   tol1: Standard_Real; tol2: Standard_Real;
                   tolFactor: Standard_Real = 1.0001): TopoDS_Vertex {.noSideEffect,
    importcpp: "CombineVertex", header: "ShapeBuild_Vertex.hxx".}