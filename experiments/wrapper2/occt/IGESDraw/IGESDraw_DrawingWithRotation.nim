##  Created on: 1993-01-09
##  Created by: CKY / Contract Toubro-Larsen ( TCD )
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

discard "forward decl of Standard_DimensionMismatch"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of IGESData_ViewKindEntity"
discard "forward decl of gp_Pnt2d"
discard "forward decl of IGESData_IGESEntity"
discard "forward decl of gp_XY"
discard "forward decl of gp_XYZ"
discard "forward decl of IGESDraw_DrawingWithRotation"
discard "forward decl of IGESDraw_DrawingWithRotation"
type
  HandleIGESDrawDrawingWithRotation* = Handle[IGESDrawDrawingWithRotation]

## ! defines IGESDrawingWithRotation, Type <404> Form <1>
## ! in package IGESDraw
## !
## ! Permits rotation, in addition to transformation and
## ! scaling, between the view and drawing coordinate systems

type
  IGESDrawDrawingWithRotation* {.importcpp: "IGESDraw_DrawingWithRotation",
                                header: "IGESDraw_DrawingWithRotation.hxx", bycopy.} = object of IGESDataIGESEntity


proc constructIGESDrawDrawingWithRotation*(): IGESDrawDrawingWithRotation {.
    constructor, importcpp: "IGESDraw_DrawingWithRotation(@)",
    header: "IGESDraw_DrawingWithRotation.hxx".}
proc init*(this: var IGESDrawDrawingWithRotation;
          allViews: Handle[IGESDrawHArray1OfViewKindEntity];
          allViewOrigins: Handle[TColgpHArray1OfXY];
          allOrientationAngles: Handle[TColStdHArray1OfReal];
          allAnnotations: Handle[IGESDataHArray1OfIGESEntity]) {.
    importcpp: "Init", header: "IGESDraw_DrawingWithRotation.hxx".}
proc nbViews*(this: IGESDrawDrawingWithRotation): int {.noSideEffect,
    importcpp: "NbViews", header: "IGESDraw_DrawingWithRotation.hxx".}
proc viewItem*(this: IGESDrawDrawingWithRotation; index: int): Handle[
    IGESDataViewKindEntity] {.noSideEffect, importcpp: "ViewItem",
                             header: "IGESDraw_DrawingWithRotation.hxx".}
proc viewOrigin*(this: IGESDrawDrawingWithRotation; index: int): Pnt2d {.noSideEffect,
    importcpp: "ViewOrigin", header: "IGESDraw_DrawingWithRotation.hxx".}
proc orientationAngle*(this: IGESDrawDrawingWithRotation; index: int): float {.
    noSideEffect, importcpp: "OrientationAngle",
    header: "IGESDraw_DrawingWithRotation.hxx".}
proc nbAnnotations*(this: IGESDrawDrawingWithRotation): int {.noSideEffect,
    importcpp: "NbAnnotations", header: "IGESDraw_DrawingWithRotation.hxx".}
proc annotation*(this: IGESDrawDrawingWithRotation; index: int): Handle[
    IGESDataIGESEntity] {.noSideEffect, importcpp: "Annotation",
                         header: "IGESDraw_DrawingWithRotation.hxx".}
proc viewToDrawing*(this: IGESDrawDrawingWithRotation; numView: int; viewCoords: Xyz): Xy {.
    noSideEffect, importcpp: "ViewToDrawing",
    header: "IGESDraw_DrawingWithRotation.hxx".}
proc drawingUnit*(this: IGESDrawDrawingWithRotation; value: var float): bool {.
    noSideEffect, importcpp: "DrawingUnit",
    header: "IGESDraw_DrawingWithRotation.hxx".}
proc drawingSize*(this: IGESDrawDrawingWithRotation; x: var float; y: var float): bool {.
    noSideEffect, importcpp: "DrawingSize",
    header: "IGESDraw_DrawingWithRotation.hxx".}
type
  IGESDrawDrawingWithRotationbaseType* = IGESDataIGESEntity

proc getTypeName*(): cstring {.importcpp: "IGESDraw_DrawingWithRotation::get_type_name(@)",
                            header: "IGESDraw_DrawingWithRotation.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESDraw_DrawingWithRotation::get_type_descriptor(@)",
    header: "IGESDraw_DrawingWithRotation.hxx".}
proc dynamicType*(this: IGESDrawDrawingWithRotation): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IGESDraw_DrawingWithRotation.hxx".}
