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
discard "forward decl of gp_XYZ"
discard "forward decl of gp_Pnt"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of IGESData_IGESEntity"
discard "forward decl of IGESDimen_NewGeneralNote"
discard "forward decl of IGESDimen_NewGeneralNote"
type
  HandleIGESDimenNewGeneralNote* = Handle[IGESDimenNewGeneralNote]

## ! defines NewGeneralNote, Type <213> Form <0>
## ! in package IGESDimen
## ! Further attributes for formatting text strings

type
  IGESDimenNewGeneralNote* {.importcpp: "IGESDimen_NewGeneralNote",
                            header: "IGESDimen_NewGeneralNote.hxx", bycopy.} = object of IGESDataIGESEntity


proc constructIGESDimenNewGeneralNote*(): IGESDimenNewGeneralNote {.constructor,
    importcpp: "IGESDimen_NewGeneralNote(@)",
    header: "IGESDimen_NewGeneralNote.hxx".}
proc init*(this: var IGESDimenNewGeneralNote; width: float; height: float;
          justifyCode: int; areaLoc: Xyz; areaRotationAngle: float; baseLinePos: Xyz;
          normalInterlineSpace: float;
          charDisplays: Handle[TColStdHArray1OfInteger];
          charWidths: Handle[TColStdHArray1OfReal];
          charHeights: Handle[TColStdHArray1OfReal];
          interCharSpc: Handle[TColStdHArray1OfReal];
          interLineSpc: Handle[TColStdHArray1OfReal];
          fontStyles: Handle[TColStdHArray1OfInteger];
          charAngles: Handle[TColStdHArray1OfReal];
          controlCodeStrings: Handle[InterfaceHArray1OfHAsciiString];
          nbChars: Handle[TColStdHArray1OfInteger];
          boxWidths: Handle[TColStdHArray1OfReal];
          boxHeights: Handle[TColStdHArray1OfReal];
          charSetCodes: Handle[TColStdHArray1OfInteger];
          charSetEntities: Handle[IGESDataHArray1OfIGESEntity];
          slAngles: Handle[TColStdHArray1OfReal];
          rotAngles: Handle[TColStdHArray1OfReal];
          mirrorFlags: Handle[TColStdHArray1OfInteger];
          rotateFlags: Handle[TColStdHArray1OfInteger];
          startPoints: Handle[TColgpHArray1OfXYZ];
          texts: Handle[InterfaceHArray1OfHAsciiString]) {.importcpp: "Init",
    header: "IGESDimen_NewGeneralNote.hxx".}
proc textWidth*(this: IGESDimenNewGeneralNote): float {.noSideEffect,
    importcpp: "TextWidth", header: "IGESDimen_NewGeneralNote.hxx".}
proc textHeight*(this: IGESDimenNewGeneralNote): float {.noSideEffect,
    importcpp: "TextHeight", header: "IGESDimen_NewGeneralNote.hxx".}
proc justifyCode*(this: IGESDimenNewGeneralNote): int {.noSideEffect,
    importcpp: "JustifyCode", header: "IGESDimen_NewGeneralNote.hxx".}
proc areaLocation*(this: IGESDimenNewGeneralNote): Pnt {.noSideEffect,
    importcpp: "AreaLocation", header: "IGESDimen_NewGeneralNote.hxx".}
proc transformedAreaLocation*(this: IGESDimenNewGeneralNote): Pnt {.noSideEffect,
    importcpp: "TransformedAreaLocation", header: "IGESDimen_NewGeneralNote.hxx".}
proc zDepthAreaLocation*(this: IGESDimenNewGeneralNote): float {.noSideEffect,
    importcpp: "ZDepthAreaLocation", header: "IGESDimen_NewGeneralNote.hxx".}
proc areaRotationAngle*(this: IGESDimenNewGeneralNote): float {.noSideEffect,
    importcpp: "AreaRotationAngle", header: "IGESDimen_NewGeneralNote.hxx".}
proc baseLinePosition*(this: IGESDimenNewGeneralNote): Pnt {.noSideEffect,
    importcpp: "BaseLinePosition", header: "IGESDimen_NewGeneralNote.hxx".}
proc transformedBaseLinePosition*(this: IGESDimenNewGeneralNote): Pnt {.
    noSideEffect, importcpp: "TransformedBaseLinePosition",
    header: "IGESDimen_NewGeneralNote.hxx".}
proc zDepthBaseLinePosition*(this: IGESDimenNewGeneralNote): float {.noSideEffect,
    importcpp: "ZDepthBaseLinePosition", header: "IGESDimen_NewGeneralNote.hxx".}
proc normalInterlineSpace*(this: IGESDimenNewGeneralNote): float {.noSideEffect,
    importcpp: "NormalInterlineSpace", header: "IGESDimen_NewGeneralNote.hxx".}
proc nbStrings*(this: IGESDimenNewGeneralNote): int {.noSideEffect,
    importcpp: "NbStrings", header: "IGESDimen_NewGeneralNote.hxx".}
proc characterDisplay*(this: IGESDimenNewGeneralNote; index: int): int {.noSideEffect,
    importcpp: "CharacterDisplay", header: "IGESDimen_NewGeneralNote.hxx".}
