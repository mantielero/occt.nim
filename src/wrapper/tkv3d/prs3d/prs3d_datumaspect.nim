##  Created on: 1993-07-30
##  Created by: Jean-Louis FRENKEL
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

## ! A framework to define the display of datums.

type
  Prs3dDatumAspect* {.importcpp: "Prs3d_DatumAspect",
                     header: "Prs3d_DatumAspect.hxx", bycopy.} = object of Prs3dBasicAspect ##
                                                                                     ## !
                                                                                     ## An
                                                                                     ## empty
                                                                                     ## framework
                                                                                     ## to
                                                                                     ## define
                                                                                     ## the
                                                                                     ## display
                                                                                     ## of
                                                                                     ## datums.


proc newPrs3dDatumAspect*(): Prs3dDatumAspect {.cdecl, constructor,
    importcpp: "Prs3d_DatumAspect(@)", header: "Prs3d_DatumAspect.hxx".}
proc lineAspect*(this: Prs3dDatumAspect; thePart: Prs3dDatumParts): Handle[
    Prs3dLineAspect] {.noSideEffect, cdecl, importcpp: "LineAspect", header: "Prs3d_DatumAspect.hxx".}
proc shadingAspect*(this: Prs3dDatumAspect; thePart: Prs3dDatumParts): Handle[
    Prs3dShadingAspect] {.noSideEffect, cdecl, importcpp: "ShadingAspect",
                         header: "Prs3d_DatumAspect.hxx".}
proc textAspect*(this: Prs3dDatumAspect): Handle[Prs3dTextAspect] {.noSideEffect,
    cdecl, importcpp: "TextAspect", header: "Prs3d_DatumAspect.hxx".}
proc setTextAspect*(this: var Prs3dDatumAspect;
                   theTextAspect: Handle[Prs3dTextAspect]) {.cdecl,
    importcpp: "SetTextAspect", header: "Prs3d_DatumAspect.hxx".}
proc pointAspect*(this: Prs3dDatumAspect): Handle[Prs3dPointAspect] {.noSideEffect,
    cdecl, importcpp: "PointAspect", header: "Prs3d_DatumAspect.hxx".}
proc setPointAspect*(this: var Prs3dDatumAspect; theAspect: Handle[Prs3dPointAspect]) {.
    cdecl, importcpp: "SetPointAspect", header: "Prs3d_DatumAspect.hxx".}
proc arrowAspect*(this: Prs3dDatumAspect): Handle[Prs3dArrowAspect] {.noSideEffect,
    cdecl, importcpp: "ArrowAspect", header: "Prs3d_DatumAspect.hxx".}
proc setArrowAspect*(this: var Prs3dDatumAspect; theAspect: Handle[Prs3dArrowAspect]) {.
    cdecl, importcpp: "SetArrowAspect", header: "Prs3d_DatumAspect.hxx".}
proc firstAxisAspect*(this: Prs3dDatumAspect): Handle[Prs3dLineAspect] {.
    noSideEffect, cdecl, importcpp: "FirstAxisAspect", header: "Prs3d_DatumAspect.hxx".}
proc secondAxisAspect*(this: Prs3dDatumAspect): Handle[Prs3dLineAspect] {.
    noSideEffect, cdecl, importcpp: "SecondAxisAspect", header: "Prs3d_DatumAspect.hxx".}
proc thirdAxisAspect*(this: Prs3dDatumAspect): Handle[Prs3dLineAspect] {.
    noSideEffect, cdecl, importcpp: "ThirdAxisAspect", header: "Prs3d_DatumAspect.hxx".}
proc setDrawFirstAndSecondAxis*(this: var Prs3dDatumAspect; theToDraw: bool) {.cdecl,
    importcpp: "SetDrawFirstAndSecondAxis", header: "Prs3d_DatumAspect.hxx".}
proc drawFirstAndSecondAxis*(this: Prs3dDatumAspect): bool {.noSideEffect, cdecl,
    importcpp: "DrawFirstAndSecondAxis", header: "Prs3d_DatumAspect.hxx".}
