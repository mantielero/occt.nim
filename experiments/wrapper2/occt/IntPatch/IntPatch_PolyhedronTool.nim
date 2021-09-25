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

discard "forward decl of Standard_OutOfRange"
discard "forward decl of Bnd_Box"
discard "forward decl of IntPatch_Polyhedron"
discard "forward decl of gp_Pnt"
type
  IntPatchPolyhedronTool* {.importcpp: "IntPatch_PolyhedronTool",
                           header: "IntPatch_PolyhedronTool.hxx", bycopy.} = object ## !
                                                                               ## Give
                                                                               ## the
                                                                               ## bounding
                                                                               ## box
                                                                               ## of
                                                                               ## the
                                                                               ## Polyhedron.


proc bounding*(thePolyh: IntPatchPolyhedron): BndBox {.
    importcpp: "IntPatch_PolyhedronTool::Bounding(@)",
    header: "IntPatch_PolyhedronTool.hxx".}
proc componentsBounding*(thePolyh: IntPatchPolyhedron): Handle[BndHArray1OfBox] {.
    importcpp: "IntPatch_PolyhedronTool::ComponentsBounding(@)",
    header: "IntPatch_PolyhedronTool.hxx".}
proc deflectionOverEstimation*(thePolyh: IntPatchPolyhedron): float {.
    importcpp: "IntPatch_PolyhedronTool::DeflectionOverEstimation(@)",
    header: "IntPatch_PolyhedronTool.hxx".}
proc nbTriangles*(thePolyh: IntPatchPolyhedron): int {.
    importcpp: "IntPatch_PolyhedronTool::NbTriangles(@)",
    header: "IntPatch_PolyhedronTool.hxx".}
proc triangle*(thePolyh: IntPatchPolyhedron; index: int; p1: var int; p2: var int;
              p3: var int) {.importcpp: "IntPatch_PolyhedronTool::Triangle(@)",
                          header: "IntPatch_PolyhedronTool.hxx".}
proc point*(thePolyh: IntPatchPolyhedron; index: int): Pnt {.
    importcpp: "IntPatch_PolyhedronTool::Point(@)",
    header: "IntPatch_PolyhedronTool.hxx".}
proc triConnex*(thePolyh: IntPatchPolyhedron; triang: int; pivot: int; pedge: int;
               triCon: var int; otherP: var int): int {.
    importcpp: "IntPatch_PolyhedronTool::TriConnex(@)",
    header: "IntPatch_PolyhedronTool.hxx".}
