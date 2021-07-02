##  Created on: 2017-06-16
##  Created by: Natalia ERMOLAEVA
##  Copyright (c) 2017 OPEN CASCADE SAS
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

discard "forward decl of Geom2d_Curve"
discard "forward decl of GeometryTest_DrawableQualifiedCurve2d"
discard "forward decl of GeometryTest_DrawableQualifiedCurve2d"
type
  HandleGeometryTestDrawableQualifiedCurve2d* = Handle[
      GeometryTestDrawableQualifiedCurve2d]

## ! Create geom curve drawable presentation with the position of a solution of a construction algorithm.

type
  GeometryTestDrawableQualifiedCurve2d* {.
      importcpp: "GeometryTest_DrawableQualifiedCurve2d",
      header: "GeometryTest_DrawableQualifiedCurve2d.hxx", bycopy.} = object of DrawTrSurfCurve2d ##
                                                                                           ## !
                                                                                           ## Creates
                                                                                           ## a
                                                                                           ## drawable
                                                                                           ## curve
                                                                                           ## from
                                                                                           ## a
                                                                                           ## curve
                                                                                           ## of
                                                                                           ## package
                                                                                           ## Geom.


proc constructGeometryTestDrawableQualifiedCurve2d*(
    theCurve: Handle[Geom2dCurve]; thePosition: GccEntPosition;
    theDispOrigin: StandardBoolean = standardTrue): GeometryTestDrawableQualifiedCurve2d {.
    constructor, importcpp: "GeometryTest_DrawableQualifiedCurve2d(@)",
    header: "GeometryTest_DrawableQualifiedCurve2d.hxx".}
proc constructGeometryTestDrawableQualifiedCurve2d*(
    theCurve: Handle[Geom2dCurve]; theColor: DrawColor; theDiscret: StandardInteger;
    thePosition: GccEntPosition; theDispOrigin: StandardBoolean = standardTrue;
    theDispCurvRadius: StandardBoolean = standardFalse;
    theRadiusMax: StandardReal = 1.0e3; theRatioOfRadius: StandardReal = 0.1): GeometryTestDrawableQualifiedCurve2d {.
    constructor, importcpp: "GeometryTest_DrawableQualifiedCurve2d(@)",
    header: "GeometryTest_DrawableQualifiedCurve2d.hxx".}
proc getPosition*(this: GeometryTestDrawableQualifiedCurve2d): GccEntPosition {.
    noSideEffect, importcpp: "GetPosition",
    header: "GeometryTest_DrawableQualifiedCurve2d.hxx".}
proc setPosition*(this: var GeometryTestDrawableQualifiedCurve2d;
                 thePosition: GccEntPosition) {.importcpp: "SetPosition",
    header: "GeometryTest_DrawableQualifiedCurve2d.hxx".}
proc drawOn*(this: GeometryTestDrawableQualifiedCurve2d;
            theDisplay: var DrawDisplay) {.noSideEffect, importcpp: "DrawOn", header: "GeometryTest_DrawableQualifiedCurve2d.hxx".}
proc dump*(this: GeometryTestDrawableQualifiedCurve2d; s: var StandardOStream) {.
    noSideEffect, importcpp: "Dump",
    header: "GeometryTest_DrawableQualifiedCurve2d.hxx".}
proc whatis*(this: GeometryTestDrawableQualifiedCurve2d; i: var DrawInterpretor) {.
    noSideEffect, importcpp: "Whatis",
    header: "GeometryTest_DrawableQualifiedCurve2d.hxx".}
type
  GeometryTestDrawableQualifiedCurve2dbaseType* = DrawTrSurfCurve2d

proc getTypeName*(): cstring {.importcpp: "GeometryTest_DrawableQualifiedCurve2d::get_type_name(@)",
                            header: "GeometryTest_DrawableQualifiedCurve2d.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "GeometryTest_DrawableQualifiedCurve2d::get_type_descriptor(@)",
    header: "GeometryTest_DrawableQualifiedCurve2d.hxx".}
proc dynamicType*(this: GeometryTestDrawableQualifiedCurve2d): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "GeometryTest_DrawableQualifiedCurve2d.hxx".}

