##  Created on: 1995-12-04
##  Created by: Christian CAILLET
##  Copyright (c) 1995-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_CString,
  ../Standard/Standard_Boolean, ../Standard/Standard_Type,
  ../Standard/Standard_Integer, ../TColStd/TColStd_HSequenceOfTransient,
  ../Standard/Standard_ExtString, ../TColStd/TColStd_HSequenceOfHAsciiString,
  ../TColStd/TColStd_HSequenceOfHExtendedString,
  ../TopTools/TopTools_HSequenceOfShape, ../TopAbs/TopAbs_ShapeEnum,
  ../TColStd/TColStd_HSequenceOfInteger

discard "forward decl of Standard_TypeMismatch"
discard "forward decl of Standard_Transient"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of TCollection_HExtendedString"
discard "forward decl of TCollection_ExtendedString"
discard "forward decl of TopoDS_Shape"
type
  XSControl_Utils* {.importcpp: "XSControl_Utils", header: "XSControl_Utils.hxx",
                    bycopy.} = object ## ! the only use of this, is to allow a frontal to get one
                                   ## ! distinct "Utils" set per separate engine


proc constructXSControl_Utils*(): XSControl_Utils {.constructor,
    importcpp: "XSControl_Utils(@)", header: "XSControl_Utils.hxx".}
proc TraceLine*(this: XSControl_Utils; line: Standard_CString) {.noSideEffect,
    importcpp: "TraceLine", header: "XSControl_Utils.hxx".}
proc TraceLines*(this: XSControl_Utils; lines: handle[Standard_Transient]) {.
    noSideEffect, importcpp: "TraceLines", header: "XSControl_Utils.hxx".}
proc IsKind*(this: XSControl_Utils; item: handle[Standard_Transient];
            what: handle[Standard_Type]): Standard_Boolean {.noSideEffect,
    importcpp: "IsKind", header: "XSControl_Utils.hxx".}
proc TypeName*(this: XSControl_Utils; item: handle[Standard_Transient];
              nopk: Standard_Boolean = Standard_False): Standard_CString {.
    noSideEffect, importcpp: "TypeName", header: "XSControl_Utils.hxx".}
proc TraValue*(this: XSControl_Utils; list: handle[Standard_Transient];
              num: Standard_Integer): handle[Standard_Transient] {.noSideEffect,
    importcpp: "TraValue", header: "XSControl_Utils.hxx".}
proc NewSeqTra*(this: XSControl_Utils): handle[TColStd_HSequenceOfTransient] {.
    noSideEffect, importcpp: "NewSeqTra", header: "XSControl_Utils.hxx".}
proc AppendTra*(this: XSControl_Utils;
               seqval: handle[TColStd_HSequenceOfTransient];
               traval: handle[Standard_Transient]) {.noSideEffect,
    importcpp: "AppendTra", header: "XSControl_Utils.hxx".}
proc DateString*(this: XSControl_Utils; yy: Standard_Integer; mm: Standard_Integer;
                dd: Standard_Integer; hh: Standard_Integer; mn: Standard_Integer;
                ss: Standard_Integer): Standard_CString {.noSideEffect,
    importcpp: "DateString", header: "XSControl_Utils.hxx".}
proc DateValues*(this: XSControl_Utils; text: Standard_CString;
                yy: var Standard_Integer; mm: var Standard_Integer;
                dd: var Standard_Integer; hh: var Standard_Integer;
                mn: var Standard_Integer; ss: var Standard_Integer) {.noSideEffect,
    importcpp: "DateValues", header: "XSControl_Utils.hxx".}
proc ToCString*(this: XSControl_Utils; strval: handle[TCollection_HAsciiString]): Standard_CString {.
    noSideEffect, importcpp: "ToCString", header: "XSControl_Utils.hxx".}
proc ToCString*(this: XSControl_Utils; strval: TCollection_AsciiString): Standard_CString {.
    noSideEffect, importcpp: "ToCString", header: "XSControl_Utils.hxx".}
proc ToHString*(this: XSControl_Utils; strcon: Standard_CString): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "ToHString",
                               header: "XSControl_Utils.hxx".}
proc ToAString*(this: XSControl_Utils; strcon: Standard_CString): TCollection_AsciiString {.
    noSideEffect, importcpp: "ToAString", header: "XSControl_Utils.hxx".}
proc ToEString*(this: XSControl_Utils; strval: handle[TCollection_HExtendedString]): Standard_ExtString {.
    noSideEffect, importcpp: "ToEString", header: "XSControl_Utils.hxx".}
proc ToEString*(this: XSControl_Utils; strval: TCollection_ExtendedString): Standard_ExtString {.
    noSideEffect, importcpp: "ToEString", header: "XSControl_Utils.hxx".}
proc ToHString*(this: XSControl_Utils; strcon: Standard_ExtString): handle[
    TCollection_HExtendedString] {.noSideEffect, importcpp: "ToHString",
                                  header: "XSControl_Utils.hxx".}
proc ToXString*(this: XSControl_Utils; strcon: Standard_ExtString): TCollection_ExtendedString {.
    noSideEffect, importcpp: "ToXString", header: "XSControl_Utils.hxx".}
