import prs3d_types
import ../../tkernel/tcollection/tcollection_types
import ../../tkernel/standard/standard_types
import ../../tkernel/quantity/quantity_types



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

## ! defines the attributes when drawing a Length Presentation.



proc newPrs3dDimensionAspect*(): Prs3dDimensionAspect {.cdecl, constructor,
    importcpp: "Prs3d_DimensionAspect(@)", header: "Prs3d_DimensionAspect.hxx".}
proc lineAspect*(this: Prs3dDimensionAspect): Handle[Prs3dLineAspect] {.
    noSideEffect, cdecl, importcpp: "LineAspect", header: "Prs3d_DimensionAspect.hxx".}
proc setLineAspect*(this: var Prs3dDimensionAspect;
                   theAspect: Handle[Prs3dLineAspect]) {.cdecl,
    importcpp: "SetLineAspect", header: "Prs3d_DimensionAspect.hxx".}
proc textAspect*(this: Prs3dDimensionAspect): Handle[Prs3dTextAspect] {.
    noSideEffect, cdecl, importcpp: "TextAspect", header: "Prs3d_DimensionAspect.hxx".}
proc setTextAspect*(this: var Prs3dDimensionAspect;
                   theAspect: Handle[Prs3dTextAspect]) {.cdecl,
    importcpp: "SetTextAspect", header: "Prs3d_DimensionAspect.hxx".}
proc isText3d*(this: Prs3dDimensionAspect): bool {.noSideEffect, cdecl,
    importcpp: "IsText3d", header: "Prs3d_DimensionAspect.hxx".}
proc makeText3d*(this: var Prs3dDimensionAspect; isText3d: bool) {.cdecl,
    importcpp: "MakeText3d", header: "Prs3d_DimensionAspect.hxx".}
proc isTextShaded*(this: Prs3dDimensionAspect): bool {.noSideEffect, cdecl,
    importcpp: "IsTextShaded", header: "Prs3d_DimensionAspect.hxx".}
proc makeTextShaded*(this: var Prs3dDimensionAspect; theIsTextShaded: bool) {.cdecl,
    importcpp: "MakeTextShaded", header: "Prs3d_DimensionAspect.hxx".}
proc isArrows3d*(this: Prs3dDimensionAspect): bool {.noSideEffect, cdecl,
    importcpp: "IsArrows3d", header: "Prs3d_DimensionAspect.hxx".}
proc makeArrows3d*(this: var Prs3dDimensionAspect; theIsArrows3d: bool) {.cdecl,
    importcpp: "MakeArrows3d", header: "Prs3d_DimensionAspect.hxx".}
proc isUnitsDisplayed*(this: Prs3dDimensionAspect): bool {.noSideEffect, cdecl,
    importcpp: "IsUnitsDisplayed", header: "Prs3d_DimensionAspect.hxx".}
proc makeUnitsDisplayed*(this: var Prs3dDimensionAspect; theIsDisplayed: bool) {.
    cdecl, importcpp: "MakeUnitsDisplayed", header: "Prs3d_DimensionAspect.hxx".}
proc setArrowOrientation*(this: var Prs3dDimensionAspect;
                         theArrowOrient: Prs3dDimensionArrowOrientation) {.cdecl,
    importcpp: "SetArrowOrientation", header: "Prs3d_DimensionAspect.hxx".}
proc arrowOrientation*(this: Prs3dDimensionAspect): Prs3dDimensionArrowOrientation {.
    noSideEffect, cdecl, importcpp: "ArrowOrientation", header: "Prs3d_DimensionAspect.hxx".}
proc setTextVerticalPosition*(this: var Prs3dDimensionAspect;
                             thePosition: Prs3dDimensionTextVerticalPosition) {.
    cdecl, importcpp: "SetTextVerticalPosition", header: "Prs3d_DimensionAspect.hxx".}
proc textVerticalPosition*(this: Prs3dDimensionAspect): Prs3dDimensionTextVerticalPosition {.
    noSideEffect, cdecl, importcpp: "TextVerticalPosition", header: "Prs3d_DimensionAspect.hxx".}
proc setTextHorizontalPosition*(this: var Prs3dDimensionAspect; thePosition: Prs3dDimensionTextHorizontalPosition) {.
    cdecl, importcpp: "SetTextHorizontalPosition", header: "Prs3d_DimensionAspect.hxx".}
proc textHorizontalPosition*(this: Prs3dDimensionAspect): Prs3dDimensionTextHorizontalPosition {.
    noSideEffect, cdecl, importcpp: "TextHorizontalPosition", header: "Prs3d_DimensionAspect.hxx".}
proc arrowAspect*(this: Prs3dDimensionAspect): Handle[Prs3dArrowAspect] {.
    noSideEffect, cdecl, importcpp: "ArrowAspect", header: "Prs3d_DimensionAspect.hxx".}
proc setArrowAspect*(this: var Prs3dDimensionAspect;
                    theAspect: Handle[Prs3dArrowAspect]) {.cdecl,
    importcpp: "SetArrowAspect", header: "Prs3d_DimensionAspect.hxx".}
proc setCommonColor*(this: var Prs3dDimensionAspect; theColor: QuantityColor) {.cdecl,
    importcpp: "SetCommonColor", header: "Prs3d_DimensionAspect.hxx".}
proc setExtensionSize*(this: var Prs3dDimensionAspect; theSize: cfloat) {.cdecl,
    importcpp: "SetExtensionSize", header: "Prs3d_DimensionAspect.hxx".}
proc extensionSize*(this: Prs3dDimensionAspect): cfloat {.noSideEffect, cdecl,
    importcpp: "ExtensionSize", header: "Prs3d_DimensionAspect.hxx".}
proc setArrowTailSize*(this: var Prs3dDimensionAspect; theSize: cfloat) {.cdecl,
    importcpp: "SetArrowTailSize", header: "Prs3d_DimensionAspect.hxx".}
proc arrowTailSize*(this: Prs3dDimensionAspect): cfloat {.noSideEffect, cdecl,
    importcpp: "ArrowTailSize", header: "Prs3d_DimensionAspect.hxx".}
proc setValueStringFormat*(this: var Prs3dDimensionAspect;
                          theFormat: TCollectionAsciiString) {.cdecl,
    importcpp: "SetValueStringFormat", header: "Prs3d_DimensionAspect.hxx".}
proc valueStringFormat*(this: Prs3dDimensionAspect): TCollectionAsciiString {.
    noSideEffect, cdecl, importcpp: "ValueStringFormat", header: "Prs3d_DimensionAspect.hxx".}
proc dumpJson*(this: Prs3dDimensionAspect; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "Prs3d_DimensionAspect.hxx".}


