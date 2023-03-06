import prsdim_types, prsdim_ais_types
import ../gp/gp_types
import ../tcollection/tcollection_types
import ../ais/ais_types
import ../standard/standard_types
import ../prs3d/prs3d_types





##  Created on: 2013-11-11
##  Created by: Anastasia BORISOVA
##  Copyright (c) 2013-2014 OPEN CASCADE SAS
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






proc newPrsDimDimension*(theType: PrsDimKindOfDimension): PrsDimDimension {.cdecl,
    constructor, importcpp: "PrsDim_Dimension(@)", header: "PrsDim_Dimension.hxx".}
proc getValue*(this: PrsDimDimension): cfloat {.noSideEffect, cdecl,
    importcpp: "GetValue", header: "PrsDim_Dimension.hxx".}
proc setComputedValue*(this: var PrsDimDimension) {.cdecl,
    importcpp: "SetComputedValue", header: "PrsDim_Dimension.hxx".}
proc setCustomValue*(this: var PrsDimDimension; theValue: cfloat) {.cdecl,
    importcpp: "SetCustomValue", header: "PrsDim_Dimension.hxx".}
proc setCustomValue*(this: var PrsDimDimension; theValue: TCollectionExtendedString) {.
    cdecl, importcpp: "SetCustomValue", header: "PrsDim_Dimension.hxx".}
proc getCustomValue*(this: PrsDimDimension): TCollectionExtendedString {.
    noSideEffect, cdecl, importcpp: "GetCustomValue", header: "PrsDim_Dimension.hxx".}
proc getPlane*(this: PrsDimDimension): gp_Pln {.noSideEffect, cdecl,
    importcpp: "GetPlane", header: "PrsDim_Dimension.hxx".}
proc getGeometryType*(this: PrsDimDimension): cint {.noSideEffect, cdecl,
    importcpp: "GetGeometryType", header: "PrsDim_Dimension.hxx".}
proc setCustomPlane*(this: var PrsDimDimension; thePlane: gp_Pln) {.cdecl,
    importcpp: "SetCustomPlane", header: "PrsDim_Dimension.hxx".}
proc unsetCustomPlane*(this: var PrsDimDimension) {.cdecl,
    importcpp: "UnsetCustomPlane", header: "PrsDim_Dimension.hxx".}
proc isTextPositionCustom*(this: PrsDimDimension): bool {.noSideEffect, cdecl,
    importcpp: "IsTextPositionCustom", header: "PrsDim_Dimension.hxx".}
proc setTextPosition*(this: var PrsDimDimension; a2: gp_Pnt) {.cdecl,
    importcpp: "SetTextPosition", header: "PrsDim_Dimension.hxx".}
  ## theTextPos
proc getTextPosition*(this: PrsDimDimension): gp_Pnt {.noSideEffect, cdecl,
    importcpp: "GetTextPosition", header: "PrsDim_Dimension.hxx".}
proc dimensionAspect*(this: PrsDimDimension): Handle[Prs3dDimensionAspect] {.
    noSideEffect, cdecl, importcpp: "DimensionAspect", header: "PrsDim_Dimension.hxx".}
proc setDimensionAspect*(this: var PrsDimDimension;
                        theDimensionAspect: Handle[Prs3dDimensionAspect]) {.cdecl,
    importcpp: "SetDimensionAspect", header: "PrsDim_Dimension.hxx".}
proc kindOfDimension*(this: PrsDimDimension): PrsDimKindOfDimension {.noSideEffect,
    cdecl, importcpp: "KindOfDimension", header: "PrsDim_Dimension.hxx".}
proc `type`*(this: PrsDimDimension): AIS_KindOfInteractive {.noSideEffect, cdecl,
    importcpp: "Type", header: "PrsDim_Dimension.hxx".}
proc acceptDisplayMode*(this: PrsDimDimension; theMode: cint): bool {.noSideEffect,
    cdecl, importcpp: "AcceptDisplayMode", header: "PrsDim_Dimension.hxx".}
proc displaySpecialSymbol*(this: PrsDimDimension): PrsDimDisplaySpecialSymbol {.
    noSideEffect, cdecl, importcpp: "DisplaySpecialSymbol", header: "PrsDim_Dimension.hxx".}
proc setDisplaySpecialSymbol*(this: var PrsDimDimension;
                             theDisplaySpecSymbol: PrsDimDisplaySpecialSymbol) {.
    cdecl, importcpp: "SetDisplaySpecialSymbol", header: "PrsDim_Dimension.hxx".}
proc specialSymbol*(this: PrsDimDimension): StandardExtCharacter {.noSideEffect,
    cdecl, importcpp: "SpecialSymbol", header: "PrsDim_Dimension.hxx".}
proc setSpecialSymbol*(this: var PrsDimDimension;
                      theSpecialSymbol: StandardExtCharacter) {.cdecl,
    importcpp: "SetSpecialSymbol", header: "PrsDim_Dimension.hxx".}
proc getDisplayUnits*(this: PrsDimDimension): TCollectionAsciiString {.noSideEffect,
    cdecl, importcpp: "GetDisplayUnits", header: "PrsDim_Dimension.hxx".}
proc getModelUnits*(this: PrsDimDimension): TCollectionAsciiString {.noSideEffect,
    cdecl, importcpp: "GetModelUnits", header: "PrsDim_Dimension.hxx".}
proc setDisplayUnits*(this: var PrsDimDimension; a2: TCollectionAsciiString) {.cdecl,
    importcpp: "SetDisplayUnits", header: "PrsDim_Dimension.hxx".}
  ## theUnits
proc setModelUnits*(this: var PrsDimDimension; a2: TCollectionAsciiString) {.cdecl,
    importcpp: "SetModelUnits", header: "PrsDim_Dimension.hxx".}
  ## theUnits
proc unsetFixedTextPosition*(this: var PrsDimDimension) {.cdecl,
    importcpp: "UnsetFixedTextPosition", header: "PrsDim_Dimension.hxx".}
proc selToleranceForText2d*(this: PrsDimDimension): cfloat {.noSideEffect, cdecl,
    importcpp: "SelToleranceForText2d", header: "PrsDim_Dimension.hxx".}
proc setSelToleranceForText2d*(this: var PrsDimDimension; theTol: cfloat) {.cdecl,
    importcpp: "SetSelToleranceForText2d", header: "PrsDim_Dimension.hxx".}
proc getFlyout*(this: PrsDimDimension): cfloat {.noSideEffect, cdecl,
    importcpp: "GetFlyout", header: "PrsDim_Dimension.hxx".}
proc setFlyout*(this: var PrsDimDimension; theFlyout: cfloat) {.cdecl,
    importcpp: "SetFlyout", header: "PrsDim_Dimension.hxx".}
proc isValid*(this: PrsDimDimension): bool {.noSideEffect, cdecl,
    importcpp: "IsValid", header: "PrsDim_Dimension.hxx".}


