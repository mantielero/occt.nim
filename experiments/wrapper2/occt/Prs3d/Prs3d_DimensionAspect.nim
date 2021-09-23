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
  Prs3d_ArrowAspect, Prs3d_DimensionArrowOrientation,
  Prs3d_DimensionTextHorizontalPosition, Prs3d_DimensionTextVerticalPosition,
  Prs3d_LineAspect, Prs3d_TextAspect, ../TCollection/TCollection_AsciiString

## ! defines the attributes when drawing a Length Presentation.

type
  Prs3d_DimensionAspect* {.importcpp: "Prs3d_DimensionAspect",
                          header: "Prs3d_DimensionAspect.hxx", bycopy.} = object of Prs3d_BasicAspect ##
                                                                                               ## !
                                                                                               ## Constructs
                                                                                               ## an
                                                                                               ## empty
                                                                                               ## framework
                                                                                               ## to
                                                                                               ## define
                                                                                               ## the
                                                                                               ## display
                                                                                               ## of
                                                                                               ## dimensions.

  Prs3d_DimensionAspectbase_type* = Prs3d_BasicAspect

proc get_type_name*(): cstring {.importcpp: "Prs3d_DimensionAspect::get_type_name(@)",
                              header: "Prs3d_DimensionAspect.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Prs3d_DimensionAspect::get_type_descriptor(@)",
    header: "Prs3d_DimensionAspect.hxx".}
proc DynamicType*(this: Prs3d_DimensionAspect): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "Prs3d_DimensionAspect.hxx".}
proc constructPrs3d_DimensionAspect*(): Prs3d_DimensionAspect {.constructor,
    importcpp: "Prs3d_DimensionAspect(@)", header: "Prs3d_DimensionAspect.hxx".}
proc LineAspect*(this: Prs3d_DimensionAspect): handle[Prs3d_LineAspect] {.
    noSideEffect, importcpp: "LineAspect", header: "Prs3d_DimensionAspect.hxx".}
proc SetLineAspect*(this: var Prs3d_DimensionAspect;
                   theAspect: handle[Prs3d_LineAspect]) {.
    importcpp: "SetLineAspect", header: "Prs3d_DimensionAspect.hxx".}
proc TextAspect*(this: Prs3d_DimensionAspect): handle[Prs3d_TextAspect] {.
    noSideEffect, importcpp: "TextAspect", header: "Prs3d_DimensionAspect.hxx".}
proc SetTextAspect*(this: var Prs3d_DimensionAspect;
                   theAspect: handle[Prs3d_TextAspect]) {.
    importcpp: "SetTextAspect", header: "Prs3d_DimensionAspect.hxx".}
proc IsText3d*(this: Prs3d_DimensionAspect): Standard_Boolean {.noSideEffect,
    importcpp: "IsText3d", header: "Prs3d_DimensionAspect.hxx".}
proc MakeText3d*(this: var Prs3d_DimensionAspect; isText3d: Standard_Boolean) {.
    importcpp: "MakeText3d", header: "Prs3d_DimensionAspect.hxx".}
proc IsTextShaded*(this: Prs3d_DimensionAspect): Standard_Boolean {.noSideEffect,
    importcpp: "IsTextShaded", header: "Prs3d_DimensionAspect.hxx".}
proc MakeTextShaded*(this: var Prs3d_DimensionAspect;
                    theIsTextShaded: Standard_Boolean) {.
    importcpp: "MakeTextShaded", header: "Prs3d_DimensionAspect.hxx".}
proc IsArrows3d*(this: Prs3d_DimensionAspect): Standard_Boolean {.noSideEffect,
    importcpp: "IsArrows3d", header: "Prs3d_DimensionAspect.hxx".}
proc MakeArrows3d*(this: var Prs3d_DimensionAspect; theIsArrows3d: Standard_Boolean) {.
    importcpp: "MakeArrows3d", header: "Prs3d_DimensionAspect.hxx".}
proc IsUnitsDisplayed*(this: Prs3d_DimensionAspect): Standard_Boolean {.
    noSideEffect, importcpp: "IsUnitsDisplayed",
    header: "Prs3d_DimensionAspect.hxx".}
