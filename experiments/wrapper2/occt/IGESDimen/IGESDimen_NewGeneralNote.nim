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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Real,
  ../Standard/Standard_Integer, ../gp/gp_XYZ, ../TColStd/TColStd_HArray1OfInteger,
  ../TColStd/TColStd_HArray1OfReal, ../Interface/Interface_HArray1OfHAsciiString,
  ../IGESData/IGESData_HArray1OfIGESEntity, ../TColgp/TColgp_HArray1OfXYZ,
  ../IGESData/IGESData_IGESEntity, ../Standard/Standard_Boolean

discard "forward decl of Standard_DimensionMismatch"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of gp_XYZ"
discard "forward decl of gp_Pnt"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of IGESData_IGESEntity"
discard "forward decl of IGESDimen_NewGeneralNote"
discard "forward decl of IGESDimen_NewGeneralNote"
type
  Handle_IGESDimen_NewGeneralNote* = handle[IGESDimen_NewGeneralNote]

## ! defines NewGeneralNote, Type <213> Form <0>
## ! in package IGESDimen
## ! Further attributes for formatting text strings

type
  IGESDimen_NewGeneralNote* {.importcpp: "IGESDimen_NewGeneralNote",
                             header: "IGESDimen_NewGeneralNote.hxx", bycopy.} = object of IGESData_IGESEntity


proc constructIGESDimen_NewGeneralNote*(): IGESDimen_NewGeneralNote {.constructor,
    importcpp: "IGESDimen_NewGeneralNote(@)",
    header: "IGESDimen_NewGeneralNote.hxx".}
proc Init*(this: var IGESDimen_NewGeneralNote; width: Standard_Real;
          height: Standard_Real; justifyCode: Standard_Integer; areaLoc: gp_XYZ;
          areaRotationAngle: Standard_Real; baseLinePos: gp_XYZ;
          normalInterlineSpace: Standard_Real;
          charDisplays: handle[TColStd_HArray1OfInteger];
          charWidths: handle[TColStd_HArray1OfReal];
          charHeights: handle[TColStd_HArray1OfReal];
          interCharSpc: handle[TColStd_HArray1OfReal];
          interLineSpc: handle[TColStd_HArray1OfReal];
          fontStyles: handle[TColStd_HArray1OfInteger];
          charAngles: handle[TColStd_HArray1OfReal];
          controlCodeStrings: handle[Interface_HArray1OfHAsciiString];
          nbChars: handle[TColStd_HArray1OfInteger];
          boxWidths: handle[TColStd_HArray1OfReal];
          boxHeights: handle[TColStd_HArray1OfReal];
          charSetCodes: handle[TColStd_HArray1OfInteger];
          charSetEntities: handle[IGESData_HArray1OfIGESEntity];
          slAngles: handle[TColStd_HArray1OfReal];
          rotAngles: handle[TColStd_HArray1OfReal];
          mirrorFlags: handle[TColStd_HArray1OfInteger];
          rotateFlags: handle[TColStd_HArray1OfInteger];
          startPoints: handle[TColgp_HArray1OfXYZ];
          texts: handle[Interface_HArray1OfHAsciiString]) {.importcpp: "Init",
    header: "IGESDimen_NewGeneralNote.hxx".}
proc TextWidth*(this: IGESDimen_NewGeneralNote): Standard_Real {.noSideEffect,
    importcpp: "TextWidth", header: "IGESDimen_NewGeneralNote.hxx".}
proc TextHeight*(this: IGESDimen_NewGeneralNote): Standard_Real {.noSideEffect,
    importcpp: "TextHeight", header: "IGESDimen_NewGeneralNote.hxx".}
proc JustifyCode*(this: IGESDimen_NewGeneralNote): Standard_Integer {.noSideEffect,
    importcpp: "JustifyCode", header: "IGESDimen_NewGeneralNote.hxx".}
proc AreaLocation*(this: IGESDimen_NewGeneralNote): gp_Pnt {.noSideEffect,
    importcpp: "AreaLocation", header: "IGESDimen_NewGeneralNote.hxx".}
proc TransformedAreaLocation*(this: IGESDimen_NewGeneralNote): gp_Pnt {.
    noSideEffect, importcpp: "TransformedAreaLocation",
    header: "IGESDimen_NewGeneralNote.hxx".}
proc ZDepthAreaLocation*(this: IGESDimen_NewGeneralNote): Standard_Real {.
    noSideEffect, importcpp: "ZDepthAreaLocation",
    header: "IGESDimen_NewGeneralNote.hxx".}
proc AreaRotationAngle*(this: IGESDimen_NewGeneralNote): Standard_Real {.
    noSideEffect, importcpp: "AreaRotationAngle",
    header: "IGESDimen_NewGeneralNote.hxx".}
proc BaseLinePosition*(this: IGESDimen_NewGeneralNote): gp_Pnt {.noSideEffect,
    importcpp: "BaseLinePosition", header: "IGESDimen_NewGeneralNote.hxx".}
proc TransformedBaseLinePosition*(this: IGESDimen_NewGeneralNote): gp_Pnt {.
    noSideEffect, importcpp: "TransformedBaseLinePosition",
    header: "IGESDimen_NewGeneralNote.hxx".}
proc ZDepthBaseLinePosition*(this: IGESDimen_NewGeneralNote): Standard_Real {.
    noSideEffect, importcpp: "ZDepthBaseLinePosition",
    header: "IGESDimen_NewGeneralNote.hxx".}
