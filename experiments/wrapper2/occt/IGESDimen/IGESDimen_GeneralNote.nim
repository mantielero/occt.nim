##  Created on: 1993-01-13
##  Created by: CKY / Contract Toubro-Larsen ( Deepak PRABHU )
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
discard "forward decl of IGESGraph_TextFontDef"
discard "forward decl of gp_Pnt"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of IGESDimen_GeneralNote"
discard "forward decl of IGESDimen_GeneralNote"
type
  HandleC1C1* = Handle[IGESDimenGeneralNote]

## ! defines GeneralNote, Type <212> Form <0-8, 100-200, 105>
## ! in package IGESDimen
## ! Used for formatting boxed text in different ways

type
  IGESDimenGeneralNote* {.importcpp: "IGESDimen_GeneralNote",
                         header: "IGESDimen_GeneralNote.hxx", bycopy.} = object of IGESDataIGESEntity


proc constructIGESDimenGeneralNote*(): IGESDimenGeneralNote {.constructor,
    importcpp: "IGESDimen_GeneralNote(@)", header: "IGESDimen_GeneralNote.hxx".}
proc init*(this: var IGESDimenGeneralNote; nbChars: Handle[TColStdHArray1OfInteger];
          widths: Handle[TColStdHArray1OfReal];
          heights: Handle[TColStdHArray1OfReal];
          fontCodes: Handle[TColStdHArray1OfInteger];
          fonts: Handle[IGESGraphHArray1OfTextFontDef];
          slants: Handle[TColStdHArray1OfReal];
          rotations: Handle[TColStdHArray1OfReal];
          mirrorFlags: Handle[TColStdHArray1OfInteger];
          rotFlags: Handle[TColStdHArray1OfInteger];
          start: Handle[TColgpHArray1OfXYZ];
          texts: Handle[InterfaceHArray1OfHAsciiString]) {.importcpp: "Init",
    header: "IGESDimen_GeneralNote.hxx".}
proc setFormNumber*(this: var IGESDimenGeneralNote; form: cint) {.
    importcpp: "SetFormNumber", header: "IGESDimen_GeneralNote.hxx".}
proc nbStrings*(this: IGESDimenGeneralNote): cint {.noSideEffect,
    importcpp: "NbStrings", header: "IGESDimen_GeneralNote.hxx".}
proc nbCharacters*(this: IGESDimenGeneralNote; index: cint): cint {.noSideEffect,
    importcpp: "NbCharacters", header: "IGESDimen_GeneralNote.hxx".}
proc boxWidth*(this: IGESDimenGeneralNote; index: cint): cfloat {.noSideEffect,
    importcpp: "BoxWidth", header: "IGESDimen_GeneralNote.hxx".}
proc boxHeight*(this: IGESDimenGeneralNote; index: cint): cfloat {.noSideEffect,
    importcpp: "BoxHeight", header: "IGESDimen_GeneralNote.hxx".}
proc isFontEntity*(this: IGESDimenGeneralNote; index: cint): bool {.noSideEffect,
    importcpp: "IsFontEntity", header: "IGESDimen_GeneralNote.hxx".}
proc fontCode*(this: IGESDimenGeneralNote; index: cint): cint {.noSideEffect,
    importcpp: "FontCode", header: "IGESDimen_GeneralNote.hxx".}
proc fontEntity*(this: IGESDimenGeneralNote; index: cint): Handle[
    IGESGraphTextFontDef] {.noSideEffect, importcpp: "FontEntity",
                           header: "IGESDimen_GeneralNote.hxx".}
proc slantAngle*(this: IGESDimenGeneralNote; index: cint): cfloat {.noSideEffect,
    importcpp: "SlantAngle", header: "IGESDimen_GeneralNote.hxx".}
proc rotationAngle*(this: IGESDimenGeneralNote; index: cint): cfloat {.noSideEffect,
    importcpp: "RotationAngle", header: "IGESDimen_GeneralNote.hxx".}
proc mirrorFlag*(this: IGESDimenGeneralNote; index: cint): cint {.noSideEffect,
    importcpp: "MirrorFlag", header: "IGESDimen_GeneralNote.hxx".}
proc rotateFlag*(this: IGESDimenGeneralNote; index: cint): cint {.noSideEffect,
    importcpp: "RotateFlag", header: "IGESDimen_GeneralNote.hxx".}
proc startPoint*(this: IGESDimenGeneralNote; index: cint): Pnt {.noSideEffect,
    importcpp: "StartPoint", header: "IGESDimen_GeneralNote.hxx".}
proc transformedStartPoint*(this: IGESDimenGeneralNote; index: cint): Pnt {.
    noSideEffect, importcpp: "TransformedStartPoint",
    header: "IGESDimen_GeneralNote.hxx".}
proc zDepthStartPoint*(this: IGESDimenGeneralNote; index: cint): cfloat {.
    noSideEffect, importcpp: "ZDepthStartPoint",
    header: "IGESDimen_GeneralNote.hxx".}
proc text*(this: IGESDimenGeneralNote; index: cint): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "Text", header: "IGESDimen_GeneralNote.hxx".}
type
  IGESDimenGeneralNotebaseType* = IGESDataIGESEntity

proc getTypeName*(): cstring {.importcpp: "IGESDimen_GeneralNote::get_type_name(@)",
                            header: "IGESDimen_GeneralNote.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESDimen_GeneralNote::get_type_descriptor(@)",
    header: "IGESDimen_GeneralNote.hxx".}
proc dynamicType*(this: IGESDimenGeneralNote): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "IGESDimen_GeneralNote.hxx".}

