proc MakeUnitsDisplayed*(this: var Prs3d_DimensionAspect;
                        theIsDisplayed: Standard_Boolean) {.
    importcpp: "MakeUnitsDisplayed", header: "Prs3d_DimensionAspect.hxx".}
proc SetArrowOrientation*(this: var Prs3d_DimensionAspect;
                         theArrowOrient: Prs3d_DimensionArrowOrientation) {.
    importcpp: "SetArrowOrientation", header: "Prs3d_DimensionAspect.hxx".}
proc ArrowOrientation*(this: Prs3d_DimensionAspect): Prs3d_DimensionArrowOrientation {.
    noSideEffect, importcpp: "ArrowOrientation",
    header: "Prs3d_DimensionAspect.hxx".}
proc SetTextVerticalPosition*(this: var Prs3d_DimensionAspect;
                             thePosition: Prs3d_DimensionTextVerticalPosition) {.
    importcpp: "SetTextVerticalPosition", header: "Prs3d_DimensionAspect.hxx".}
proc TextVerticalPosition*(this: Prs3d_DimensionAspect): Prs3d_DimensionTextVerticalPosition {.
    noSideEffect, importcpp: "TextVerticalPosition",
    header: "Prs3d_DimensionAspect.hxx".}
proc SetTextHorizontalPosition*(this: var Prs3d_DimensionAspect; thePosition: Prs3d_DimensionTextHorizontalPosition) {.
    importcpp: "SetTextHorizontalPosition", header: "Prs3d_DimensionAspect.hxx".}
proc TextHorizontalPosition*(this: Prs3d_DimensionAspect): Prs3d_DimensionTextHorizontalPosition {.
    noSideEffect, importcpp: "TextHorizontalPosition",
    header: "Prs3d_DimensionAspect.hxx".}
proc ArrowAspect*(this: Prs3d_DimensionAspect): handle[Prs3d_ArrowAspect] {.
    noSideEffect, importcpp: "ArrowAspect", header: "Prs3d_DimensionAspect.hxx".}
proc SetArrowAspect*(this: var Prs3d_DimensionAspect;
                    theAspect: handle[Prs3d_ArrowAspect]) {.
    importcpp: "SetArrowAspect", header: "Prs3d_DimensionAspect.hxx".}
proc SetCommonColor*(this: var Prs3d_DimensionAspect; theColor: Quantity_Color) {.
    importcpp: "SetCommonColor", header: "Prs3d_DimensionAspect.hxx".}
proc SetExtensionSize*(this: var Prs3d_DimensionAspect; theSize: Standard_Real) {.
    importcpp: "SetExtensionSize", header: "Prs3d_DimensionAspect.hxx".}
proc ExtensionSize*(this: Prs3d_DimensionAspect): Standard_Real {.noSideEffect,
    importcpp: "ExtensionSize", header: "Prs3d_DimensionAspect.hxx".}
proc SetArrowTailSize*(this: var Prs3d_DimensionAspect; theSize: Standard_Real) {.
    importcpp: "SetArrowTailSize", header: "Prs3d_DimensionAspect.hxx".}
proc ArrowTailSize*(this: Prs3d_DimensionAspect): Standard_Real {.noSideEffect,
    importcpp: "ArrowTailSize", header: "Prs3d_DimensionAspect.hxx".}
proc SetValueStringFormat*(this: var Prs3d_DimensionAspect;
                          theFormat: TCollection_AsciiString) {.
    importcpp: "SetValueStringFormat", header: "Prs3d_DimensionAspect.hxx".}
proc ValueStringFormat*(this: Prs3d_DimensionAspect): TCollection_AsciiString {.
    noSideEffect, importcpp: "ValueStringFormat",
    header: "Prs3d_DimensionAspect.hxx".}
proc DumpJson*(this: Prs3d_DimensionAspect; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "Prs3d_DimensionAspect.hxx".}
discard "forward decl of Prs3d_DimensionAspect"
type
  Handle_Prs3d_DimensionAspect* = handle[Prs3d_DimensionAspect]
