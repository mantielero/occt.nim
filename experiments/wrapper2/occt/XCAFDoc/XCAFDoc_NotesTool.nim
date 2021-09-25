##  Copyright (c) 2017-2018 OPEN CASCADE SAS
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

discard "forward decl of OSD_File"
discard "forward decl of Standard_GUID"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of TCollection_ExtendedString"
discard "forward decl of TDF_RelocationTable"
discard "forward decl of XCAFDoc_Note"
discard "forward decl of XCAFDoc_AssemblyItemId"
discard "forward decl of XCAFDoc_AssemblyItemRef"
type
  XCAFDocNotesTool* {.importcpp: "XCAFDoc_NotesTool",
                     header: "XCAFDoc_NotesTool.hxx", bycopy.} = object of TDataStdGenericEmpty ##  Overrides TDF_Attribute virtuals


## !!!Ignored construct:  public : DEFINE_DERIVED_ATTRIBUTE ( XCAFDoc_NotesTool , TDataStd_GenericEmpty ) ! Returns default attribute GUID static const Standard_GUID & GetID ( ) ;
## Error: token expected: ) but got: ,!!!

proc set*(theLabel: TDF_Label): Handle[XCAFDocNotesTool] {.
    importcpp: "XCAFDoc_NotesTool::Set(@)", header: "XCAFDoc_NotesTool.hxx".}
proc constructXCAFDocNotesTool*(): XCAFDocNotesTool {.constructor,
    importcpp: "XCAFDoc_NotesTool(@)", header: "XCAFDoc_NotesTool.hxx".}
proc getNotesLabel*(this: XCAFDocNotesTool): TDF_Label {.noSideEffect,
    importcpp: "GetNotesLabel", header: "XCAFDoc_NotesTool.hxx".}
proc getAnnotatedItemsLabel*(this: XCAFDocNotesTool): TDF_Label {.noSideEffect,
    importcpp: "GetAnnotatedItemsLabel", header: "XCAFDoc_NotesTool.hxx".}
proc nbNotes*(this: XCAFDocNotesTool): int {.noSideEffect, importcpp: "NbNotes",
    header: "XCAFDoc_NotesTool.hxx".}
proc nbAnnotatedItems*(this: XCAFDocNotesTool): int {.noSideEffect,
    importcpp: "NbAnnotatedItems", header: "XCAFDoc_NotesTool.hxx".}
proc getNotes*(this: XCAFDocNotesTool; theNoteLabels: var TDF_LabelSequence) {.
    noSideEffect, importcpp: "GetNotes", header: "XCAFDoc_NotesTool.hxx".}
proc getAnnotatedItems*(this: XCAFDocNotesTool; theLabels: var TDF_LabelSequence) {.
    noSideEffect, importcpp: "GetAnnotatedItems", header: "XCAFDoc_NotesTool.hxx".}
proc isAnnotatedItem*(this: XCAFDocNotesTool; theItemId: XCAFDocAssemblyItemId): bool {.
    noSideEffect, importcpp: "IsAnnotatedItem", header: "XCAFDoc_NotesTool.hxx".}
proc isAnnotatedItem*(this: XCAFDocNotesTool; theItemLabel: TDF_Label): bool {.
    noSideEffect, importcpp: "IsAnnotatedItem", header: "XCAFDoc_NotesTool.hxx".}
proc findAnnotatedItem*(this: XCAFDocNotesTool; theItemId: XCAFDocAssemblyItemId): TDF_Label {.
    noSideEffect, importcpp: "FindAnnotatedItem", header: "XCAFDoc_NotesTool.hxx".}
proc findAnnotatedItem*(this: XCAFDocNotesTool; theItemLabel: TDF_Label): TDF_Label {.
    noSideEffect, importcpp: "FindAnnotatedItem", header: "XCAFDoc_NotesTool.hxx".}
proc findAnnotatedItemAttr*(this: XCAFDocNotesTool;
                           theItemId: XCAFDocAssemblyItemId; theGUID: StandardGUID): TDF_Label {.
    noSideEffect, importcpp: "FindAnnotatedItemAttr",
    header: "XCAFDoc_NotesTool.hxx".}
proc findAnnotatedItemAttr*(this: XCAFDocNotesTool; theItemLabel: TDF_Label;
                           theGUID: StandardGUID): TDF_Label {.noSideEffect,
    importcpp: "FindAnnotatedItemAttr", header: "XCAFDoc_NotesTool.hxx".}
proc findAnnotatedItemSubshape*(this: XCAFDocNotesTool;
                               theItemId: XCAFDocAssemblyItemId;
                               theSubshapeIndex: int): TDF_Label {.noSideEffect,
    importcpp: "FindAnnotatedItemSubshape", header: "XCAFDoc_NotesTool.hxx".}
proc findAnnotatedItemSubshape*(this: XCAFDocNotesTool; theItemLabel: TDF_Label;
                               theSubshapeIndex: int): TDF_Label {.noSideEffect,
    importcpp: "FindAnnotatedItemSubshape", header: "XCAFDoc_NotesTool.hxx".}
