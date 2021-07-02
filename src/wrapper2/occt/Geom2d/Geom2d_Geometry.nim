##  Created on: 1993-03-24
##  Created by: JCV
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
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Ax2d"
discard "forward decl of gp_Vec2d"
discard "forward decl of gp_Trsf2d"
discard "forward decl of Geom2d_Geometry"
discard "forward decl of Geom2d_Geometry"
type
  HandleGeom2dGeometry* = Handle[Geom2dGeometry]

## ! The general abstract class Geometry in 2D space describes
## ! the common behaviour of all the geometric entities.
## !
## ! All the objects derived from this class can be move with a
## ! geometric transformation. Only the transformations which
## ! doesn't modify the nature of the geometry are available in
## ! this package.
## ! The method Transform which defines a general transformation
## ! is deferred. The other specifics transformations used the
## ! method Transform.
## ! All the following transformations modify the object itself.
## ! Warning
## ! Only transformations which do not modify the nature
## ! of the geometry can be applied to Geom2d objects:
## ! this is the case with translations, rotations,
## ! symmetries and scales; this is also the case with
## ! gp_Trsf2d composite transformations which are
## ! used to define the geometric transformations applied
## ! using the Transform or Transformed functions.
## ! Note: Geometry defines the "prototype" of the
## ! abstract method Transform which is defined for each
## ! concrete type of derived object. All other
## ! transformations are implemented using the Transform method.

type
  Geom2dGeometry* {.importcpp: "Geom2d_Geometry", header: "Geom2d_Geometry.hxx",
                   bycopy.} = object of StandardTransient ## ! Performs the symmetrical transformation of a Geometry
                                                     ## ! with respect to the point P which is the center of the
                                                     ## ! symmetry and assigns the result to this geometric object.
    opencascade* {.importc: "opencascade".}: StandardNODISCARD
    opencascade* {.importc: "opencascade".}: StandardNODISCARD
    opencascade* {.importc: "opencascade".}: StandardNODISCARD
    opencascade* {.importc: "opencascade".}: StandardNODISCARD
    opencascade* {.importc: "opencascade".}: StandardNODISCARD
    opencascade* {.importc: "opencascade".}: StandardNODISCARD
    opencascade* {.importc: "opencascade".}: StandardNODISCARD


proc mirror*(this: var Geom2dGeometry; p: GpPnt2d) {.importcpp: "Mirror",
    header: "Geom2d_Geometry.hxx".}
proc mirror*(this: var Geom2dGeometry; a: GpAx2d) {.importcpp: "Mirror",
    header: "Geom2d_Geometry.hxx".}
proc rotate*(this: var Geom2dGeometry; p: GpPnt2d; ang: StandardReal) {.
    importcpp: "Rotate", header: "Geom2d_Geometry.hxx".}
proc scale*(this: var Geom2dGeometry; p: GpPnt2d; s: StandardReal) {.importcpp: "Scale",
    header: "Geom2d_Geometry.hxx".}
proc translate*(this: var Geom2dGeometry; v: GpVec2d) {.importcpp: "Translate",
    header: "Geom2d_Geometry.hxx".}
proc translate*(this: var Geom2dGeometry; p1: GpPnt2d; p2: GpPnt2d) {.
    importcpp: "Translate", header: "Geom2d_Geometry.hxx".}
proc transform*(this: var Geom2dGeometry; t: GpTrsf2d) {.importcpp: "Transform",
    header: "Geom2d_Geometry.hxx".}
## !!!Ignored construct:  :: handle < Geom2d_Geometry > [end of template] Mirrored ( const gp_Pnt2d & P ) const ;
## Error: identifier expected, but got: ::!!!

## !!!Ignored construct:  :: handle < Geom2d_Geometry > [end of template] Mirrored ( const gp_Ax2d & A ) const ;
## Error: identifier expected, but got: ::!!!

## !!!Ignored construct:  :: handle < Geom2d_Geometry > [end of template] Rotated ( const gp_Pnt2d & P , const Standard_Real Ang ) const ;
## Error: identifier expected, but got: ::!!!

## !!!Ignored construct:  :: handle < Geom2d_Geometry > [end of template] Scaled ( const gp_Pnt2d & P , const Standard_Real S ) const ;
## Error: identifier expected, but got: ::!!!

## !!!Ignored construct:  :: handle < Geom2d_Geometry > [end of template] Transformed ( const gp_Trsf2d & T ) const ;
## Error: identifier expected, but got: ::!!!

## !!!Ignored construct:  :: handle < Geom2d_Geometry > [end of template] Translated ( const gp_Vec2d & V ) const ;
## Error: identifier expected, but got: ::!!!

## !!!Ignored construct:  :: handle < Geom2d_Geometry > [end of template] Translated ( const gp_Pnt2d & P1 , const gp_Pnt2d & P2 ) const ;
## Error: identifier expected, but got: ::!!!

proc copy*(this: Geom2dGeometry): Handle[Geom2dGeometry] {.noSideEffect,
    importcpp: "Copy", header: "Geom2d_Geometry.hxx".}
proc dumpJson*(this: Geom2dGeometry; theOStream: var StandardOStream;
              theDepth: StandardInteger = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "Geom2d_Geometry.hxx".}
type
  Geom2dGeometrybaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "Geom2d_Geometry::get_type_name(@)",
                            header: "Geom2d_Geometry.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Geom2d_Geometry::get_type_descriptor(@)",
    header: "Geom2d_Geometry.hxx".}
proc dynamicType*(this: Geom2dGeometry): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Geom2d_Geometry.hxx".}

