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

discard "forward decl of Standard_TypeMismatch"
discard "forward decl of Standard_Transient"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of TCollection_HExtendedString"
discard "forward decl of TCollection_ExtendedString"
discard "forward decl of TopoDS_Shape"
type
  XSControlUtils* {.importcpp: "XSControl_Utils", header: "XSControl_Utils.hxx",
                   bycopy.} = object ## ! the only use of this, is to allow a frontal to get one
                                  ## ! distinct "Utils" set per separate engine


proc constructXSControlUtils*(): XSControlUtils {.constructor,
    importcpp: "XSControl_Utils(@)", header: "XSControl_Utils.hxx".}
proc traceLine*(this: XSControlUtils; line: StandardCString) {.noSideEffect,
    importcpp: "TraceLine", header: "XSControl_Utils.hxx".}
proc traceLines*(this: XSControlUtils; lines: Handle[StandardTransient]) {.
    noSideEffect, importcpp: "TraceLines", header: "XSControl_Utils.hxx".}
#[ proc isKind*(this: XSControlUtils; item: Handle[StandardTransient];
            what: Handle[StandardType]): bool {.noSideEffect, importcpp: "IsKind",
    header: "XSControl_Utils.hxx".}
proc typeName*(this: XSControlUtils; item: Handle[StandardTransient];
              nopk: bool = false): StandardCString {.noSideEffect,
    importcpp: "TypeName", header: "XSControl_Utils.hxx".}
proc traValue*(this: XSControlUtils; list: Handle[StandardTransient]; num: cint): Handle[
    StandardTransient] {.noSideEffect, importcpp: "TraValue",
                        header: "XSControl_Utils.hxx".}
proc newSeqTra*(this: XSControlUtils): Handle[TColStdHSequenceOfTransient] {.
    noSideEffect, importcpp: "NewSeqTra", header: "XSControl_Utils.hxx".}
proc appendTra*(this: XSControlUtils; seqval: Handle[TColStdHSequenceOfTransient];
               traval: Handle[StandardTransient]) {.noSideEffect,
    importcpp: "AppendTra", header: "XSControl_Utils.hxx".}
proc dateString*(this: XSControlUtils; yy: cint; mm: cint; dd: cint; hh: cint; mn: cint;
                ss: cint): StandardCString {.noSideEffect, importcpp: "DateString",
    header: "XSControl_Utils.hxx".}
proc dateValues*(this: XSControlUtils; text: StandardCString; yy: var cint;
                mm: var cint; dd: var cint; hh: var cint; mn: var cint; ss: var cint) {.
    noSideEffect, importcpp: "DateValues", header: "XSControl_Utils.hxx".}
proc toCString*(this: XSControlUtils; strval: Handle[TCollectionHAsciiString]): StandardCString {.
    noSideEffect, importcpp: "ToCString", header: "XSControl_Utils.hxx".}
proc toCString*(this: XSControlUtils; strval: TCollectionAsciiString): StandardCString {.
    noSideEffect, importcpp: "ToCString", header: "XSControl_Utils.hxx".}
proc toHString*(this: XSControlUtils; strcon: StandardCString): Handle[
    TCollectionHAsciiString] {.noSideEffect, importcpp: "ToHString",
                              header: "XSControl_Utils.hxx".}
proc toAString*(this: XSControlUtils; strcon: StandardCString): TCollectionAsciiString {.
    noSideEffect, importcpp: "ToAString", header: "XSControl_Utils.hxx".}
proc toEString*(this: XSControlUtils; strval: Handle[TCollectionHExtendedString]): StandardExtString {.
    noSideEffect, importcpp: "ToEString", header: "XSControl_Utils.hxx".}
proc toEString*(this: XSControlUtils; strval: TCollectionExtendedString): StandardExtString {.
    noSideEffect, importcpp: "ToEString", header: "XSControl_Utils.hxx".}
proc toHString*(this: XSControlUtils; strcon: StandardExtString): Handle[
    TCollectionHExtendedString] {.noSideEffect, importcpp: "ToHString",
                                 header: "XSControl_Utils.hxx".}
proc toXString*(this: XSControlUtils; strcon: StandardExtString): TCollectionExtendedString {.
    noSideEffect, importcpp: "ToXString", header: "XSControl_Utils.hxx".}
proc asciiToExtended*(this: XSControlUtils; str: StandardCString): StandardExtString {.
    noSideEffect, importcpp: "AsciiToExtended", header: "XSControl_Utils.hxx".}
