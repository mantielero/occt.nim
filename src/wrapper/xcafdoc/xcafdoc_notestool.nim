import ../tdf/tdf_types
import ../tcolstd/tcolstd_types
import xcafdoc_types
import ../standard/standard_types
import ../tcollection/tcollection_types
import ../osd/osd_types


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



proc getID*(): StandardGUID {.cdecl, importcpp: "XCAFDoc_NotesTool::GetID(@)",
                           header: "XCAFDoc_NotesTool.hxx".}
proc set*(theLabel: TDF_Label): Handle[XCAFDocNotesTool] {.cdecl,
    importcpp: "XCAFDoc_NotesTool::Set(@)", header: "XCAFDoc_NotesTool.hxx".}
proc newXCAFDocNotesTool*(): XCAFDocNotesTool {.cdecl, constructor,
    importcpp: "XCAFDoc_NotesTool(@)", header: "XCAFDoc_NotesTool.hxx".}
proc getNotesLabel*(this: XCAFDocNotesTool): TDF_Label {.noSideEffect, cdecl,
    importcpp: "GetNotesLabel", header: "XCAFDoc_NotesTool.hxx".}
proc getAnnotatedItemsLabel*(this: XCAFDocNotesTool): TDF_Label {.noSideEffect,
    cdecl, importcpp: "GetAnnotatedItemsLabel", header: "XCAFDoc_NotesTool.hxx".}
proc nbNotes*(this: XCAFDocNotesTool): cint {.noSideEffect, cdecl,
    importcpp: "NbNotes", header: "XCAFDoc_NotesTool.hxx".}
proc nbAnnotatedItems*(this: XCAFDocNotesTool): cint {.noSideEffect, cdecl,
    importcpp: "NbAnnotatedItems", header: "XCAFDoc_NotesTool.hxx".}
proc getNotes*(this: XCAFDocNotesTool; theNoteLabels: var TDF_LabelSequence) {.
    noSideEffect, cdecl, importcpp: "GetNotes", header: "XCAFDoc_NotesTool.hxx".}
proc getAnnotatedItems*(this: XCAFDocNotesTool; theLabels: var TDF_LabelSequence) {.
    noSideEffect, cdecl, importcpp: "GetAnnotatedItems",
    header: "XCAFDoc_NotesTool.hxx".}
proc isAnnotatedItem*(this: XCAFDocNotesTool; theItemId: XCAFDocAssemblyItemId): bool {.
    noSideEffect, cdecl, importcpp: "IsAnnotatedItem",
    header: "XCAFDoc_NotesTool.hxx".}
proc isAnnotatedItem*(this: XCAFDocNotesTool; theItemLabel: TDF_Label): bool {.
    noSideEffect, cdecl, importcpp: "IsAnnotatedItem",
    header: "XCAFDoc_NotesTool.hxx".}
proc findAnnotatedItem*(this: XCAFDocNotesTool; theItemId: XCAFDocAssemblyItemId): TDF_Label {.
    noSideEffect, cdecl, importcpp: "FindAnnotatedItem",
    header: "XCAFDoc_NotesTool.hxx".}
proc findAnnotatedItem*(this: XCAFDocNotesTool; theItemLabel: TDF_Label): TDF_Label {.
    noSideEffect, cdecl, importcpp: "FindAnnotatedItem",
    header: "XCAFDoc_NotesTool.hxx".}
proc findAnnotatedItemAttr*(this: XCAFDocNotesTool;
                           theItemId: XCAFDocAssemblyItemId; theGUID: StandardGUID): TDF_Label {.
    noSideEffect, cdecl, importcpp: "FindAnnotatedItemAttr",
    header: "XCAFDoc_NotesTool.hxx".}
proc findAnnotatedItemAttr*(this: XCAFDocNotesTool; theItemLabel: TDF_Label;
                           theGUID: StandardGUID): TDF_Label {.noSideEffect, cdecl,
    importcpp: "FindAnnotatedItemAttr", header: "XCAFDoc_NotesTool.hxx".}
proc findAnnotatedItemSubshape*(this: XCAFDocNotesTool;
                               theItemId: XCAFDocAssemblyItemId;
                               theSubshapeIndex: cint): TDF_Label {.noSideEffect,
    cdecl, importcpp: "FindAnnotatedItemSubshape", header: "XCAFDoc_NotesTool.hxx".}
proc findAnnotatedItemSubshape*(this: XCAFDocNotesTool; theItemLabel: TDF_Label;
                               theSubshapeIndex: cint): TDF_Label {.noSideEffect,
    cdecl, importcpp: "FindAnnotatedItemSubshape", header: "XCAFDoc_NotesTool.hxx".}
proc createComment*(this: var XCAFDocNotesTool;
                   theUserName: TCollectionExtendedString;
                   theTimeStamp: TCollectionExtendedString;
                   theComment: TCollectionExtendedString): Handle[XCAFDocNote] {.
    cdecl, importcpp: "CreateComment", header: "XCAFDoc_NotesTool.hxx".}