proc isVariable*(this: IGESDimenNewGeneralNote; index: int): bool {.noSideEffect,
    importcpp: "IsVariable", header: "IGESDimen_NewGeneralNote.hxx".}
proc characterWidth*(this: IGESDimenNewGeneralNote; index: int): float {.noSideEffect,
    importcpp: "CharacterWidth", header: "IGESDimen_NewGeneralNote.hxx".}
proc characterHeight*(this: IGESDimenNewGeneralNote; index: int): float {.
    noSideEffect, importcpp: "CharacterHeight",
    header: "IGESDimen_NewGeneralNote.hxx".}
proc interCharacterSpace*(this: IGESDimenNewGeneralNote; index: int): float {.
    noSideEffect, importcpp: "InterCharacterSpace",
    header: "IGESDimen_NewGeneralNote.hxx".}
proc interlineSpace*(this: IGESDimenNewGeneralNote; index: int): float {.noSideEffect,
    importcpp: "InterlineSpace", header: "IGESDimen_NewGeneralNote.hxx".}
proc fontStyle*(this: IGESDimenNewGeneralNote; index: int): int {.noSideEffect,
    importcpp: "FontStyle", header: "IGESDimen_NewGeneralNote.hxx".}
proc characterAngle*(this: IGESDimenNewGeneralNote; index: int): float {.noSideEffect,
    importcpp: "CharacterAngle", header: "IGESDimen_NewGeneralNote.hxx".}
proc controlCodeString*(this: IGESDimenNewGeneralNote; index: int): Handle[
    TCollectionHAsciiString] {.noSideEffect, importcpp: "ControlCodeString",
                              header: "IGESDimen_NewGeneralNote.hxx".}
proc nbCharacters*(this: IGESDimenNewGeneralNote; index: int): int {.noSideEffect,
    importcpp: "NbCharacters", header: "IGESDimen_NewGeneralNote.hxx".}
proc boxWidth*(this: IGESDimenNewGeneralNote; index: int): float {.noSideEffect,
    importcpp: "BoxWidth", header: "IGESDimen_NewGeneralNote.hxx".}
proc boxHeight*(this: IGESDimenNewGeneralNote; index: int): float {.noSideEffect,
    importcpp: "BoxHeight", header: "IGESDimen_NewGeneralNote.hxx".}
proc isCharSetEntity*(this: IGESDimenNewGeneralNote; index: int): bool {.noSideEffect,
    importcpp: "IsCharSetEntity", header: "IGESDimen_NewGeneralNote.hxx".}
proc charSetCode*(this: IGESDimenNewGeneralNote; index: int): int {.noSideEffect,
    importcpp: "CharSetCode", header: "IGESDimen_NewGeneralNote.hxx".}
proc charSetEntity*(this: IGESDimenNewGeneralNote; index: int): Handle[
    IGESDataIGESEntity] {.noSideEffect, importcpp: "CharSetEntity",
                         header: "IGESDimen_NewGeneralNote.hxx".}
proc slantAngle*(this: IGESDimenNewGeneralNote; index: int): float {.noSideEffect,
    importcpp: "SlantAngle", header: "IGESDimen_NewGeneralNote.hxx".}
proc rotationAngle*(this: IGESDimenNewGeneralNote; index: int): float {.noSideEffect,
    importcpp: "RotationAngle", header: "IGESDimen_NewGeneralNote.hxx".}
proc mirrorFlag*(this: IGESDimenNewGeneralNote; index: int): int {.noSideEffect,
    importcpp: "MirrorFlag", header: "IGESDimen_NewGeneralNote.hxx".}
proc isMirrored*(this: IGESDimenNewGeneralNote; index: int): bool {.noSideEffect,
    importcpp: "IsMirrored", header: "IGESDimen_NewGeneralNote.hxx".}
proc rotateFlag*(this: IGESDimenNewGeneralNote; index: int): int {.noSideEffect,
    importcpp: "RotateFlag", header: "IGESDimen_NewGeneralNote.hxx".}
proc startPoint*(this: IGESDimenNewGeneralNote; index: int): Pnt {.noSideEffect,
    importcpp: "StartPoint", header: "IGESDimen_NewGeneralNote.hxx".}
proc transformedStartPoint*(this: IGESDimenNewGeneralNote; index: int): Pnt {.
    noSideEffect, importcpp: "TransformedStartPoint",
    header: "IGESDimen_NewGeneralNote.hxx".}
proc zDepthStartPoint*(this: IGESDimenNewGeneralNote; index: int): float {.
    noSideEffect, importcpp: "ZDepthStartPoint",
    header: "IGESDimen_NewGeneralNote.hxx".}
proc text*(this: IGESDimenNewGeneralNote; index: int): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "Text", header: "IGESDimen_NewGeneralNote.hxx".}
type
  IGESDimenNewGeneralNotebaseType* = IGESDataIGESEntity

proc getTypeName*(): cstring {.importcpp: "IGESDimen_NewGeneralNote::get_type_name(@)",
                            header: "IGESDimen_NewGeneralNote.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESDimen_NewGeneralNote::get_type_descriptor(@)",
    header: "IGESDimen_NewGeneralNote.hxx".}
proc dynamicType*(this: IGESDimenNewGeneralNote): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESDimen_NewGeneralNote.hxx".}
