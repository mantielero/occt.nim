##  Created on: 1993-01-09
##  Created by: CKY / Contract Toubro-Larsen ( SIVA )
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

discard "forward decl of IGESData_IGESEntity"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of gp_XYZ"
discard "forward decl of gp_Pnt"
discard "forward decl of IGESDimen_SectionedArea"
discard "forward decl of IGESDimen_SectionedArea"
type
  HandleIGESDimenSectionedArea* = Handle[IGESDimenSectionedArea]

## ! defines IGES Sectioned Area, Type <230> Form <0>,
## ! in package IGESDimen
## ! A sectioned area is a portion of a design which is to be
## ! filled with a pattern of lines. Ordinarily, this entity
## ! is used to reveal or expose shape or material characteri-
## ! stics defined by other entities. It consists of a pointer
## ! to an exterior definition curve, a specification of the
## ! pattern of lines, the coordinates of a point on a pattern
## ! line, the distance between the pattern lines, the angle
## ! between the pattern lines and the X-axis of definition
## ! space, and the specification of any enclosed definition
## ! curves (commonly known as islands).

type
  IGESDimenSectionedArea* {.importcpp: "IGESDimen_SectionedArea",
                           header: "IGESDimen_SectionedArea.hxx", bycopy.} = object of IGESDataIGESEntity


proc constructIGESDimenSectionedArea*(): IGESDimenSectionedArea {.constructor,
    importcpp: "IGESDimen_SectionedArea(@)", header: "IGESDimen_SectionedArea.hxx".}
proc init*(this: var IGESDimenSectionedArea; aCurve: Handle[IGESDataIGESEntity];
          aPattern: StandardInteger; aPoint: GpXYZ; aDistance: StandardReal;
          anAngle: StandardReal; someIslands: Handle[IGESDataHArray1OfIGESEntity]) {.
    importcpp: "Init", header: "IGESDimen_SectionedArea.hxx".}
proc setInverted*(this: var IGESDimenSectionedArea; mode: StandardBoolean) {.
    importcpp: "SetInverted", header: "IGESDimen_SectionedArea.hxx".}
proc isInverted*(this: IGESDimenSectionedArea): StandardBoolean {.noSideEffect,
    importcpp: "IsInverted", header: "IGESDimen_SectionedArea.hxx".}
proc exteriorCurve*(this: IGESDimenSectionedArea): Handle[IGESDataIGESEntity] {.
    noSideEffect, importcpp: "ExteriorCurve", header: "IGESDimen_SectionedArea.hxx".}
proc pattern*(this: IGESDimenSectionedArea): StandardInteger {.noSideEffect,
    importcpp: "Pattern", header: "IGESDimen_SectionedArea.hxx".}
proc passingPoint*(this: IGESDimenSectionedArea): GpPnt {.noSideEffect,
    importcpp: "PassingPoint", header: "IGESDimen_SectionedArea.hxx".}
proc transformedPassingPoint*(this: IGESDimenSectionedArea): GpPnt {.noSideEffect,
    importcpp: "TransformedPassingPoint", header: "IGESDimen_SectionedArea.hxx".}
proc zDepth*(this: IGESDimenSectionedArea): StandardReal {.noSideEffect,
    importcpp: "ZDepth", header: "IGESDimen_SectionedArea.hxx".}
proc distance*(this: IGESDimenSectionedArea): StandardReal {.noSideEffect,
    importcpp: "Distance", header: "IGESDimen_SectionedArea.hxx".}
proc angle*(this: IGESDimenSectionedArea): StandardReal {.noSideEffect,
    importcpp: "Angle", header: "IGESDimen_SectionedArea.hxx".}
proc nbIslands*(this: IGESDimenSectionedArea): StandardInteger {.noSideEffect,
    importcpp: "NbIslands", header: "IGESDimen_SectionedArea.hxx".}
proc islandCurve*(this: IGESDimenSectionedArea; index: StandardInteger): Handle[
    IGESDataIGESEntity] {.noSideEffect, importcpp: "IslandCurve",
                         header: "IGESDimen_SectionedArea.hxx".}
type
  IGESDimenSectionedAreabaseType* = IGESDataIGESEntity

proc getTypeName*(): cstring {.importcpp: "IGESDimen_SectionedArea::get_type_name(@)",
                            header: "IGESDimen_SectionedArea.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESDimen_SectionedArea::get_type_descriptor(@)",
    header: "IGESDimen_SectionedArea.hxx".}
proc dynamicType*(this: IGESDimenSectionedArea): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESDimen_SectionedArea.hxx".}

