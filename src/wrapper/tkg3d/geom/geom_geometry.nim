##  Created on: 1993-03-09
##  Created by: JVC
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

discard "forward decl of Standard_ConstructionError"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Ax1"
discard "forward decl of gp_Ax2"
discard "forward decl of gp_Vec"
discard "forward decl of gp_Trsf"
discard "forward decl of Geom_Geometry"
type
  HandleGeomGeometry* = Handle[GeomGeometry]

## ! The abstract class Geometry for 3D space is the root
## ! class of all geometric objects from the Geom
## ! package. It describes the common behavior of these objects when:
## ! - applying geometric transformations to objects, and
## ! - constructing objects by geometric transformation (including copying).
## ! Warning
## ! Only transformations which do not modify the nature
## ! of the geometry can be applied to Geom objects: this
## ! is the case with translations, rotations, symmetries
## ! and scales; this is also the case with gp_Trsf
## ! composite transformations which are used to define
## ! the geometric transformations applied using the
## ! Transform or Transformed functions.
## ! Note: Geometry defines the "prototype" of the
## ! abstract method Transform which is defined for each
## ! concrete type of derived object. All other
## ! transformations are implemented using the Transform method.

type
  GeomGeometry* {.importcpp: "Geom_Geometry", header: "Geom_Geometry.hxx", bycopy.} = object of StandardTransient ##
                                                                                                        ## !
                                                                                                        ## Performs
                                                                                                        ## the
                                                                                                        ## symmetrical
                                                                                                        ## transformation
                                                                                                        ## of
                                                                                                        ## a
                                                                                                        ## Geometry
                                                                                                        ##
                                                                                                        ## !
                                                                                                        ## with
                                                                                                        ## respect
                                                                                                        ## to
                                                                                                        ## the
                                                                                                        ## point
                                                                                                        ## P
                                                                                                        ## which
                                                                                                        ## is
                                                                                                        ## the
                                                                                                        ## center
                                                                                                        ## of
                                                                                                        ## the
                                                                                                        ##
                                                                                                        ## !
                                                                                                        ## symmetry.


proc mirror*(this: var GeomGeometry; p: PntObj) {.cdecl, importcpp: "Mirror", header: "Geom_Geometry.hxx".}
proc mirror*(this: var GeomGeometry; a1: Ax1Obj) {.cdecl, importcpp: "Mirror", header: "Geom_Geometry.hxx".}
proc mirror*(this: var GeomGeometry; a2: Ax2Obj) {.cdecl, importcpp: "Mirror", header: "Geom_Geometry.hxx".}
proc rotate*(this: var GeomGeometry; a1: Ax1Obj; ang: cfloat) {.cdecl, importcpp: "Rotate",
    header: "Geom_Geometry.hxx".}
proc scale*(this: var GeomGeometry; p: PntObj; s: cfloat) {.cdecl, importcpp: "Scale",
    header: "Geom_Geometry.hxx".}
proc translate*(this: var GeomGeometry; v: VecObj) {.cdecl, importcpp: "Translate",
    header: "Geom_Geometry.hxx".}
proc translate*(this: var GeomGeometry; p1: PntObj; p2: PntObj) {.cdecl,
    importcpp: "Translate", header: "Geom_Geometry.hxx".}
proc transform*(this: var GeomGeometry; t: TrsfObj) {.cdecl, importcpp: "Transform",
    header: "Geom_Geometry.hxx".}
proc mirrored*(this: GeomGeometry; p: PntObj): Handle[GeomGeometry] {.noSideEffect, cdecl,
    importcpp: "Mirrored", header: "Geom_Geometry.hxx".}
proc mirrored*(this: GeomGeometry; a1: Ax1Obj): Handle[GeomGeometry] {.noSideEffect,
    cdecl, importcpp: "Mirrored", header: "Geom_Geometry.hxx".}
proc mirrored*(this: GeomGeometry; a2: Ax2Obj): Handle[GeomGeometry] {.noSideEffect,
    cdecl, importcpp: "Mirrored", header: "Geom_Geometry.hxx".}
proc rotated*(this: GeomGeometry; a1: Ax1Obj; ang: cfloat): Handle[GeomGeometry] {.
    noSideEffect, cdecl, importcpp: "Rotated", header: "Geom_Geometry.hxx".}
proc scaled*(this: GeomGeometry; p: PntObj; s: cfloat): Handle[GeomGeometry] {.
    noSideEffect, cdecl, importcpp: "Scaled", header: "Geom_Geometry.hxx".}
proc transformed*(this: GeomGeometry; t: TrsfObj): Handle[GeomGeometry] {.noSideEffect,
    cdecl, importcpp: "Transformed", header: "Geom_Geometry.hxx".}
proc translated*(this: GeomGeometry; v: VecObj): Handle[GeomGeometry] {.noSideEffect,
    cdecl, importcpp: "Translated", header: "Geom_Geometry.hxx".}
proc translated*(this: GeomGeometry; p1: PntObj; p2: PntObj): Handle[GeomGeometry] {.
    noSideEffect, cdecl, importcpp: "Translated", header: "Geom_Geometry.hxx".}
proc copy*(this: GeomGeometry): Handle[GeomGeometry] {.noSideEffect, cdecl,
    importcpp: "Copy", header: "Geom_Geometry.hxx".}
proc dumpJson*(this: GeomGeometry; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "Geom_Geometry.hxx".}