proc createBalloon*(this: var XCAFDocNotesTool;
                   theUserName: TCollectionExtendedString;
                   theTimeStamp: TCollectionExtendedString;
                   theComment: TCollectionExtendedString): Handle[XCAFDocNote] {.
    cdecl, importcpp: "CreateBalloon", header: "XCAFDoc_NotesTool.hxx".}
proc createBinData*(this: var XCAFDocNotesTool;
                   theUserName: TCollectionExtendedString;
                   theTimeStamp: TCollectionExtendedString;
                   theTitle: TCollectionExtendedString;
                   theMIMEtype: TCollectionAsciiString; theFile: var OSD_File): Handle[
    XCAFDocNote] {.cdecl, importcpp: "CreateBinData",
                  header: "XCAFDoc_NotesTool.hxx".}
proc createBinData*(this: var XCAFDocNotesTool;
                   theUserName: TCollectionExtendedString;
                   theTimeStamp: TCollectionExtendedString;
                   theTitle: TCollectionExtendedString;
                   theMIMEtype: TCollectionAsciiString;
                   theData: Handle[TColStdHArray1OfByte]): Handle[XCAFDocNote] {.
    cdecl, importcpp: "CreateBinData", header: "XCAFDoc_NotesTool.hxx".}
proc getNotes*(this: XCAFDocNotesTool; theItemId: XCAFDocAssemblyItemId;
              theNoteLabels: var TDF_LabelSequence): cint {.noSideEffect, cdecl,
    importcpp: "GetNotes", header: "XCAFDoc_NotesTool.hxx".}
proc getNotes*(this: XCAFDocNotesTool; theItemLabel: TDF_Label;
              theNoteLabels: var TDF_LabelSequence): cint {.noSideEffect, cdecl,
    importcpp: "GetNotes", header: "XCAFDoc_NotesTool.hxx".}
proc getAttrNotes*(this: XCAFDocNotesTool; theItemId: XCAFDocAssemblyItemId;
                  theGUID: StandardGUID; theNoteLabels: var TDF_LabelSequence): cint {.
    noSideEffect, cdecl, importcpp: "GetAttrNotes", header: "XCAFDoc_NotesTool.hxx".}
proc getAttrNotes*(this: XCAFDocNotesTool; theItemLabel: TDF_Label;
                  theGUID: StandardGUID; theNoteLabels: var TDF_LabelSequence): cint {.
    noSideEffect, cdecl, importcpp: "GetAttrNotes", header: "XCAFDoc_NotesTool.hxx".}
proc getSubshapeNotes*(this: XCAFDocNotesTool; theItemId: XCAFDocAssemblyItemId;
                      theSubshapeIndex: cint; theNoteLabels: var TDF_LabelSequence): cint {.
    noSideEffect, cdecl, importcpp: "GetSubshapeNotes",
    header: "XCAFDoc_NotesTool.hxx".}
proc addNote*(this: var XCAFDocNotesTool; theNoteLabel: TDF_Label;
             theItemId: XCAFDocAssemblyItemId): Handle[XCAFDocAssemblyItemRef] {.
    cdecl, importcpp: "AddNote", header: "XCAFDoc_NotesTool.hxx".}
proc addNote*(this: var XCAFDocNotesTool; theNoteLabel: TDF_Label;
             theItemLabel: TDF_Label): Handle[XCAFDocAssemblyItemRef] {.cdecl,
    importcpp: "AddNote", header: "XCAFDoc_NotesTool.hxx".}
proc addNoteToAttr*(this: var XCAFDocNotesTool; theNoteLabel: TDF_Label;
                   theItemId: XCAFDocAssemblyItemId; theGUID: StandardGUID): Handle[
    XCAFDocAssemblyItemRef] {.cdecl, importcpp: "AddNoteToAttr",
                             header: "XCAFDoc_NotesTool.hxx".}
proc addNoteToAttr*(this: var XCAFDocNotesTool; theNoteLabel: TDF_Label;
                   theItemLabel: TDF_Label; theGUID: StandardGUID): Handle[
    XCAFDocAssemblyItemRef] {.cdecl, importcpp: "AddNoteToAttr",
                             header: "XCAFDoc_NotesTool.hxx".}
proc addNoteToSubshape*(this: var XCAFDocNotesTool; theNoteLabel: TDF_Label;
                       theItemId: XCAFDocAssemblyItemId; theSubshapeIndex: cint): Handle[
    XCAFDocAssemblyItemRef] {.cdecl, importcpp: "AddNoteToSubshape",
                             header: "XCAFDoc_NotesTool.hxx".}
proc addNoteToSubshape*(this: var XCAFDocNotesTool; theNoteLabel: TDF_Label;
                       theItemLabel: TDF_Label; theSubshapeIndex: cint): Handle[
    XCAFDocAssemblyItemRef] {.cdecl, importcpp: "AddNoteToSubshape",
                             header: "XCAFDoc_NotesTool.hxx".}
proc removeNote*(this: var XCAFDocNotesTool; theNoteLabel: TDF_Label;
                theItemId: XCAFDocAssemblyItemId; theDelIfOrphan: bool = false): bool {.
    cdecl, importcpp: "RemoveNote", header: "XCAFDoc_NotesTool.hxx".}
