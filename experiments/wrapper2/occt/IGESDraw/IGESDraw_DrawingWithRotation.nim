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

import
  ../Standard/Standard, ../Standard/Standard_Type,
  IGESDraw_HArray1OfViewKindEntity, ../TColgp/TColgp_HArray1OfXY,
  ../TColStd/TColStd_HArray1OfReal, ../IGESData/IGESData_HArray1OfIGESEntity,
  ../IGESData/IGESData_IGESEntity, ../Standard/Standard_Integer,
  ../Standard/Standard_Real, ../Standard/Standard_Boolean

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
  Handle_IGESDraw_DrawingWithRotation* = handle[IGESDraw_DrawingWithRotation]

## ! defines IGESDrawingWithRotation, Type <404> Form <1>
## ! in package IGESDraw
## !
## ! Permits rotation, in addition to transformation and
## ! scaling, between the view and drawing coordinate systems

type
  IGESDraw_DrawingWithRotation* {.importcpp: "IGESDraw_DrawingWithRotation",
                                 header: "IGESDraw_DrawingWithRotation.hxx",
                                 bycopy.} = object of IGESData_IGESEntity


proc constructIGESDraw_DrawingWithRotation*(): IGESDraw_DrawingWithRotation {.
    constructor, importcpp: "IGESDraw_DrawingWithRotation(@)",
    header: "IGESDraw_DrawingWithRotation.hxx".}
proc Init*(this: var IGESDraw_DrawingWithRotation;
          allViews: handle[IGESDraw_HArray1OfViewKindEntity];
          allViewOrigins: handle[TColgp_HArray1OfXY];
          allOrientationAngles: handle[TColStd_HArray1OfReal];
          allAnnotations: handle[IGESData_HArray1OfIGESEntity]) {.
    importcpp: "Init", header: "IGESDraw_DrawingWithRotation.hxx".}
proc NbViews*(this: IGESDraw_DrawingWithRotation): Standard_Integer {.noSideEffect,
    importcpp: "NbViews", header: "IGESDraw_DrawingWithRotation.hxx".}
proc ViewItem*(this: IGESDraw_DrawingWithRotation; Index: Standard_Integer): handle[
    IGESData_ViewKindEntity] {.noSideEffect, importcpp: "ViewItem",
                              header: "IGESDraw_DrawingWithRotation.hxx".}
proc ViewOrigin*(this: IGESDraw_DrawingWithRotation; Index: Standard_Integer): gp_Pnt2d {.
    noSideEffect, importcpp: "ViewOrigin",
    header: "IGESDraw_DrawingWithRotation.hxx".}
proc OrientationAngle*(this: IGESDraw_DrawingWithRotation; Index: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "OrientationAngle",
    header: "IGESDraw_DrawingWithRotation.hxx".}
proc NbAnnotations*(this: IGESDraw_DrawingWithRotation): Standard_Integer {.
    noSideEffect, importcpp: "NbAnnotations",
    header: "IGESDraw_DrawingWithRotation.hxx".}
proc Annotation*(this: IGESDraw_DrawingWithRotation; Index: Standard_Integer): handle[
    IGESData_IGESEntity] {.noSideEffect, importcpp: "Annotation",
                          header: "IGESDraw_DrawingWithRotation.hxx".}
proc ViewToDrawing*(this: IGESDraw_DrawingWithRotation; NumView: Standard_Integer;
                   ViewCoords: gp_XYZ): gp_XY {.noSideEffect,
    importcpp: "ViewToDrawing", header: "IGESDraw_DrawingWithRotation.hxx".}
proc DrawingUnit*(this: IGESDraw_DrawingWithRotation; value: var Standard_Real): Standard_Boolean {.
    noSideEffect, importcpp: "DrawingUnit",
    header: "IGESDraw_DrawingWithRotation.hxx".}
proc DrawingSize*(this: IGESDraw_DrawingWithRotation; X: var Standard_Real;
                 Y: var Standard_Real): Standard_Boolean {.noSideEffect,
    importcpp: "DrawingSize", header: "IGESDraw_DrawingWithRotation.hxx".}
type
  IGESDraw_DrawingWithRotationbase_type* = IGESData_IGESEntity

proc get_type_name*(): cstring {.importcpp: "IGESDraw_DrawingWithRotation::get_type_name(@)",
                              header: "IGESDraw_DrawingWithRotation.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESDraw_DrawingWithRotation::get_type_descriptor(@)",
    header: "IGESDraw_DrawingWithRotation.hxx".}
proc DynamicType*(this: IGESDraw_DrawingWithRotation): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IGESDraw_DrawingWithRotation.hxx".}