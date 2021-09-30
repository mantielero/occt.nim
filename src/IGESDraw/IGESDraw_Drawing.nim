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
discard "forward decl of IGESDraw_Drawing"
discard "forward decl of IGESDraw_Drawing"
type
  HandleC1C1* = Handle[IGESDrawDrawing]

## ! defines IGESDrawing, Type <404> Form <0>
## ! in package IGESDraw
## !
## ! Specifies a drawing as a collection of annotation entities
## ! defined in drawing space, and views which together
## ! constitute a single representation of a part

type
  IGESDrawDrawing* {.importcpp: "IGESDraw_Drawing", header: "IGESDraw_Drawing.hxx",
                    bycopy.} = object of IGESDataIGESEntity


proc constructIGESDrawDrawing*(): IGESDrawDrawing {.constructor,
    importcpp: "IGESDraw_Drawing(@)", header: "IGESDraw_Drawing.hxx".}
proc init*(this: var IGESDrawDrawing;
          allViews: Handle[IGESDrawHArray1OfViewKindEntity];
          allViewOrigins: Handle[TColgpHArray1OfXY];
          allAnnotations: Handle[IGESDataHArray1OfIGESEntity]) {.
    importcpp: "Init", header: "IGESDraw_Drawing.hxx".}
proc nbViews*(this: IGESDrawDrawing): cint {.noSideEffect, importcpp: "NbViews",
    header: "IGESDraw_Drawing.hxx".}
proc viewItem*(this: IGESDrawDrawing; viewIndex: cint): Handle[IGESDataViewKindEntity] {.
    noSideEffect, importcpp: "ViewItem", header: "IGESDraw_Drawing.hxx".}
proc viewOrigin*(this: IGESDrawDrawing; tViewIndex: cint): Pnt2d {.noSideEffect,
    importcpp: "ViewOrigin", header: "IGESDraw_Drawing.hxx".}
proc nbAnnotations*(this: IGESDrawDrawing): cint {.noSideEffect,
    importcpp: "NbAnnotations", header: "IGESDraw_Drawing.hxx".}
proc annotation*(this: IGESDrawDrawing; annotationIndex: cint): Handle[
    IGESDataIGESEntity] {.noSideEffect, importcpp: "Annotation",
                         header: "IGESDraw_Drawing.hxx".}
proc viewToDrawing*(this: IGESDrawDrawing; numView: cint; viewCoords: Xyz): Xy {.
    noSideEffect, importcpp: "ViewToDrawing", header: "IGESDraw_Drawing.hxx".}
proc drawingUnit*(this: IGESDrawDrawing; value: var cfloat): bool {.noSideEffect,
    importcpp: "DrawingUnit", header: "IGESDraw_Drawing.hxx".}
proc drawingSize*(this: IGESDrawDrawing; x: var cfloat; y: var cfloat): bool {.
    noSideEffect, importcpp: "DrawingSize", header: "IGESDraw_Drawing.hxx".}
type
  IGESDrawDrawingbaseType* = IGESDataIGESEntity

proc getTypeName*(): cstring {.importcpp: "IGESDraw_Drawing::get_type_name(@)",
                            header: "IGESDraw_Drawing.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESDraw_Drawing::get_type_descriptor(@)",
    header: "IGESDraw_Drawing.hxx".}
proc dynamicType*(this: IGESDrawDrawing): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "IGESDraw_Drawing.hxx".}

