proc isAscii*(this: XSControlUtils; str: StandardExtString): bool {.noSideEffect,
    importcpp: "IsAscii", header: "XSControl_Utils.hxx".}
proc extendedToAscii*(this: XSControlUtils; str: StandardExtString): StandardCString {.
    noSideEffect, importcpp: "ExtendedToAscii", header: "XSControl_Utils.hxx".}
proc cStrValue*(this: XSControlUtils; list: Handle[StandardTransient]; num: cint): StandardCString {.
    noSideEffect, importcpp: "CStrValue", header: "XSControl_Utils.hxx".}
proc eStrValue*(this: XSControlUtils; list: Handle[StandardTransient]; num: cint): StandardExtString {.
    noSideEffect, importcpp: "EStrValue", header: "XSControl_Utils.hxx".}
proc newSeqCStr*(this: XSControlUtils): Handle[TColStdHSequenceOfHAsciiString] {.
    noSideEffect, importcpp: "NewSeqCStr", header: "XSControl_Utils.hxx".}
proc appendCStr*(this: XSControlUtils;
                seqval: Handle[TColStdHSequenceOfHAsciiString];
                strval: StandardCString) {.noSideEffect, importcpp: "AppendCStr",
    header: "XSControl_Utils.hxx".}
proc newSeqEStr*(this: XSControlUtils): Handle[TColStdHSequenceOfHExtendedString] {.
    noSideEffect, importcpp: "NewSeqEStr", header: "XSControl_Utils.hxx".}
proc appendEStr*(this: XSControlUtils;
                seqval: Handle[TColStdHSequenceOfHExtendedString];
                strval: StandardExtString) {.noSideEffect, importcpp: "AppendEStr",
    header: "XSControl_Utils.hxx".}
proc compoundFromSeq*(this: XSControlUtils;
                     seqval: Handle[TopToolsHSequenceOfShape]): TopoDS_Shape {.
    noSideEffect, importcpp: "CompoundFromSeq", header: "XSControl_Utils.hxx".}
proc shapeType*(this: XSControlUtils; shape: TopoDS_Shape; compound: bool): TopAbsShapeEnum {.
    noSideEffect, importcpp: "ShapeType", header: "XSControl_Utils.hxx".}
proc sortedCompound*(this: XSControlUtils; shape: TopoDS_Shape;
                    `type`: TopAbsShapeEnum; explore: bool; compound: bool): TopoDS_Shape {.
    noSideEffect, importcpp: "SortedCompound", header: "XSControl_Utils.hxx".}
proc shapeValue*(this: XSControlUtils; seqv: Handle[TopToolsHSequenceOfShape];
                num: cint): TopoDS_Shape {.noSideEffect, importcpp: "ShapeValue",
                                        header: "XSControl_Utils.hxx".}
proc newSeqShape*(this: XSControlUtils): Handle[TopToolsHSequenceOfShape] {.
    noSideEffect, importcpp: "NewSeqShape", header: "XSControl_Utils.hxx".}
proc appendShape*(this: XSControlUtils; seqv: Handle[TopToolsHSequenceOfShape];
                 shape: TopoDS_Shape) {.noSideEffect, importcpp: "AppendShape",
                                      header: "XSControl_Utils.hxx".}
proc shapeBinder*(this: XSControlUtils; shape: TopoDS_Shape; hs: bool = true): Handle[
    StandardTransient] {.noSideEffect, importcpp: "ShapeBinder",
                        header: "XSControl_Utils.hxx".}
proc binderShape*(this: XSControlUtils; tr: Handle[StandardTransient]): TopoDS_Shape {.
    noSideEffect, importcpp: "BinderShape", header: "XSControl_Utils.hxx".}
proc seqLength*(this: XSControlUtils; list: Handle[StandardTransient]): cint {.
    noSideEffect, importcpp: "SeqLength", header: "XSControl_Utils.hxx".}
proc seqToArr*(this: XSControlUtils; seq: Handle[StandardTransient]; first: cint = 1): Handle[
    StandardTransient] {.noSideEffect, importcpp: "SeqToArr",
                        header: "XSControl_Utils.hxx".}
proc arrToSeq*(this: XSControlUtils; arr: Handle[StandardTransient]): Handle[
    StandardTransient] {.noSideEffect, importcpp: "ArrToSeq",
                        header: "XSControl_Utils.hxx".}
proc seqIntValue*(this: XSControlUtils; list: Handle[TColStdHSequenceOfInteger];
                 num: cint): cint {.noSideEffect, importcpp: "SeqIntValue",
                                 header: "XSControl_Utils.hxx".}

























 ]#