proc setDrawThirdAxis*(this: var Prs3dDatumAspect; theToDraw: bool) {.cdecl,
    importcpp: "SetDrawThirdAxis", header: "Prs3d_DatumAspect.hxx".}
proc drawThirdAxis*(this: Prs3dDatumAspect): bool {.noSideEffect, cdecl,
    importcpp: "DrawThirdAxis", header: "Prs3d_DatumAspect.hxx".}
proc drawDatumPart*(this: Prs3dDatumAspect; thePart: Prs3dDatumParts): bool {.
    noSideEffect, cdecl, importcpp: "DrawDatumPart", header: "Prs3d_DatumAspect.hxx".}
proc setDrawDatumAxes*(this: var Prs3dDatumAspect; theType: Prs3dDatumAxes) {.cdecl,
    importcpp: "SetDrawDatumAxes", header: "Prs3d_DatumAspect.hxx".}
proc datumAxes*(this: Prs3dDatumAspect): Prs3dDatumAxes {.noSideEffect, cdecl,
    importcpp: "DatumAxes", header: "Prs3d_DatumAspect.hxx".}
proc setAttribute*(this: var Prs3dDatumAspect; theType: Prs3dDatumAttribute;
                  theValue: cfloat) {.cdecl, importcpp: "SetAttribute", header: "Prs3d_DatumAspect.hxx".}
proc attribute*(this: Prs3dDatumAspect; theType: Prs3dDatumAttribute): cfloat {.
    noSideEffect, cdecl, importcpp: "Attribute", header: "Prs3d_DatumAspect.hxx".}
proc setAxisLength*(this: var Prs3dDatumAspect; theL1: cfloat; theL2: cfloat;
                   theL3: cfloat) {.cdecl, importcpp: "SetAxisLength", header: "Prs3d_DatumAspect.hxx".}
proc axisLength*(this: Prs3dDatumAspect; thePart: Prs3dDatumParts): cfloat {.
    noSideEffect, cdecl, importcpp: "AxisLength", header: "Prs3d_DatumAspect.hxx".}
proc firstAxisLength*(this: Prs3dDatumAspect): cfloat {.noSideEffect, cdecl,
    importcpp: "FirstAxisLength", header: "Prs3d_DatumAspect.hxx".}
proc secondAxisLength*(this: Prs3dDatumAspect): cfloat {.noSideEffect, cdecl,
    importcpp: "SecondAxisLength", header: "Prs3d_DatumAspect.hxx".}
proc thirdAxisLength*(this: Prs3dDatumAspect): cfloat {.noSideEffect, cdecl,
    importcpp: "ThirdAxisLength", header: "Prs3d_DatumAspect.hxx".}
proc toDrawLabels*(this: Prs3dDatumAspect): bool {.noSideEffect, cdecl,
    importcpp: "ToDrawLabels", header: "Prs3d_DatumAspect.hxx".}
proc setDrawLabels*(this: var Prs3dDatumAspect; theToDraw: bool) {.cdecl,
    importcpp: "SetDrawLabels", header: "Prs3d_DatumAspect.hxx".}
proc setToDrawLabels*(this: var Prs3dDatumAspect; theToDraw: bool) {.cdecl,
    importcpp: "SetToDrawLabels", header: "Prs3d_DatumAspect.hxx".}
proc toDrawArrows*(this: Prs3dDatumAspect): bool {.noSideEffect, cdecl,
    importcpp: "ToDrawArrows", header: "Prs3d_DatumAspect.hxx".}
proc setDrawArrows*(this: var Prs3dDatumAspect; theToDraw: bool) {.cdecl,
    importcpp: "SetDrawArrows", header: "Prs3d_DatumAspect.hxx".}
proc arrowPartForAxis*(this: Prs3dDatumAspect; thePart: Prs3dDatumParts): Prs3dDatumParts {.
    noSideEffect, cdecl, importcpp: "ArrowPartForAxis", header: "Prs3d_DatumAspect.hxx".}
proc dumpJson*(this: Prs3dDatumAspect; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "Prs3d_DatumAspect.hxx".}
type
  HandlePrs3dDatumAspect* = Handle[Prs3dDatumAspect]
