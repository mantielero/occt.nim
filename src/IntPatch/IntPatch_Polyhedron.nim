##  Created on: 1993-02-03
##  Created by: Laurent BUCHARD
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
discard "forward decl of Adaptor3d_HSurface"
discard "forward decl of gp_Pnt"
discard "forward decl of Bnd_Box"
discard "forward decl of gp_XYZ"
type
  IntPatchPolyhedron* {.importcpp: "IntPatch_Polyhedron",
                       header: "IntPatch_Polyhedron.hxx", bycopy.} = object ## !
                                                                       ## MaTriangle
                                                                       ## constructor with an double array of pnt for the
                                                                       ## !
                                                                       ## representation of a double array of
                                                                       ## triangles.


proc constructIntPatchPolyhedron*(surface: Handle[Adaptor3dHSurface]; nbdU: cint;
                                 nbdV: cint): IntPatchPolyhedron {.constructor,
    importcpp: "IntPatch_Polyhedron(@)", header: "IntPatch_Polyhedron.hxx".}
proc constructIntPatchPolyhedron*(surface: Handle[Adaptor3dHSurface]): IntPatchPolyhedron {.
    constructor, importcpp: "IntPatch_Polyhedron(@)",
    header: "IntPatch_Polyhedron.hxx".}
proc destroy*(this: var IntPatchPolyhedron) {.importcpp: "Destroy",
    header: "IntPatch_Polyhedron.hxx".}
proc destroyIntPatchPolyhedron*(this: var IntPatchPolyhedron) {.
    importcpp: "#.~IntPatch_Polyhedron()", header: "IntPatch_Polyhedron.hxx".}
proc perform*(this: var IntPatchPolyhedron; surface: Handle[Adaptor3dHSurface];
             nbdU: cint; nbdV: cint) {.importcpp: "Perform",
                                   header: "IntPatch_Polyhedron.hxx".}
proc deflectionOverEstimation*(this: var IntPatchPolyhedron; flec: cfloat) {.
    importcpp: "DeflectionOverEstimation", header: "IntPatch_Polyhedron.hxx".}
proc deflectionOnTriangle*(this: IntPatchPolyhedron;
                          surface: Handle[Adaptor3dHSurface]; index: cint): cfloat {.
    noSideEffect, importcpp: "DeflectionOnTriangle",
    header: "IntPatch_Polyhedron.hxx".}
proc uMinSingularity*(this: var IntPatchPolyhedron; sing: bool) {.
    importcpp: "UMinSingularity", header: "IntPatch_Polyhedron.hxx".}
proc uMaxSingularity*(this: var IntPatchPolyhedron; sing: bool) {.
    importcpp: "UMaxSingularity", header: "IntPatch_Polyhedron.hxx".}
proc vMinSingularity*(this: var IntPatchPolyhedron; sing: bool) {.
    importcpp: "VMinSingularity", header: "IntPatch_Polyhedron.hxx".}
proc vMaxSingularity*(this: var IntPatchPolyhedron; sing: bool) {.
    importcpp: "VMaxSingularity", header: "IntPatch_Polyhedron.hxx".}
proc size*(this: IntPatchPolyhedron; nbdu: var cint; nbdv: var cint) {.noSideEffect,
    importcpp: "Size", header: "IntPatch_Polyhedron.hxx".}
proc nbTriangles*(this: IntPatchPolyhedron): cint {.noSideEffect,
    importcpp: "NbTriangles", header: "IntPatch_Polyhedron.hxx".}
proc triangle*(this: IntPatchPolyhedron; index: cint; p1: var cint; p2: var cint;
              p3: var cint) {.noSideEffect, importcpp: "Triangle",
                           header: "IntPatch_Polyhedron.hxx".}
proc triConnex*(this: IntPatchPolyhedron; triang: cint; pivot: cint; pedge: cint;
               triCon: var cint; otherP: var cint): cint {.noSideEffect,
    importcpp: "TriConnex", header: "IntPatch_Polyhedron.hxx".}
proc nbPoints*(this: IntPatchPolyhedron): cint {.noSideEffect, importcpp: "NbPoints",
    header: "IntPatch_Polyhedron.hxx".}
proc point*(this: var IntPatchPolyhedron; thePnt: Pnt; lig: cint; col: cint; u: cfloat;
           v: cfloat) {.importcpp: "Point", header: "IntPatch_Polyhedron.hxx".}
proc point*(this: IntPatchPolyhedron; index: cint; u: var cfloat; v: var cfloat): Pnt {.
    noSideEffect, importcpp: "Point", header: "IntPatch_Polyhedron.hxx".}
proc point*(this: IntPatchPolyhedron; index: cint): Pnt {.noSideEffect,
    importcpp: "Point", header: "IntPatch_Polyhedron.hxx".}
proc point*(this: IntPatchPolyhedron; index: cint; p: var Pnt) {.noSideEffect,
    importcpp: "Point", header: "IntPatch_Polyhedron.hxx".}
proc bounding*(this: IntPatchPolyhedron): BndBox {.noSideEffect,
    importcpp: "Bounding", header: "IntPatch_Polyhedron.hxx".}
proc fillBounding*(this: var IntPatchPolyhedron) {.importcpp: "FillBounding",
    header: "IntPatch_Polyhedron.hxx".}
proc componentsBounding*(this: IntPatchPolyhedron): Handle[BndHArray1OfBox] {.
    noSideEffect, importcpp: "ComponentsBounding",
    header: "IntPatch_Polyhedron.hxx".}
proc deflectionOverEstimation*(this: IntPatchPolyhedron): cfloat {.noSideEffect,
    importcpp: "DeflectionOverEstimation", header: "IntPatch_Polyhedron.hxx".}
proc hasUMinSingularity*(this: IntPatchPolyhedron): bool {.noSideEffect,
    importcpp: "HasUMinSingularity", header: "IntPatch_Polyhedron.hxx".}
proc hasUMaxSingularity*(this: IntPatchPolyhedron): bool {.noSideEffect,
    importcpp: "HasUMaxSingularity", header: "IntPatch_Polyhedron.hxx".}
proc hasVMinSingularity*(this: IntPatchPolyhedron): bool {.noSideEffect,
    importcpp: "HasVMinSingularity", header: "IntPatch_Polyhedron.hxx".}
proc hasVMaxSingularity*(this: IntPatchPolyhedron): bool {.noSideEffect,
    importcpp: "HasVMaxSingularity", header: "IntPatch_Polyhedron.hxx".}
proc planeEquation*(this: IntPatchPolyhedron; triang: cint; normalVector: var Xyz;
                   polarDistance: var cfloat) {.noSideEffect,
    importcpp: "PlaneEquation", header: "IntPatch_Polyhedron.hxx".}
proc contain*(this: IntPatchPolyhedron; triang: cint; thePnt: Pnt): bool {.noSideEffect,
    importcpp: "Contain", header: "IntPatch_Polyhedron.hxx".}
proc parameters*(this: IntPatchPolyhedron; index: cint; u: var cfloat; v: var cfloat) {.
    noSideEffect, importcpp: "Parameters", header: "IntPatch_Polyhedron.hxx".}
proc dump*(this: IntPatchPolyhedron) {.noSideEffect, importcpp: "Dump",
                                    header: "IntPatch_Polyhedron.hxx".}

























