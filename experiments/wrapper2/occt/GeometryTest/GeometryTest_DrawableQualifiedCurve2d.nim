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

import
  ../Standard/Standard, ../DrawTrSurf/DrawTrSurf_Curve2d,
  ../GccEnt/GccEnt_Position

discard "forward decl of Geom2d_Curve"
discard "forward decl of GeometryTest_DrawableQualifiedCurve2d"
discard "forward decl of GeometryTest_DrawableQualifiedCurve2d"
type
  Handle_GeometryTest_DrawableQualifiedCurve2d* = handle[
      GeometryTest_DrawableQualifiedCurve2d]

## ! Create geom curve drawable presentation with the position of a solution of a construction algorithm.

type
  GeometryTest_DrawableQualifiedCurve2d* {.
      importcpp: "GeometryTest_DrawableQualifiedCurve2d",
      header: "GeometryTest_DrawableQualifiedCurve2d.hxx", bycopy.} = object of DrawTrSurf_Curve2d ##
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


proc constructGeometryTest_DrawableQualifiedCurve2d*(
    theCurve: handle[Geom2d_Curve]; thePosition: GccEnt_Position;
    theDispOrigin: Standard_Boolean = Standard_True): GeometryTest_DrawableQualifiedCurve2d {.
    constructor, importcpp: "GeometryTest_DrawableQualifiedCurve2d(@)",
    header: "GeometryTest_DrawableQualifiedCurve2d.hxx".}
proc constructGeometryTest_DrawableQualifiedCurve2d*(
    theCurve: handle[Geom2d_Curve]; theColor: Draw_Color;
    theDiscret: Standard_Integer; thePosition: GccEnt_Position;
    theDispOrigin: Standard_Boolean = Standard_True;
    theDispCurvRadius: Standard_Boolean = Standard_False;
    theRadiusMax: Standard_Real = 1.0e3; theRatioOfRadius: Standard_Real = 0.1): GeometryTest_DrawableQualifiedCurve2d {.
    constructor, importcpp: "GeometryTest_DrawableQualifiedCurve2d(@)",
    header: "GeometryTest_DrawableQualifiedCurve2d.hxx".}
proc GetPosition*(this: GeometryTest_DrawableQualifiedCurve2d): GccEnt_Position {.
    noSideEffect, importcpp: "GetPosition",
    header: "GeometryTest_DrawableQualifiedCurve2d.hxx".}
proc SetPosition*(this: var GeometryTest_DrawableQualifiedCurve2d;
                 thePosition: GccEnt_Position) {.importcpp: "SetPosition",
    header: "GeometryTest_DrawableQualifiedCurve2d.hxx".}
proc DrawOn*(this: GeometryTest_DrawableQualifiedCurve2d;
            theDisplay: var Draw_Display) {.noSideEffect, importcpp: "DrawOn",
    header: "GeometryTest_DrawableQualifiedCurve2d.hxx".}
proc Dump*(this: GeometryTest_DrawableQualifiedCurve2d; S: var Standard_OStream) {.
    noSideEffect, importcpp: "Dump",
    header: "GeometryTest_DrawableQualifiedCurve2d.hxx".}
proc Whatis*(this: GeometryTest_DrawableQualifiedCurve2d; I: var Draw_Interpretor) {.
    noSideEffect, importcpp: "Whatis",
    header: "GeometryTest_DrawableQualifiedCurve2d.hxx".}
type
  GeometryTest_DrawableQualifiedCurve2dbase_type* = DrawTrSurf_Curve2d

proc get_type_name*(): cstring {.importcpp: "GeometryTest_DrawableQualifiedCurve2d::get_type_name(@)", header: "GeometryTest_DrawableQualifiedCurve2d.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "GeometryTest_DrawableQualifiedCurve2d::get_type_descriptor(@)",
    header: "GeometryTest_DrawableQualifiedCurve2d.hxx".}
proc DynamicType*(this: GeometryTest_DrawableQualifiedCurve2d): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType",
                    header: "GeometryTest_DrawableQualifiedCurve2d.hxx".}