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

discard "forward decl of TopoDS_Wire"
discard "forward decl of ShapeAnalysis_FreeBoundData"
discard "forward decl of ShapeAnalysis_FreeBoundData"
type
  HandleC1C1* = Handle[ShapeAnalysisFreeBoundData]

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
  ShapeAnalysisFreeBoundData* {.importcpp: "ShapeAnalysis_FreeBoundData",
                               header: "ShapeAnalysis_FreeBoundData.hxx", bycopy.} = object of StandardTransient ##
                                                                                                          ## !
                                                                                                          ## Empty
                                                                                                          ## constructor


proc constructShapeAnalysisFreeBoundData*(): ShapeAnalysisFreeBoundData {.
    constructor, importcpp: "ShapeAnalysis_FreeBoundData(@)",
    header: "ShapeAnalysis_FreeBoundData.hxx".}
proc constructShapeAnalysisFreeBoundData*(freebound: TopoDS_Wire): ShapeAnalysisFreeBoundData {.
    constructor, importcpp: "ShapeAnalysis_FreeBoundData(@)",
    header: "ShapeAnalysis_FreeBoundData.hxx".}
proc clear*(this: var ShapeAnalysisFreeBoundData) {.importcpp: "Clear",
    header: "ShapeAnalysis_FreeBoundData.hxx".}
proc setFreeBound*(this: var ShapeAnalysisFreeBoundData; freebound: TopoDS_Wire) {.
    importcpp: "SetFreeBound", header: "ShapeAnalysis_FreeBoundData.hxx".}
proc setArea*(this: var ShapeAnalysisFreeBoundData; area: cfloat) {.
    importcpp: "SetArea", header: "ShapeAnalysis_FreeBoundData.hxx".}
proc setPerimeter*(this: var ShapeAnalysisFreeBoundData; perimeter: cfloat) {.
    importcpp: "SetPerimeter", header: "ShapeAnalysis_FreeBoundData.hxx".}
proc setRatio*(this: var ShapeAnalysisFreeBoundData; ratio: cfloat) {.
    importcpp: "SetRatio", header: "ShapeAnalysis_FreeBoundData.hxx".}
proc setWidth*(this: var ShapeAnalysisFreeBoundData; width: cfloat) {.
    importcpp: "SetWidth", header: "ShapeAnalysis_FreeBoundData.hxx".}
proc addNotch*(this: var ShapeAnalysisFreeBoundData; notch: TopoDS_Wire; width: cfloat) {.
    importcpp: "AddNotch", header: "ShapeAnalysis_FreeBoundData.hxx".}
proc freeBound*(this: ShapeAnalysisFreeBoundData): TopoDS_Wire {.noSideEffect,
    importcpp: "FreeBound", header: "ShapeAnalysis_FreeBoundData.hxx".}
proc area*(this: ShapeAnalysisFreeBoundData): cfloat {.noSideEffect,
    importcpp: "Area", header: "ShapeAnalysis_FreeBoundData.hxx".}
proc perimeter*(this: ShapeAnalysisFreeBoundData): cfloat {.noSideEffect,
    importcpp: "Perimeter", header: "ShapeAnalysis_FreeBoundData.hxx".}
proc ratio*(this: ShapeAnalysisFreeBoundData): cfloat {.noSideEffect,
    importcpp: "Ratio", header: "ShapeAnalysis_FreeBoundData.hxx".}
proc width*(this: ShapeAnalysisFreeBoundData): cfloat {.noSideEffect,
    importcpp: "Width", header: "ShapeAnalysis_FreeBoundData.hxx".}
proc nbNotches*(this: ShapeAnalysisFreeBoundData): cint {.noSideEffect,
    importcpp: "NbNotches", header: "ShapeAnalysis_FreeBoundData.hxx".}
proc notches*(this: ShapeAnalysisFreeBoundData): Handle[TopToolsHSequenceOfShape] {.
    noSideEffect, importcpp: "Notches", header: "ShapeAnalysis_FreeBoundData.hxx".}
proc notch*(this: ShapeAnalysisFreeBoundData; index: cint): TopoDS_Wire {.
    noSideEffect, importcpp: "Notch", header: "ShapeAnalysis_FreeBoundData.hxx".}
proc notchWidth*(this: ShapeAnalysisFreeBoundData; index: cint): cfloat {.
    noSideEffect, importcpp: "NotchWidth",
    header: "ShapeAnalysis_FreeBoundData.hxx".}
proc notchWidth*(this: ShapeAnalysisFreeBoundData; notch: TopoDS_Wire): cfloat {.
    noSideEffect, importcpp: "NotchWidth",
    header: "ShapeAnalysis_FreeBoundData.hxx".}
type
  ShapeAnalysisFreeBoundDatabaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "ShapeAnalysis_FreeBoundData::get_type_name(@)",
                            header: "ShapeAnalysis_FreeBoundData.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "ShapeAnalysis_FreeBoundData::get_type_descriptor(@)",
    header: "ShapeAnalysis_FreeBoundData.hxx".}
proc dynamicType*(this: ShapeAnalysisFreeBoundData): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "ShapeAnalysis_FreeBoundData.hxx".}

