proc NormalInterlineSpace*(this: IGESDimen_NewGeneralNote): Standard_Real {.
    noSideEffect, importcpp: "NormalInterlineSpace",
    header: "IGESDimen_NewGeneralNote.hxx".}
proc NbStrings*(this: IGESDimen_NewGeneralNote): Standard_Integer {.noSideEffect,
    importcpp: "NbStrings", header: "IGESDimen_NewGeneralNote.hxx".}
proc CharacterDisplay*(this: IGESDimen_NewGeneralNote; Index: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "CharacterDisplay",
    header: "IGESDimen_NewGeneralNote.hxx".}
proc IsVariable*(this: IGESDimen_NewGeneralNote; Index: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "IsVariable", header: "IGESDimen_NewGeneralNote.hxx".}
proc CharacterWidth*(this: IGESDimen_NewGeneralNote; Index: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "CharacterWidth",
    header: "IGESDimen_NewGeneralNote.hxx".}
proc CharacterHeight*(this: IGESDimen_NewGeneralNote; Index: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "CharacterHeight",
    header: "IGESDimen_NewGeneralNote.hxx".}
proc InterCharacterSpace*(this: IGESDimen_NewGeneralNote; Index: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "InterCharacterSpace",
    header: "IGESDimen_NewGeneralNote.hxx".}
proc InterlineSpace*(this: IGESDimen_NewGeneralNote; Index: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "InterlineSpace",
    header: "IGESDimen_NewGeneralNote.hxx".}
proc FontStyle*(this: IGESDimen_NewGeneralNote; Index: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "FontStyle", header: "IGESDimen_NewGeneralNote.hxx".}
proc CharacterAngle*(this: IGESDimen_NewGeneralNote; Index: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "CharacterAngle",
    header: "IGESDimen_NewGeneralNote.hxx".}
proc ControlCodeString*(this: IGESDimen_NewGeneralNote; Index: Standard_Integer): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "ControlCodeString",
                               header: "IGESDimen_NewGeneralNote.hxx".}
proc NbCharacters*(this: IGESDimen_NewGeneralNote; Index: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "NbCharacters", header: "IGESDimen_NewGeneralNote.hxx".}
proc BoxWidth*(this: IGESDimen_NewGeneralNote; Index: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "BoxWidth", header: "IGESDimen_NewGeneralNote.hxx".}
proc BoxHeight*(this: IGESDimen_NewGeneralNote; Index: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "BoxHeight", header: "IGESDimen_NewGeneralNote.hxx".}
proc IsCharSetEntity*(this: IGESDimen_NewGeneralNote; Index: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "IsCharSetEntity",
    header: "IGESDimen_NewGeneralNote.hxx".}
proc CharSetCode*(this: IGESDimen_NewGeneralNote; Index: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "CharSetCode", header: "IGESDimen_NewGeneralNote.hxx".}
proc CharSetEntity*(this: IGESDimen_NewGeneralNote; Index: Standard_Integer): handle[
    IGESData_IGESEntity] {.noSideEffect, importcpp: "CharSetEntity",
                          header: "IGESDimen_NewGeneralNote.hxx".}
proc SlantAngle*(this: IGESDimen_NewGeneralNote; Index: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "SlantAngle", header: "IGESDimen_NewGeneralNote.hxx".}
proc RotationAngle*(this: IGESDimen_NewGeneralNote; Index: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "RotationAngle",
    header: "IGESDimen_NewGeneralNote.hxx".}
proc MirrorFlag*(this: IGESDimen_NewGeneralNote; Index: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "MirrorFlag", header: "IGESDimen_NewGeneralNote.hxx".}
proc IsMirrored*(this: IGESDimen_NewGeneralNote; Index: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "IsMirrored", header: "IGESDimen_NewGeneralNote.hxx".}
proc RotateFlag*(this: IGESDimen_NewGeneralNote; Index: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "RotateFlag", header: "IGESDimen_NewGeneralNote.hxx".}
proc StartPoint*(this: IGESDimen_NewGeneralNote; Index: Standard_Integer): gp_Pnt {.
    noSideEffect, importcpp: "StartPoint", header: "IGESDimen_NewGeneralNote.hxx".}
proc TransformedStartPoint*(this: IGESDimen_NewGeneralNote; Index: Standard_Integer): gp_Pnt {.
    noSideEffect, importcpp: "TransformedStartPoint",
    header: "IGESDimen_NewGeneralNote.hxx".}
proc ZDepthStartPoint*(this: IGESDimen_NewGeneralNote; Index: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "ZDepthStartPoint",
    header: "IGESDimen_NewGeneralNote.hxx".}
proc Text*(this: IGESDimen_NewGeneralNote; Index: Standard_Integer): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "Text",
                               header: "IGESDimen_NewGeneralNote.hxx".}
type
  IGESDimen_NewGeneralNotebase_type* = IGESData_IGESEntity

proc get_type_name*(): cstring {.importcpp: "IGESDimen_NewGeneralNote::get_type_name(@)",
                              header: "IGESDimen_NewGeneralNote.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESDimen_NewGeneralNote::get_type_descriptor(@)",
    header: "IGESDimen_NewGeneralNote.hxx".}
proc DynamicType*(this: IGESDimen_NewGeneralNote): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESDimen_NewGeneralNote.hxx".}