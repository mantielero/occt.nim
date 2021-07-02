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

discard "forward decl of IGESData_IGESEntity"
discard "forward decl of gp_XYZ"
discard "forward decl of gp_Vec"
discard "forward decl of IGESGeom_OffsetCurve"
discard "forward decl of IGESGeom_OffsetCurve"
type
  HandleIGESGeomOffsetCurve* = Handle[IGESGeomOffsetCurve]

## ! defines IGESOffsetCurve, Type <130> Form <0>
## ! in package IGESGeom
## ! An OffsetCurve entity contains the data necessary to
## ! determine the offset of a given curve C. This entity
## ! points to the base curve to be offset and contains
## ! offset distance and other pertinent information.

type
  IGESGeomOffsetCurve* {.importcpp: "IGESGeom_OffsetCurve",
                        header: "IGESGeom_OffsetCurve.hxx", bycopy.} = object of IGESDataIGESEntity


proc constructIGESGeomOffsetCurve*(): IGESGeomOffsetCurve {.constructor,
    importcpp: "IGESGeom_OffsetCurve(@)", header: "IGESGeom_OffsetCurve.hxx".}
proc init*(this: var IGESGeomOffsetCurve; aBaseCurve: Handle[IGESDataIGESEntity];
          anOffsetType: StandardInteger; aFunction: Handle[IGESDataIGESEntity];
          aFunctionCoord: StandardInteger; aTaperedOffsetType: StandardInteger;
          offDistance1: StandardReal; arcLength1: StandardReal;
          offDistance2: StandardReal; arcLength2: StandardReal; aNormalVec: GpXYZ;
          anOffsetParam: StandardReal; anotherOffsetParam: StandardReal) {.
    importcpp: "Init", header: "IGESGeom_OffsetCurve.hxx".}
proc baseCurve*(this: IGESGeomOffsetCurve): Handle[IGESDataIGESEntity] {.
    noSideEffect, importcpp: "BaseCurve", header: "IGESGeom_OffsetCurve.hxx".}
proc offsetType*(this: IGESGeomOffsetCurve): StandardInteger {.noSideEffect,
    importcpp: "OffsetType", header: "IGESGeom_OffsetCurve.hxx".}
proc function*(this: IGESGeomOffsetCurve): Handle[IGESDataIGESEntity] {.
    noSideEffect, importcpp: "Function", header: "IGESGeom_OffsetCurve.hxx".}
proc hasFunction*(this: IGESGeomOffsetCurve): StandardBoolean {.noSideEffect,
    importcpp: "HasFunction", header: "IGESGeom_OffsetCurve.hxx".}
proc functionParameter*(this: IGESGeomOffsetCurve): StandardInteger {.noSideEffect,
    importcpp: "FunctionParameter", header: "IGESGeom_OffsetCurve.hxx".}
proc taperedOffsetType*(this: IGESGeomOffsetCurve): StandardInteger {.noSideEffect,
    importcpp: "TaperedOffsetType", header: "IGESGeom_OffsetCurve.hxx".}
proc firstOffsetDistance*(this: IGESGeomOffsetCurve): StandardReal {.noSideEffect,
    importcpp: "FirstOffsetDistance", header: "IGESGeom_OffsetCurve.hxx".}
proc arcLength1*(this: IGESGeomOffsetCurve): StandardReal {.noSideEffect,
    importcpp: "ArcLength1", header: "IGESGeom_OffsetCurve.hxx".}
proc secondOffsetDistance*(this: IGESGeomOffsetCurve): StandardReal {.noSideEffect,
    importcpp: "SecondOffsetDistance", header: "IGESGeom_OffsetCurve.hxx".}
proc arcLength2*(this: IGESGeomOffsetCurve): StandardReal {.noSideEffect,
    importcpp: "ArcLength2", header: "IGESGeom_OffsetCurve.hxx".}
proc normalVector*(this: IGESGeomOffsetCurve): GpVec {.noSideEffect,
    importcpp: "NormalVector", header: "IGESGeom_OffsetCurve.hxx".}
proc transformedNormalVector*(this: IGESGeomOffsetCurve): GpVec {.noSideEffect,
    importcpp: "TransformedNormalVector", header: "IGESGeom_OffsetCurve.hxx".}
proc parameters*(this: IGESGeomOffsetCurve; startParam: var StandardReal;
                endParam: var StandardReal) {.noSideEffect, importcpp: "Parameters",
    header: "IGESGeom_OffsetCurve.hxx".}
proc startParameter*(this: IGESGeomOffsetCurve): StandardReal {.noSideEffect,
    importcpp: "StartParameter", header: "IGESGeom_OffsetCurve.hxx".}
proc endParameter*(this: IGESGeomOffsetCurve): StandardReal {.noSideEffect,
    importcpp: "EndParameter", header: "IGESGeom_OffsetCurve.hxx".}
type
  IGESGeomOffsetCurvebaseType* = IGESDataIGESEntity

proc getTypeName*(): cstring {.importcpp: "IGESGeom_OffsetCurve::get_type_name(@)",
                            header: "IGESGeom_OffsetCurve.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESGeom_OffsetCurve::get_type_descriptor(@)",
    header: "IGESGeom_OffsetCurve.hxx".}
proc dynamicType*(this: IGESGeomOffsetCurve): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "IGESGeom_OffsetCurve.hxx".}

