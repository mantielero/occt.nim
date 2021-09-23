##  Created on: 1993-05-06
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
  ../Standard/Standard_Handle, ../Bnd/Bnd_HArray1OfBox, ../Standard/Standard_Real,
  ../Standard/Standard_Integer

discard "forward decl of Standard_OutOfRange"
discard "forward decl of Bnd_Box"
discard "forward decl of IntPatch_Polyhedron"
discard "forward decl of gp_Pnt"
type
  IntPatch_PolyhedronTool* {.importcpp: "IntPatch_PolyhedronTool",
                            header: "IntPatch_PolyhedronTool.hxx", bycopy.} = object ##
                                                                                ## !
                                                                                ## Give
                                                                                ## the
                                                                                ## bounding
                                                                                ## box
                                                                                ## of
                                                                                ## the
                                                                                ## Polyhedron.


proc Bounding*(thePolyh: IntPatch_Polyhedron): Bnd_Box {.
    importcpp: "IntPatch_PolyhedronTool::Bounding(@)",
    header: "IntPatch_PolyhedronTool.hxx".}
proc ComponentsBounding*(thePolyh: IntPatch_Polyhedron): handle[Bnd_HArray1OfBox] {.
    importcpp: "IntPatch_PolyhedronTool::ComponentsBounding(@)",
    header: "IntPatch_PolyhedronTool.hxx".}
proc DeflectionOverEstimation*(thePolyh: IntPatch_Polyhedron): Standard_Real {.
    importcpp: "IntPatch_PolyhedronTool::DeflectionOverEstimation(@)",
    header: "IntPatch_PolyhedronTool.hxx".}
proc NbTriangles*(thePolyh: IntPatch_Polyhedron): Standard_Integer {.
    importcpp: "IntPatch_PolyhedronTool::NbTriangles(@)",
    header: "IntPatch_PolyhedronTool.hxx".}
proc Triangle*(thePolyh: IntPatch_Polyhedron; Index: Standard_Integer;
              P1: var Standard_Integer; P2: var Standard_Integer;
              P3: var Standard_Integer) {.importcpp: "IntPatch_PolyhedronTool::Triangle(@)",
                                       header: "IntPatch_PolyhedronTool.hxx".}
proc Point*(thePolyh: IntPatch_Polyhedron; Index: Standard_Integer): gp_Pnt {.
    importcpp: "IntPatch_PolyhedronTool::Point(@)",
    header: "IntPatch_PolyhedronTool.hxx".}
proc TriConnex*(thePolyh: IntPatch_Polyhedron; Triang: Standard_Integer;
               Pivot: Standard_Integer; Pedge: Standard_Integer;
               TriCon: var Standard_Integer; OtherP: var Standard_Integer): Standard_Integer {.
    importcpp: "IntPatch_PolyhedronTool::TriConnex(@)",
    header: "IntPatch_PolyhedronTool.hxx".}