proc createComment*(this: var XCAFDocNotesTool;
                   theUserName: TCollectionExtendedString;
                   theTimeStamp: TCollectionExtendedString;
                   theComment: TCollectionExtendedString): Handle[XCAFDocNote] {.
    importcpp: "CreateComment", header: "XCAFDoc_NotesTool.hxx".}
proc createBalloon*(this: var XCAFDocNotesTool;
                   theUserName: TCollectionExtendedString;
                   theTimeStamp: TCollectionExtendedString;
                   theComment: TCollectionExtendedString): Handle[XCAFDocNote] {.
    importcpp: "CreateBalloon", header: "XCAFDoc_NotesTool.hxx".}
proc createBinData*(this: var XCAFDocNotesTool;
                   theUserName: TCollectionExtendedString;
                   theTimeStamp: TCollectionExtendedString;
                   theTitle: TCollectionExtendedString;
                   theMIMEtype: TCollectionAsciiString; theFile: var OSD_File): Handle[
    XCAFDocNote] {.importcpp: "CreateBinData", header: "XCAFDoc_NotesTool.hxx".}
proc createBinData*(this: var XCAFDocNotesTool;
                   theUserName: TCollectionExtendedString;
                   theTimeStamp: TCollectionExtendedString;
                   theTitle: TCollectionExtendedString;
                   theMIMEtype: TCollectionAsciiString;
                   theData: Handle[TColStdHArray1OfByte]): Handle[XCAFDocNote] {.
    importcpp: "CreateBinData", header: "XCAFDoc_NotesTool.hxx".}
proc getNotes*(this: XCAFDocNotesTool; theItemId: XCAFDocAssemblyItemId;
              theNoteLabels: var TDF_LabelSequence): int {.noSideEffect,
    importcpp: "GetNotes", header: "XCAFDoc_NotesTool.hxx".}
proc getNotes*(this: XCAFDocNotesTool; theItemLabel: TDF_Label;
              theNoteLabels: var TDF_LabelSequence): int {.noSideEffect,
    importcpp: "GetNotes", header: "XCAFDoc_NotesTool.hxx".}
proc getAttrNotes*(this: XCAFDocNotesTool; theItemId: XCAFDocAssemblyItemId;
                  theGUID: StandardGUID; theNoteLabels: var TDF_LabelSequence): int {.
    noSideEffect, importcpp: "GetAttrNotes", header: "XCAFDoc_NotesTool.hxx".}
proc getAttrNotes*(this: XCAFDocNotesTool; theItemLabel: TDF_Label;
                  theGUID: StandardGUID; theNoteLabels: var TDF_LabelSequence): int {.
    noSideEffect, importcpp: "GetAttrNotes", header: "XCAFDoc_NotesTool.hxx".}
proc getSubshapeNotes*(this: XCAFDocNotesTool; theItemId: XCAFDocAssemblyItemId;
                      theSubshapeIndex: int; theNoteLabels: var TDF_LabelSequence): int {.
    noSideEffect, importcpp: "GetSubshapeNotes", header: "XCAFDoc_NotesTool.hxx".}
proc addNote*(this: var XCAFDocNotesTool; theNoteLabel: TDF_Label;
             theItemId: XCAFDocAssemblyItemId): Handle[XCAFDocAssemblyItemRef] {.
    importcpp: "AddNote", header: "XCAFDoc_NotesTool.hxx".}
proc addNote*(this: var XCAFDocNotesTool; theNoteLabel: TDF_Label;
             theItemLabel: TDF_Label): Handle[XCAFDocAssemblyItemRef] {.
    importcpp: "AddNote", header: "XCAFDoc_NotesTool.hxx".}
proc addNoteToAttr*(this: var XCAFDocNotesTool; theNoteLabel: TDF_Label;
                   theItemId: XCAFDocAssemblyItemId; theGUID: StandardGUID): Handle[
    XCAFDocAssemblyItemRef] {.importcpp: "AddNoteToAttr",
                             header: "XCAFDoc_NotesTool.hxx".}
proc addNoteToAttr*(this: var XCAFDocNotesTool; theNoteLabel: TDF_Label;
                   theItemLabel: TDF_Label; theGUID: StandardGUID): Handle[
    XCAFDocAssemblyItemRef] {.importcpp: "AddNoteToAttr",
                             header: "XCAFDoc_NotesTool.hxx".}
proc addNoteToSubshape*(this: var XCAFDocNotesTool; theNoteLabel: TDF_Label;
                       theItemId: XCAFDocAssemblyItemId; theSubshapeIndex: int): Handle[
    XCAFDocAssemblyItemRef] {.importcpp: "AddNoteToSubshape",
                             header: "XCAFDoc_NotesTool.hxx".}
proc addNoteToSubshape*(this: var XCAFDocNotesTool; theNoteLabel: TDF_Label;
                       theItemLabel: TDF_Label; theSubshapeIndex: int): Handle[
    XCAFDocAssemblyItemRef] {.importcpp: "AddNoteToSubshape",
                             header: "XCAFDoc_NotesTool.hxx".}
