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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Integer,
  ../gp/gp_XYZ, ../Standard/Standard_Real,
  ../IGESData/IGESData_HArray1OfIGESEntity, ../IGESData/IGESData_IGESEntity,
  ../Standard/Standard_Boolean

discard "forward decl of IGESData_IGESEntity"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of gp_XYZ"
discard "forward decl of gp_Pnt"
discard "forward decl of IGESDimen_SectionedArea"
discard "forward decl of IGESDimen_SectionedArea"
type
  Handle_IGESDimen_SectionedArea* = handle[IGESDimen_SectionedArea]

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
  IGESDimen_SectionedArea* {.importcpp: "IGESDimen_SectionedArea",
                            header: "IGESDimen_SectionedArea.hxx", bycopy.} = object of IGESData_IGESEntity


proc constructIGESDimen_SectionedArea*(): IGESDimen_SectionedArea {.constructor,
    importcpp: "IGESDimen_SectionedArea(@)", header: "IGESDimen_SectionedArea.hxx".}
proc Init*(this: var IGESDimen_SectionedArea; aCurve: handle[IGESData_IGESEntity];
          aPattern: Standard_Integer; aPoint: gp_XYZ; aDistance: Standard_Real;
          anAngle: Standard_Real;
          someIslands: handle[IGESData_HArray1OfIGESEntity]) {.importcpp: "Init",
    header: "IGESDimen_SectionedArea.hxx".}
proc SetInverted*(this: var IGESDimen_SectionedArea; mode: Standard_Boolean) {.
    importcpp: "SetInverted", header: "IGESDimen_SectionedArea.hxx".}
proc IsInverted*(this: IGESDimen_SectionedArea): Standard_Boolean {.noSideEffect,
    importcpp: "IsInverted", header: "IGESDimen_SectionedArea.hxx".}
proc ExteriorCurve*(this: IGESDimen_SectionedArea): handle[IGESData_IGESEntity] {.
    noSideEffect, importcpp: "ExteriorCurve", header: "IGESDimen_SectionedArea.hxx".}
proc Pattern*(this: IGESDimen_SectionedArea): Standard_Integer {.noSideEffect,
    importcpp: "Pattern", header: "IGESDimen_SectionedArea.hxx".}
proc PassingPoint*(this: IGESDimen_SectionedArea): gp_Pnt {.noSideEffect,
    importcpp: "PassingPoint", header: "IGESDimen_SectionedArea.hxx".}
proc TransformedPassingPoint*(this: IGESDimen_SectionedArea): gp_Pnt {.noSideEffect,
    importcpp: "TransformedPassingPoint", header: "IGESDimen_SectionedArea.hxx".}
proc ZDepth*(this: IGESDimen_SectionedArea): Standard_Real {.noSideEffect,
    importcpp: "ZDepth", header: "IGESDimen_SectionedArea.hxx".}
proc Distance*(this: IGESDimen_SectionedArea): Standard_Real {.noSideEffect,
    importcpp: "Distance", header: "IGESDimen_SectionedArea.hxx".}
proc Angle*(this: IGESDimen_SectionedArea): Standard_Real {.noSideEffect,
    importcpp: "Angle", header: "IGESDimen_SectionedArea.hxx".}
proc NbIslands*(this: IGESDimen_SectionedArea): Standard_Integer {.noSideEffect,
    importcpp: "NbIslands", header: "IGESDimen_SectionedArea.hxx".}
proc IslandCurve*(this: IGESDimen_SectionedArea; Index: Standard_Integer): handle[
    IGESData_IGESEntity] {.noSideEffect, importcpp: "IslandCurve",
                          header: "IGESDimen_SectionedArea.hxx".}
type
  IGESDimen_SectionedAreabase_type* = IGESData_IGESEntity

proc get_type_name*(): cstring {.importcpp: "IGESDimen_SectionedArea::get_type_name(@)",
                              header: "IGESDimen_SectionedArea.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESDimen_SectionedArea::get_type_descriptor(@)",
    header: "IGESDimen_SectionedArea.hxx".}
proc DynamicType*(this: IGESDimen_SectionedArea): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESDimen_SectionedArea.hxx".}