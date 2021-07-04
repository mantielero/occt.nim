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
  ../Standard/Standard, ../Standard/Standard_Type,
  ../TColStd/TColStd_HArray1OfInteger, ../TColStd/TColStd_HArray1OfReal,
  ../IGESGraph/IGESGraph_HArray1OfTextFontDef, ../TColgp/TColgp_HArray1OfXYZ,
  ../Interface/Interface_HArray1OfHAsciiString, ../IGESData/IGESData_IGESEntity,
  ../Standard/Standard_Integer, ../Standard/Standard_Real,
  ../Standard/Standard_Boolean

discard "forward decl of Standard_DimensionMismatch"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of IGESGraph_TextFontDef"
discard "forward decl of gp_Pnt"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of IGESDimen_GeneralNote"
discard "forward decl of IGESDimen_GeneralNote"
type
  Handle_IGESDimen_GeneralNote* = handle[IGESDimen_GeneralNote]

## ! defines GeneralNote, Type <212> Form <0-8, 100-200, 105>
## ! in package IGESDimen
## ! Used for formatting boxed text in different ways

type
  IGESDimen_GeneralNote* {.importcpp: "IGESDimen_GeneralNote",
                          header: "IGESDimen_GeneralNote.hxx", bycopy.} = object of IGESData_IGESEntity


proc constructIGESDimen_GeneralNote*(): IGESDimen_GeneralNote {.constructor,
    importcpp: "IGESDimen_GeneralNote(@)", header: "IGESDimen_GeneralNote.hxx".}
proc Init*(this: var IGESDimen_GeneralNote;
          nbChars: handle[TColStd_HArray1OfInteger];
          widths: handle[TColStd_HArray1OfReal];
          heights: handle[TColStd_HArray1OfReal];
          fontCodes: handle[TColStd_HArray1OfInteger];
          fonts: handle[IGESGraph_HArray1OfTextFontDef];
          slants: handle[TColStd_HArray1OfReal];
          rotations: handle[TColStd_HArray1OfReal];
          mirrorFlags: handle[TColStd_HArray1OfInteger];
          rotFlags: handle[TColStd_HArray1OfInteger];
          start: handle[TColgp_HArray1OfXYZ];
          texts: handle[Interface_HArray1OfHAsciiString]) {.importcpp: "Init",
    header: "IGESDimen_GeneralNote.hxx".}
proc SetFormNumber*(this: var IGESDimen_GeneralNote; form: Standard_Integer) {.
    importcpp: "SetFormNumber", header: "IGESDimen_GeneralNote.hxx".}
proc NbStrings*(this: IGESDimen_GeneralNote): Standard_Integer {.noSideEffect,
    importcpp: "NbStrings", header: "IGESDimen_GeneralNote.hxx".}
proc NbCharacters*(this: IGESDimen_GeneralNote; Index: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "NbCharacters", header: "IGESDimen_GeneralNote.hxx".}
proc BoxWidth*(this: IGESDimen_GeneralNote; Index: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "BoxWidth", header: "IGESDimen_GeneralNote.hxx".}
proc BoxHeight*(this: IGESDimen_GeneralNote; Index: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "BoxHeight", header: "IGESDimen_GeneralNote.hxx".}
proc IsFontEntity*(this: IGESDimen_GeneralNote; Index: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "IsFontEntity", header: "IGESDimen_GeneralNote.hxx".}
proc FontCode*(this: IGESDimen_GeneralNote; Index: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "FontCode", header: "IGESDimen_GeneralNote.hxx".}
proc FontEntity*(this: IGESDimen_GeneralNote; Index: Standard_Integer): handle[
    IGESGraph_TextFontDef] {.noSideEffect, importcpp: "FontEntity",
                            header: "IGESDimen_GeneralNote.hxx".}
proc SlantAngle*(this: IGESDimen_GeneralNote; Index: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "SlantAngle", header: "IGESDimen_GeneralNote.hxx".}
proc RotationAngle*(this: IGESDimen_GeneralNote; Index: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "RotationAngle", header: "IGESDimen_GeneralNote.hxx".}
proc MirrorFlag*(this: IGESDimen_GeneralNote; Index: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "MirrorFlag", header: "IGESDimen_GeneralNote.hxx".}
proc RotateFlag*(this: IGESDimen_GeneralNote; Index: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "RotateFlag", header: "IGESDimen_GeneralNote.hxx".}
proc StartPoint*(this: IGESDimen_GeneralNote; Index: Standard_Integer): gp_Pnt {.
    noSideEffect, importcpp: "StartPoint", header: "IGESDimen_GeneralNote.hxx".}
proc TransformedStartPoint*(this: IGESDimen_GeneralNote; Index: Standard_Integer): gp_Pnt {.
    noSideEffect, importcpp: "TransformedStartPoint",
    header: "IGESDimen_GeneralNote.hxx".}
proc ZDepthStartPoint*(this: IGESDimen_GeneralNote; Index: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "ZDepthStartPoint",
    header: "IGESDimen_GeneralNote.hxx".}
proc Text*(this: IGESDimen_GeneralNote; Index: Standard_Integer): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "Text",
                               header: "IGESDimen_GeneralNote.hxx".}
type
  IGESDimen_GeneralNotebase_type* = IGESData_IGESEntity

proc get_type_name*(): cstring {.importcpp: "IGESDimen_GeneralNote::get_type_name(@)",
                              header: "IGESDimen_GeneralNote.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESDimen_GeneralNote::get_type_descriptor(@)",
    header: "IGESDimen_GeneralNote.hxx".}
proc DynamicType*(this: IGESDimen_GeneralNote): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESDimen_GeneralNote.hxx".}