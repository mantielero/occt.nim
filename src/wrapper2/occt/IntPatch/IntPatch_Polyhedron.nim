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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Bnd/Bnd_Box, ../Bnd/Bnd_HArray1OfBox,
  ../Standard/Standard_Real, ../Standard/Standard_Integer,
  ../Standard/Standard_Address, ../Standard/Standard_Boolean

discard "forward decl of Standard_OutOfRange"
discard "forward decl of Adaptor3d_HSurface"
discard "forward decl of gp_Pnt"
discard "forward decl of Bnd_Box"
discard "forward decl of gp_XYZ"
type
  IntPatch_Polyhedron* {.importcpp: "IntPatch_Polyhedron",
                        header: "IntPatch_Polyhedron.hxx", bycopy.} = object ## !
                                                                        ## MaTriangle
                                                                        ## constructor with an double array of pnt for the
                                                                        ## !
                                                                        ## representation of a double array of
                                                                        ## triangles.


proc constructIntPatch_Polyhedron*(Surface: handle[Adaptor3d_HSurface];
                                  nbdU: Standard_Integer; nbdV: Standard_Integer): IntPatch_Polyhedron {.
    constructor, importcpp: "IntPatch_Polyhedron(@)",
    header: "IntPatch_Polyhedron.hxx".}
proc constructIntPatch_Polyhedron*(Surface: handle[Adaptor3d_HSurface]): IntPatch_Polyhedron {.
    constructor, importcpp: "IntPatch_Polyhedron(@)",
    header: "IntPatch_Polyhedron.hxx".}
proc Destroy*(this: var IntPatch_Polyhedron) {.importcpp: "Destroy",
    header: "IntPatch_Polyhedron.hxx".}
proc destroyIntPatch_Polyhedron*(this: var IntPatch_Polyhedron) {.
    importcpp: "#.~IntPatch_Polyhedron()", header: "IntPatch_Polyhedron.hxx".}
proc Perform*(this: var IntPatch_Polyhedron; Surface: handle[Adaptor3d_HSurface];
             nbdU: Standard_Integer; nbdV: Standard_Integer) {.importcpp: "Perform",
    header: "IntPatch_Polyhedron.hxx".}
proc DeflectionOverEstimation*(this: var IntPatch_Polyhedron; flec: Standard_Real) {.
    importcpp: "DeflectionOverEstimation", header: "IntPatch_Polyhedron.hxx".}
proc DeflectionOnTriangle*(this: IntPatch_Polyhedron;
                          Surface: handle[Adaptor3d_HSurface];
                          Index: Standard_Integer): Standard_Real {.noSideEffect,
    importcpp: "DeflectionOnTriangle", header: "IntPatch_Polyhedron.hxx".}
proc UMinSingularity*(this: var IntPatch_Polyhedron; Sing: Standard_Boolean) {.
    importcpp: "UMinSingularity", header: "IntPatch_Polyhedron.hxx".}
proc UMaxSingularity*(this: var IntPatch_Polyhedron; Sing: Standard_Boolean) {.
    importcpp: "UMaxSingularity", header: "IntPatch_Polyhedron.hxx".}
proc VMinSingularity*(this: var IntPatch_Polyhedron; Sing: Standard_Boolean) {.
    importcpp: "VMinSingularity", header: "IntPatch_Polyhedron.hxx".}
proc VMaxSingularity*(this: var IntPatch_Polyhedron; Sing: Standard_Boolean) {.
    importcpp: "VMaxSingularity", header: "IntPatch_Polyhedron.hxx".}
proc Size*(this: IntPatch_Polyhedron; nbdu: var Standard_Integer;
          nbdv: var Standard_Integer) {.noSideEffect, importcpp: "Size",
                                     header: "IntPatch_Polyhedron.hxx".}
proc NbTriangles*(this: IntPatch_Polyhedron): Standard_Integer {.noSideEffect,
    importcpp: "NbTriangles", header: "IntPatch_Polyhedron.hxx".}
proc Triangle*(this: IntPatch_Polyhedron; Index: Standard_Integer;
              P1: var Standard_Integer; P2: var Standard_Integer;
              P3: var Standard_Integer) {.noSideEffect, importcpp: "Triangle",
                                       header: "IntPatch_Polyhedron.hxx".}