proc removeNote*(this: var XCAFDocNotesTool; theNoteLabel: TDF_Label;
                theItemLabel: TDF_Label; theDelIfOrphan: bool = false): bool {.cdecl,
    importcpp: "RemoveNote", header: "XCAFDoc_NotesTool.hxx".}
proc removeSubshapeNote*(this: var XCAFDocNotesTool; theNoteLabel: TDF_Label;
                        theItemId: XCAFDocAssemblyItemId; theSubshapeIndex: cint;
                        theDelIfOrphan: bool = false): bool {.cdecl,
    importcpp: "RemoveSubshapeNote", header: "XCAFDoc_NotesTool.hxx".}
proc removeSubshapeNote*(this: var XCAFDocNotesTool; theNoteLabel: TDF_Label;
                        theItemLabel: TDF_Label; theSubshapeIndex: cint;
                        theDelIfOrphan: bool = false): bool {.cdecl,
    importcpp: "RemoveSubshapeNote", header: "XCAFDoc_NotesTool.hxx".}
proc removeAttrNote*(this: var XCAFDocNotesTool; theNoteLabel: TDF_Label;
                    theItemId: XCAFDocAssemblyItemId; theGUID: StandardGUID;
                    theDelIfOrphan: bool = false): bool {.cdecl,
    importcpp: "RemoveAttrNote", header: "XCAFDoc_NotesTool.hxx".}
proc removeAttrNote*(this: var XCAFDocNotesTool; theNoteLabel: TDF_Label;
                    theItemLabel: TDF_Label; theGUID: StandardGUID;
                    theDelIfOrphan: bool = false): bool {.cdecl,
    importcpp: "RemoveAttrNote", header: "XCAFDoc_NotesTool.hxx".}
proc removeAllNotes*(this: var XCAFDocNotesTool; theItemId: XCAFDocAssemblyItemId;
                    theDelIfOrphan: bool = false): bool {.cdecl,
    importcpp: "RemoveAllNotes", header: "XCAFDoc_NotesTool.hxx".}
proc removeAllNotes*(this: var XCAFDocNotesTool; theItemLabel: TDF_Label;
                    theDelIfOrphan: bool = false): bool {.cdecl,
    importcpp: "RemoveAllNotes", header: "XCAFDoc_NotesTool.hxx".}
proc removeAllSubshapeNotes*(this: var XCAFDocNotesTool;
                            theItemId: XCAFDocAssemblyItemId;
                            theSubshapeIndex: cint; theDelIfOrphan: bool = false): bool {.
    cdecl, importcpp: "RemoveAllSubshapeNotes", header: "XCAFDoc_NotesTool.hxx".}
proc removeAllAttrNotes*(this: var XCAFDocNotesTool;
                        theItemId: XCAFDocAssemblyItemId; theGUID: StandardGUID;
                        theDelIfOrphan: bool = false): bool {.cdecl,
    importcpp: "RemoveAllAttrNotes", header: "XCAFDoc_NotesTool.hxx".}
proc removeAllAttrNotes*(this: var XCAFDocNotesTool; theItemLabel: TDF_Label;
                        theGUID: StandardGUID; theDelIfOrphan: bool = false): bool {.
    cdecl, importcpp: "RemoveAllAttrNotes", header: "XCAFDoc_NotesTool.hxx".}
proc deleteNote*(this: var XCAFDocNotesTool; theNoteLabel: TDF_Label): bool {.cdecl,
    importcpp: "DeleteNote", header: "XCAFDoc_NotesTool.hxx".}
proc deleteNotes*(this: var XCAFDocNotesTool; theNoteLabels: var TDF_LabelSequence): cint {.
    cdecl, importcpp: "DeleteNotes", header: "XCAFDoc_NotesTool.hxx".}
proc deleteAllNotes*(this: var XCAFDocNotesTool): cint {.cdecl,
    importcpp: "DeleteAllNotes", header: "XCAFDoc_NotesTool.hxx".}
proc nbOrphanNotes*(this: XCAFDocNotesTool): cint {.noSideEffect, cdecl,
    importcpp: "NbOrphanNotes", header: "XCAFDoc_NotesTool.hxx".}
proc getOrphanNotes*(this: XCAFDocNotesTool; theNoteLabels: var TDF_LabelSequence) {.
    noSideEffect, cdecl, importcpp: "GetOrphanNotes",
    header: "XCAFDoc_NotesTool.hxx".}
proc deleteOrphanNotes*(this: var XCAFDocNotesTool): cint {.cdecl,
    importcpp: "DeleteOrphanNotes", header: "XCAFDoc_NotesTool.hxx".}
proc id*(this: XCAFDocNotesTool): StandardGUID {.noSideEffect, cdecl, importcpp: "ID",
    header: "XCAFDoc_NotesTool.hxx".}
proc dump*(this: XCAFDocNotesTool; theOS: var StandardOStream): var StandardOStream {.
    noSideEffect, cdecl, importcpp: "Dump", header: "XCAFDoc_NotesTool.hxx".}


