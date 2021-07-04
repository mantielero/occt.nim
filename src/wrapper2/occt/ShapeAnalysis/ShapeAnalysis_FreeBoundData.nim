##  Created on: 1998-08-25
##  Created by: Pavel DURANDIN <pdn@nnov.matra-dtv.fr>
##  Copyright (c) 1998-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_Type, ../TopoDS/TopoDS_Wire,
  ../Standard/Standard_Real, ../TopTools/TopTools_HSequenceOfShape,
  ../TopTools/TopTools_DataMapOfShapeReal, ../Standard/Standard_Transient,
  ../Standard/Standard_Integer

discard "forward decl of TopoDS_Wire"
discard "forward decl of ShapeAnalysis_FreeBoundData"
discard "forward decl of ShapeAnalysis_FreeBoundData"
type
  Handle_ShapeAnalysis_FreeBoundData* = handle[ShapeAnalysis_FreeBoundData]

## ! This class is intended to represent free bound and to store
## ! its properties.
## !
## ! This class is used by ShapeAnalysis_FreeBoundsProperties
## ! class when storing each free bound and its properties.
## !
## ! The properties stored in this class are the following:
## ! - area of the contour,
## ! - perimeter of the contour,
## ! - ratio of average length to average width of the contour,
## ! - average width of contour,
## ! - notches (narrow 'V'-like sub-contours) on the contour and
## ! their maximum width.
## !
## ! This class provides methods for setting and getting fields
## ! only.

type
  ShapeAnalysis_FreeBoundData* {.importcpp: "ShapeAnalysis_FreeBoundData",
                                header: "ShapeAnalysis_FreeBoundData.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                            ## !
                                                                                                            ## Empty
                                                                                                            ## constructor


proc constructShapeAnalysis_FreeBoundData*(): ShapeAnalysis_FreeBoundData {.
    constructor, importcpp: "ShapeAnalysis_FreeBoundData(@)",
    header: "ShapeAnalysis_FreeBoundData.hxx".}
proc constructShapeAnalysis_FreeBoundData*(freebound: TopoDS_Wire): ShapeAnalysis_FreeBoundData {.
    constructor, importcpp: "ShapeAnalysis_FreeBoundData(@)",
    header: "ShapeAnalysis_FreeBoundData.hxx".}
proc Clear*(this: var ShapeAnalysis_FreeBoundData) {.importcpp: "Clear",
    header: "ShapeAnalysis_FreeBoundData.hxx".}
proc SetFreeBound*(this: var ShapeAnalysis_FreeBoundData; freebound: TopoDS_Wire) {.
    importcpp: "SetFreeBound", header: "ShapeAnalysis_FreeBoundData.hxx".}
proc SetArea*(this: var ShapeAnalysis_FreeBoundData; area: Standard_Real) {.
    importcpp: "SetArea", header: "ShapeAnalysis_FreeBoundData.hxx".}
proc SetPerimeter*(this: var ShapeAnalysis_FreeBoundData; perimeter: Standard_Real) {.
    importcpp: "SetPerimeter", header: "ShapeAnalysis_FreeBoundData.hxx".}
proc SetRatio*(this: var ShapeAnalysis_FreeBoundData; ratio: Standard_Real) {.
    importcpp: "SetRatio", header: "ShapeAnalysis_FreeBoundData.hxx".}
proc SetWidth*(this: var ShapeAnalysis_FreeBoundData; width: Standard_Real) {.
    importcpp: "SetWidth", header: "ShapeAnalysis_FreeBoundData.hxx".}
proc AddNotch*(this: var ShapeAnalysis_FreeBoundData; notch: TopoDS_Wire;
              width: Standard_Real) {.importcpp: "AddNotch",
                                    header: "ShapeAnalysis_FreeBoundData.hxx".}
proc FreeBound*(this: ShapeAnalysis_FreeBoundData): TopoDS_Wire {.noSideEffect,
    importcpp: "FreeBound", header: "ShapeAnalysis_FreeBoundData.hxx".}
proc Area*(this: ShapeAnalysis_FreeBoundData): Standard_Real {.noSideEffect,
    importcpp: "Area", header: "ShapeAnalysis_FreeBoundData.hxx".}
proc Perimeter*(this: ShapeAnalysis_FreeBoundData): Standard_Real {.noSideEffect,
    importcpp: "Perimeter", header: "ShapeAnalysis_FreeBoundData.hxx".}
proc Ratio*(this: ShapeAnalysis_FreeBoundData): Standard_Real {.noSideEffect,
    importcpp: "Ratio", header: "ShapeAnalysis_FreeBoundData.hxx".}
proc Width*(this: ShapeAnalysis_FreeBoundData): Standard_Real {.noSideEffect,
    importcpp: "Width", header: "ShapeAnalysis_FreeBoundData.hxx".}
proc NbNotches*(this: ShapeAnalysis_FreeBoundData): Standard_Integer {.noSideEffect,
    importcpp: "NbNotches", header: "ShapeAnalysis_FreeBoundData.hxx".}
proc Notches*(this: ShapeAnalysis_FreeBoundData): handle[TopTools_HSequenceOfShape] {.
    noSideEffect, importcpp: "Notches", header: "ShapeAnalysis_FreeBoundData.hxx".}
proc Notch*(this: ShapeAnalysis_FreeBoundData; index: Standard_Integer): TopoDS_Wire {.
    noSideEffect, importcpp: "Notch", header: "ShapeAnalysis_FreeBoundData.hxx".}
proc NotchWidth*(this: ShapeAnalysis_FreeBoundData; index: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "NotchWidth",
    header: "ShapeAnalysis_FreeBoundData.hxx".}
proc NotchWidth*(this: ShapeAnalysis_FreeBoundData; notch: TopoDS_Wire): Standard_Real {.
    noSideEffect, importcpp: "NotchWidth",
    header: "ShapeAnalysis_FreeBoundData.hxx".}
type
  ShapeAnalysis_FreeBoundDatabase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "ShapeAnalysis_FreeBoundData::get_type_name(@)",
                              header: "ShapeAnalysis_FreeBoundData.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "ShapeAnalysis_FreeBoundData::get_type_descriptor(@)",
    header: "ShapeAnalysis_FreeBoundData.hxx".}
proc DynamicType*(this: ShapeAnalysis_FreeBoundData): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "ShapeAnalysis_FreeBoundData.hxx".}