proc AsciiToExtended*(this: XSControl_Utils; str: Standard_CString): Standard_ExtString {.
    noSideEffect, importcpp: "AsciiToExtended", header: "XSControl_Utils.hxx".}
proc IsAscii*(this: XSControl_Utils; str: Standard_ExtString): Standard_Boolean {.
    noSideEffect, importcpp: "IsAscii", header: "XSControl_Utils.hxx".}
proc ExtendedToAscii*(this: XSControl_Utils; str: Standard_ExtString): Standard_CString {.
    noSideEffect, importcpp: "ExtendedToAscii", header: "XSControl_Utils.hxx".}
proc CStrValue*(this: XSControl_Utils; list: handle[Standard_Transient];
               num: Standard_Integer): Standard_CString {.noSideEffect,
    importcpp: "CStrValue", header: "XSControl_Utils.hxx".}
proc EStrValue*(this: XSControl_Utils; list: handle[Standard_Transient];
               num: Standard_Integer): Standard_ExtString {.noSideEffect,
    importcpp: "EStrValue", header: "XSControl_Utils.hxx".}
proc NewSeqCStr*(this: XSControl_Utils): handle[TColStd_HSequenceOfHAsciiString] {.
    noSideEffect, importcpp: "NewSeqCStr", header: "XSControl_Utils.hxx".}
proc AppendCStr*(this: XSControl_Utils;
                seqval: handle[TColStd_HSequenceOfHAsciiString];
                strval: Standard_CString) {.noSideEffect, importcpp: "AppendCStr",
    header: "XSControl_Utils.hxx".}
proc NewSeqEStr*(this: XSControl_Utils): handle[TColStd_HSequenceOfHExtendedString] {.
    noSideEffect, importcpp: "NewSeqEStr", header: "XSControl_Utils.hxx".}
proc AppendEStr*(this: XSControl_Utils;
                seqval: handle[TColStd_HSequenceOfHExtendedString];
                strval: Standard_ExtString) {.noSideEffect,
    importcpp: "AppendEStr", header: "XSControl_Utils.hxx".}
proc CompoundFromSeq*(this: XSControl_Utils;
                     seqval: handle[TopTools_HSequenceOfShape]): TopoDS_Shape {.
    noSideEffect, importcpp: "CompoundFromSeq", header: "XSControl_Utils.hxx".}
proc ShapeType*(this: XSControl_Utils; shape: TopoDS_Shape;
               compound: Standard_Boolean): TopAbs_ShapeEnum {.noSideEffect,
    importcpp: "ShapeType", header: "XSControl_Utils.hxx".}
proc SortedCompound*(this: XSControl_Utils; shape: TopoDS_Shape;
                    `type`: TopAbs_ShapeEnum; explore: Standard_Boolean;
                    compound: Standard_Boolean): TopoDS_Shape {.noSideEffect,
    importcpp: "SortedCompound", header: "XSControl_Utils.hxx".}
proc ShapeValue*(this: XSControl_Utils; seqv: handle[TopTools_HSequenceOfShape];
                num: Standard_Integer): TopoDS_Shape {.noSideEffect,
    importcpp: "ShapeValue", header: "XSControl_Utils.hxx".}
proc NewSeqShape*(this: XSControl_Utils): handle[TopTools_HSequenceOfShape] {.
    noSideEffect, importcpp: "NewSeqShape", header: "XSControl_Utils.hxx".}
proc AppendShape*(this: XSControl_Utils; seqv: handle[TopTools_HSequenceOfShape];
                 shape: TopoDS_Shape) {.noSideEffect, importcpp: "AppendShape",
                                      header: "XSControl_Utils.hxx".}
proc ShapeBinder*(this: XSControl_Utils; shape: TopoDS_Shape;
                 hs: Standard_Boolean = Standard_True): handle[Standard_Transient] {.
    noSideEffect, importcpp: "ShapeBinder", header: "XSControl_Utils.hxx".}
proc BinderShape*(this: XSControl_Utils; tr: handle[Standard_Transient]): TopoDS_Shape {.
    noSideEffect, importcpp: "BinderShape", header: "XSControl_Utils.hxx".}
proc SeqLength*(this: XSControl_Utils; list: handle[Standard_Transient]): Standard_Integer {.
    noSideEffect, importcpp: "SeqLength", header: "XSControl_Utils.hxx".}
proc SeqToArr*(this: XSControl_Utils; seq: handle[Standard_Transient];
              first: Standard_Integer = 1): handle[Standard_Transient] {.
    noSideEffect, importcpp: "SeqToArr", header: "XSControl_Utils.hxx".}
proc ArrToSeq*(this: XSControl_Utils; arr: handle[Standard_Transient]): handle[
    Standard_Transient] {.noSideEffect, importcpp: "ArrToSeq",
                         header: "XSControl_Utils.hxx".}
proc SeqIntValue*(this: XSControl_Utils; list: handle[TColStd_HSequenceOfInteger];
                 num: Standard_Integer): Standard_Integer {.noSideEffect,
    importcpp: "SeqIntValue", header: "XSControl_Utils.hxx".}