proc TriConnex*(this: IntPatch_Polyhedron; Triang: Standard_Integer;
               Pivot: Standard_Integer; Pedge: Standard_Integer;
               TriCon: var Standard_Integer; OtherP: var Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "TriConnex", header: "IntPatch_Polyhedron.hxx".}
proc NbPoints*(this: IntPatch_Polyhedron): Standard_Integer {.noSideEffect,
    importcpp: "NbPoints", header: "IntPatch_Polyhedron.hxx".}
proc Point*(this: var IntPatch_Polyhedron; thePnt: gp_Pnt; lig: Standard_Integer;
           col: Standard_Integer; U: Standard_Real; V: Standard_Real) {.
    importcpp: "Point", header: "IntPatch_Polyhedron.hxx".}
proc Point*(this: IntPatch_Polyhedron; Index: Standard_Integer; U: var Standard_Real;
           V: var Standard_Real): gp_Pnt {.noSideEffect, importcpp: "Point",
                                       header: "IntPatch_Polyhedron.hxx".}
proc Point*(this: IntPatch_Polyhedron; Index: Standard_Integer): gp_Pnt {.
    noSideEffect, importcpp: "Point", header: "IntPatch_Polyhedron.hxx".}
proc Point*(this: IntPatch_Polyhedron; Index: Standard_Integer; P: var gp_Pnt) {.
    noSideEffect, importcpp: "Point", header: "IntPatch_Polyhedron.hxx".}
proc Bounding*(this: IntPatch_Polyhedron): Bnd_Box {.noSideEffect,
    importcpp: "Bounding", header: "IntPatch_Polyhedron.hxx".}
proc FillBounding*(this: var IntPatch_Polyhedron) {.importcpp: "FillBounding",
    header: "IntPatch_Polyhedron.hxx".}
proc ComponentsBounding*(this: IntPatch_Polyhedron): handle[Bnd_HArray1OfBox] {.
    noSideEffect, importcpp: "ComponentsBounding",
    header: "IntPatch_Polyhedron.hxx".}
proc DeflectionOverEstimation*(this: IntPatch_Polyhedron): Standard_Real {.
    noSideEffect, importcpp: "DeflectionOverEstimation",
    header: "IntPatch_Polyhedron.hxx".}
proc HasUMinSingularity*(this: IntPatch_Polyhedron): Standard_Boolean {.
    noSideEffect, importcpp: "HasUMinSingularity",
    header: "IntPatch_Polyhedron.hxx".}
proc HasUMaxSingularity*(this: IntPatch_Polyhedron): Standard_Boolean {.
    noSideEffect, importcpp: "HasUMaxSingularity",
    header: "IntPatch_Polyhedron.hxx".}
proc HasVMinSingularity*(this: IntPatch_Polyhedron): Standard_Boolean {.
    noSideEffect, importcpp: "HasVMinSingularity",
    header: "IntPatch_Polyhedron.hxx".}
proc HasVMaxSingularity*(this: IntPatch_Polyhedron): Standard_Boolean {.
    noSideEffect, importcpp: "HasVMaxSingularity",
    header: "IntPatch_Polyhedron.hxx".}
proc PlaneEquation*(this: IntPatch_Polyhedron; Triang: Standard_Integer;
                   NormalVector: var gp_XYZ; PolarDistance: var Standard_Real) {.
    noSideEffect, importcpp: "PlaneEquation", header: "IntPatch_Polyhedron.hxx".}
proc Contain*(this: IntPatch_Polyhedron; Triang: Standard_Integer; ThePnt: gp_Pnt): Standard_Boolean {.
    noSideEffect, importcpp: "Contain", header: "IntPatch_Polyhedron.hxx".}
proc Parameters*(this: IntPatch_Polyhedron; Index: Standard_Integer;
                U: var Standard_Real; V: var Standard_Real) {.noSideEffect,
    importcpp: "Parameters", header: "IntPatch_Polyhedron.hxx".}
proc Dump*(this: IntPatch_Polyhedron) {.noSideEffect, importcpp: "Dump",
                                     header: "IntPatch_Polyhedron.hxx".}