proc removeNote*(this: var XCAFDocNotesTool; theNoteLabel: TDF_Label;
                theItemId: XCAFDocAssemblyItemId; theDelIfOrphan: bool = false): bool {.
    importcpp: "RemoveNote", header: "XCAFDoc_NotesTool.hxx".}
proc removeNote*(this: var XCAFDocNotesTool; theNoteLabel: TDF_Label;
                theItemLabel: TDF_Label; theDelIfOrphan: bool = false): bool {.
    importcpp: "RemoveNote", header: "XCAFDoc_NotesTool.hxx".}
proc removeSubshapeNote*(this: var XCAFDocNotesTool; theNoteLabel: TDF_Label;
                        theItemId: XCAFDocAssemblyItemId; theSubshapeIndex: int;
                        theDelIfOrphan: bool = false): bool {.
    importcpp: "RemoveSubshapeNote", header: "XCAFDoc_NotesTool.hxx".}
proc removeSubshapeNote*(this: var XCAFDocNotesTool; theNoteLabel: TDF_Label;
                        theItemLabel: TDF_Label; theSubshapeIndex: int;
                        theDelIfOrphan: bool = false): bool {.
    importcpp: "RemoveSubshapeNote", header: "XCAFDoc_NotesTool.hxx".}
proc removeAttrNote*(this: var XCAFDocNotesTool; theNoteLabel: TDF_Label;
                    theItemId: XCAFDocAssemblyItemId; theGUID: StandardGUID;
                    theDelIfOrphan: bool = false): bool {.
    importcpp: "RemoveAttrNote", header: "XCAFDoc_NotesTool.hxx".}
proc removeAttrNote*(this: var XCAFDocNotesTool; theNoteLabel: TDF_Label;
                    theItemLabel: TDF_Label; theGUID: StandardGUID;
                    theDelIfOrphan: bool = false): bool {.
    importcpp: "RemoveAttrNote", header: "XCAFDoc_NotesTool.hxx".}
proc removeAllNotes*(this: var XCAFDocNotesTool; theItemId: XCAFDocAssemblyItemId;
                    theDelIfOrphan: bool = false): bool {.
    importcpp: "RemoveAllNotes", header: "XCAFDoc_NotesTool.hxx".}
proc removeAllNotes*(this: var XCAFDocNotesTool; theItemLabel: TDF_Label;
                    theDelIfOrphan: bool = false): bool {.
    importcpp: "RemoveAllNotes", header: "XCAFDoc_NotesTool.hxx".}
proc removeAllSubshapeNotes*(this: var XCAFDocNotesTool;
                            theItemId: XCAFDocAssemblyItemId;
                            theSubshapeIndex: int; theDelIfOrphan: bool = false): bool {.
    importcpp: "RemoveAllSubshapeNotes", header: "XCAFDoc_NotesTool.hxx".}
proc removeAllAttrNotes*(this: var XCAFDocNotesTool;
                        theItemId: XCAFDocAssemblyItemId; theGUID: StandardGUID;
                        theDelIfOrphan: bool = false): bool {.
    importcpp: "RemoveAllAttrNotes", header: "XCAFDoc_NotesTool.hxx".}
proc removeAllAttrNotes*(this: var XCAFDocNotesTool; theItemLabel: TDF_Label;
                        theGUID: StandardGUID; theDelIfOrphan: bool = false): bool {.
    importcpp: "RemoveAllAttrNotes", header: "XCAFDoc_NotesTool.hxx".}
proc deleteNote*(this: var XCAFDocNotesTool; theNoteLabel: TDF_Label): bool {.
    importcpp: "DeleteNote", header: "XCAFDoc_NotesTool.hxx".}
proc deleteNotes*(this: var XCAFDocNotesTool; theNoteLabels: var TDF_LabelSequence): int {.
    importcpp: "DeleteNotes", header: "XCAFDoc_NotesTool.hxx".}
proc deleteAllNotes*(this: var XCAFDocNotesTool): int {.importcpp: "DeleteAllNotes",
    header: "XCAFDoc_NotesTool.hxx".}
proc nbOrphanNotes*(this: XCAFDocNotesTool): int {.noSideEffect,
    importcpp: "NbOrphanNotes", header: "XCAFDoc_NotesTool.hxx".}
proc getOrphanNotes*(this: XCAFDocNotesTool; theNoteLabels: var TDF_LabelSequence) {.
    noSideEffect, importcpp: "GetOrphanNotes", header: "XCAFDoc_NotesTool.hxx".}
proc deleteOrphanNotes*(this: var XCAFDocNotesTool): int {.
    importcpp: "DeleteOrphanNotes", header: "XCAFDoc_NotesTool.hxx".}
proc id*(this: XCAFDocNotesTool): StandardGUID {.noSideEffect, importcpp: "ID",
    header: "XCAFDoc_NotesTool.hxx".}
proc dump*(this: XCAFDocNotesTool; theOS: var StandardOStream): var StandardOStream {.
    noSideEffect, importcpp: "Dump", header: "XCAFDoc_NotesTool.hxx".}
discard "forward decl of XCAFDoc_NotesTool"
type
  HandleXCAFDocNotesTool* = Handle[XCAFDocNotesTool]

