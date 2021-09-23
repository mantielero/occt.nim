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

import
  ../Standard/Standard, ../Standard/Standard_Type,
  ../TDataStd/TDataStd_GenericEmpty, ../TDF/TDF_LabelSequence

discard "forward decl of OSD_File"
discard "forward decl of Standard_GUID"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of TCollection_ExtendedString"
import
  ../TColStd/TColStd_HArray1OfByte

discard "forward decl of TDF_RelocationTable"
discard "forward decl of XCAFDoc_Note"
discard "forward decl of XCAFDoc_AssemblyItemId"
discard "forward decl of XCAFDoc_AssemblyItemRef"
type
  XCAFDoc_NotesTool* {.importcpp: "XCAFDoc_NotesTool",
                      header: "XCAFDoc_NotesTool.hxx", bycopy.} = object of TDataStd_GenericEmpty ##  Overrides TDF_Attribute virtuals


## !!!Ignored construct:  public : DEFINE_DERIVED_ATTRIBUTE ( XCAFDoc_NotesTool , TDataStd_GenericEmpty ) ! Returns default attribute GUID static const Standard_GUID & GetID ( ) ;
## Error: token expected: ) but got: ,!!!

proc Set*(theLabel: TDF_Label): handle[XCAFDoc_NotesTool] {.
    importcpp: "XCAFDoc_NotesTool::Set(@)", header: "XCAFDoc_NotesTool.hxx".}
proc constructXCAFDoc_NotesTool*(): XCAFDoc_NotesTool {.constructor,
    importcpp: "XCAFDoc_NotesTool(@)", header: "XCAFDoc_NotesTool.hxx".}
proc GetNotesLabel*(this: XCAFDoc_NotesTool): TDF_Label {.noSideEffect,
    importcpp: "GetNotesLabel", header: "XCAFDoc_NotesTool.hxx".}
proc GetAnnotatedItemsLabel*(this: XCAFDoc_NotesTool): TDF_Label {.noSideEffect,
    importcpp: "GetAnnotatedItemsLabel", header: "XCAFDoc_NotesTool.hxx".}
proc NbNotes*(this: XCAFDoc_NotesTool): Standard_Integer {.noSideEffect,
    importcpp: "NbNotes", header: "XCAFDoc_NotesTool.hxx".}
proc NbAnnotatedItems*(this: XCAFDoc_NotesTool): Standard_Integer {.noSideEffect,
    importcpp: "NbAnnotatedItems", header: "XCAFDoc_NotesTool.hxx".}
proc GetNotes*(this: XCAFDoc_NotesTool; theNoteLabels: var TDF_LabelSequence) {.
    noSideEffect, importcpp: "GetNotes", header: "XCAFDoc_NotesTool.hxx".}
proc GetAnnotatedItems*(this: XCAFDoc_NotesTool; theLabels: var TDF_LabelSequence) {.
    noSideEffect, importcpp: "GetAnnotatedItems", header: "XCAFDoc_NotesTool.hxx".}
proc IsAnnotatedItem*(this: XCAFDoc_NotesTool; theItemId: XCAFDoc_AssemblyItemId): Standard_Boolean {.
    noSideEffect, importcpp: "IsAnnotatedItem", header: "XCAFDoc_NotesTool.hxx".}
proc IsAnnotatedItem*(this: XCAFDoc_NotesTool; theItemLabel: TDF_Label): Standard_Boolean {.
    noSideEffect, importcpp: "IsAnnotatedItem", header: "XCAFDoc_NotesTool.hxx".}
proc FindAnnotatedItem*(this: XCAFDoc_NotesTool; theItemId: XCAFDoc_AssemblyItemId): TDF_Label {.
    noSideEffect, importcpp: "FindAnnotatedItem", header: "XCAFDoc_NotesTool.hxx".}
proc FindAnnotatedItem*(this: XCAFDoc_NotesTool; theItemLabel: TDF_Label): TDF_Label {.
    noSideEffect, importcpp: "FindAnnotatedItem", header: "XCAFDoc_NotesTool.hxx".}
proc FindAnnotatedItemAttr*(this: XCAFDoc_NotesTool;
                           theItemId: XCAFDoc_AssemblyItemId;
                           theGUID: Standard_GUID): TDF_Label {.noSideEffect,
    importcpp: "FindAnnotatedItemAttr", header: "XCAFDoc_NotesTool.hxx".}
proc FindAnnotatedItemAttr*(this: XCAFDoc_NotesTool; theItemLabel: TDF_Label;
                           theGUID: Standard_GUID): TDF_Label {.noSideEffect,
    importcpp: "FindAnnotatedItemAttr", header: "XCAFDoc_NotesTool.hxx".}
proc FindAnnotatedItemSubshape*(this: XCAFDoc_NotesTool;
                               theItemId: XCAFDoc_AssemblyItemId;
                               theSubshapeIndex: Standard_Integer): TDF_Label {.
    noSideEffect, importcpp: "FindAnnotatedItemSubshape",
    header: "XCAFDoc_NotesTool.hxx".}
proc FindAnnotatedItemSubshape*(this: XCAFDoc_NotesTool; theItemLabel: TDF_Label;
                               theSubshapeIndex: Standard_Integer): TDF_Label {.
    noSideEffect, importcpp: "FindAnnotatedItemSubshape",
    header: "XCAFDoc_NotesTool.hxx".}
proc CreateComment*(this: var XCAFDoc_NotesTool;
                   theUserName: TCollection_ExtendedString;
                   theTimeStamp: TCollection_ExtendedString;
                   theComment: TCollection_ExtendedString): handle[XCAFDoc_Note] {.
    importcpp: "CreateComment", header: "XCAFDoc_NotesTool.hxx".}
proc CreateBalloon*(this: var XCAFDoc_NotesTool;
                   theUserName: TCollection_ExtendedString;
                   theTimeStamp: TCollection_ExtendedString;
                   theComment: TCollection_ExtendedString): handle[XCAFDoc_Note] {.
    importcpp: "CreateBalloon", header: "XCAFDoc_NotesTool.hxx".}
proc CreateBinData*(this: var XCAFDoc_NotesTool;
                   theUserName: TCollection_ExtendedString;
                   theTimeStamp: TCollection_ExtendedString;
                   theTitle: TCollection_ExtendedString;
                   theMIMEtype: TCollection_AsciiString; theFile: var OSD_File): handle[
    XCAFDoc_Note] {.importcpp: "CreateBinData", header: "XCAFDoc_NotesTool.hxx".}
proc CreateBinData*(this: var XCAFDoc_NotesTool;
                   theUserName: TCollection_ExtendedString;
                   theTimeStamp: TCollection_ExtendedString;
                   theTitle: TCollection_ExtendedString;
                   theMIMEtype: TCollection_AsciiString;
                   theData: handle[TColStd_HArray1OfByte]): handle[XCAFDoc_Note] {.
    importcpp: "CreateBinData", header: "XCAFDoc_NotesTool.hxx".}
proc GetNotes*(this: XCAFDoc_NotesTool; theItemId: XCAFDoc_AssemblyItemId;
              theNoteLabels: var TDF_LabelSequence): Standard_Integer {.
    noSideEffect, importcpp: "GetNotes", header: "XCAFDoc_NotesTool.hxx".}
proc GetNotes*(this: XCAFDoc_NotesTool; theItemLabel: TDF_Label;
              theNoteLabels: var TDF_LabelSequence): Standard_Integer {.
    noSideEffect, importcpp: "GetNotes", header: "XCAFDoc_NotesTool.hxx".}
proc GetAttrNotes*(this: XCAFDoc_NotesTool; theItemId: XCAFDoc_AssemblyItemId;
                  theGUID: Standard_GUID; theNoteLabels: var TDF_LabelSequence): Standard_Integer {.
    noSideEffect, importcpp: "GetAttrNotes", header: "XCAFDoc_NotesTool.hxx".}
proc GetAttrNotes*(this: XCAFDoc_NotesTool; theItemLabel: TDF_Label;
                  theGUID: Standard_GUID; theNoteLabels: var TDF_LabelSequence): Standard_Integer {.
    noSideEffect, importcpp: "GetAttrNotes", header: "XCAFDoc_NotesTool.hxx".}
proc GetSubshapeNotes*(this: XCAFDoc_NotesTool; theItemId: XCAFDoc_AssemblyItemId;
                      theSubshapeIndex: Standard_Integer;
                      theNoteLabels: var TDF_LabelSequence): Standard_Integer {.
    noSideEffect, importcpp: "GetSubshapeNotes", header: "XCAFDoc_NotesTool.hxx".}
proc AddNote*(this: var XCAFDoc_NotesTool; theNoteLabel: TDF_Label;
             theItemId: XCAFDoc_AssemblyItemId): handle[XCAFDoc_AssemblyItemRef] {.
    importcpp: "AddNote", header: "XCAFDoc_NotesTool.hxx".}
proc AddNote*(this: var XCAFDoc_NotesTool; theNoteLabel: TDF_Label;
             theItemLabel: TDF_Label): handle[XCAFDoc_AssemblyItemRef] {.
    importcpp: "AddNote", header: "XCAFDoc_NotesTool.hxx".}
proc AddNoteToAttr*(this: var XCAFDoc_NotesTool; theNoteLabel: TDF_Label;
                   theItemId: XCAFDoc_AssemblyItemId; theGUID: Standard_GUID): handle[
    XCAFDoc_AssemblyItemRef] {.importcpp: "AddNoteToAttr",
                              header: "XCAFDoc_NotesTool.hxx".}
proc AddNoteToAttr*(this: var XCAFDoc_NotesTool; theNoteLabel: TDF_Label;
                   theItemLabel: TDF_Label; theGUID: Standard_GUID): handle[
    XCAFDoc_AssemblyItemRef] {.importcpp: "AddNoteToAttr",
                              header: "XCAFDoc_NotesTool.hxx".}
proc AddNoteToSubshape*(this: var XCAFDoc_NotesTool; theNoteLabel: TDF_Label;
                       theItemId: XCAFDoc_AssemblyItemId;
                       theSubshapeIndex: Standard_Integer): handle[
    XCAFDoc_AssemblyItemRef] {.importcpp: "AddNoteToSubshape",
                              header: "XCAFDoc_NotesTool.hxx".}
proc AddNoteToSubshape*(this: var XCAFDoc_NotesTool; theNoteLabel: TDF_Label;
                       theItemLabel: TDF_Label; theSubshapeIndex: Standard_Integer): handle[
    XCAFDoc_AssemblyItemRef] {.importcpp: "AddNoteToSubshape",
                              header: "XCAFDoc_NotesTool.hxx".}
proc RemoveNote*(this: var XCAFDoc_NotesTool; theNoteLabel: TDF_Label;
                theItemId: XCAFDoc_AssemblyItemId;
                theDelIfOrphan: Standard_Boolean = Standard_False): Standard_Boolean {.
    importcpp: "RemoveNote", header: "XCAFDoc_NotesTool.hxx".}
proc RemoveNote*(this: var XCAFDoc_NotesTool; theNoteLabel: TDF_Label;
                theItemLabel: TDF_Label;
                theDelIfOrphan: Standard_Boolean = Standard_False): Standard_Boolean {.
    importcpp: "RemoveNote", header: "XCAFDoc_NotesTool.hxx".}
proc RemoveSubshapeNote*(this: var XCAFDoc_NotesTool; theNoteLabel: TDF_Label;
                        theItemId: XCAFDoc_AssemblyItemId;
                        theSubshapeIndex: Standard_Integer;
                        theDelIfOrphan: Standard_Boolean = Standard_False): Standard_Boolean {.
    importcpp: "RemoveSubshapeNote", header: "XCAFDoc_NotesTool.hxx".}
proc RemoveSubshapeNote*(this: var XCAFDoc_NotesTool; theNoteLabel: TDF_Label;
                        theItemLabel: TDF_Label;
                        theSubshapeIndex: Standard_Integer;
                        theDelIfOrphan: Standard_Boolean = Standard_False): Standard_Boolean {.
    importcpp: "RemoveSubshapeNote", header: "XCAFDoc_NotesTool.hxx".}
proc RemoveAttrNote*(this: var XCAFDoc_NotesTool; theNoteLabel: TDF_Label;
                    theItemId: XCAFDoc_AssemblyItemId; theGUID: Standard_GUID;
                    theDelIfOrphan: Standard_Boolean = Standard_False): Standard_Boolean {.
    importcpp: "RemoveAttrNote", header: "XCAFDoc_NotesTool.hxx".}
proc RemoveAttrNote*(this: var XCAFDoc_NotesTool; theNoteLabel: TDF_Label;
                    theItemLabel: TDF_Label; theGUID: Standard_GUID;
                    theDelIfOrphan: Standard_Boolean = Standard_False): Standard_Boolean {.
    importcpp: "RemoveAttrNote", header: "XCAFDoc_NotesTool.hxx".}
proc RemoveAllNotes*(this: var XCAFDoc_NotesTool; theItemId: XCAFDoc_AssemblyItemId;
                    theDelIfOrphan: Standard_Boolean = Standard_False): Standard_Boolean {.
    importcpp: "RemoveAllNotes", header: "XCAFDoc_NotesTool.hxx".}
proc RemoveAllNotes*(this: var XCAFDoc_NotesTool; theItemLabel: TDF_Label;
                    theDelIfOrphan: Standard_Boolean = Standard_False): Standard_Boolean {.
    importcpp: "RemoveAllNotes", header: "XCAFDoc_NotesTool.hxx".}
proc RemoveAllSubshapeNotes*(this: var XCAFDoc_NotesTool;
                            theItemId: XCAFDoc_AssemblyItemId;
                            theSubshapeIndex: Standard_Integer;
                            theDelIfOrphan: Standard_Boolean = Standard_False): Standard_Boolean {.
    importcpp: "RemoveAllSubshapeNotes", header: "XCAFDoc_NotesTool.hxx".}
proc RemoveAllAttrNotes*(this: var XCAFDoc_NotesTool;
                        theItemId: XCAFDoc_AssemblyItemId; theGUID: Standard_GUID;
                        theDelIfOrphan: Standard_Boolean = Standard_False): Standard_Boolean {.
    importcpp: "RemoveAllAttrNotes", header: "XCAFDoc_NotesTool.hxx".}
proc RemoveAllAttrNotes*(this: var XCAFDoc_NotesTool; theItemLabel: TDF_Label;
                        theGUID: Standard_GUID;
                        theDelIfOrphan: Standard_Boolean = Standard_False): Standard_Boolean {.
    importcpp: "RemoveAllAttrNotes", header: "XCAFDoc_NotesTool.hxx".}
proc DeleteNote*(this: var XCAFDoc_NotesTool; theNoteLabel: TDF_Label): Standard_Boolean {.
    importcpp: "DeleteNote", header: "XCAFDoc_NotesTool.hxx".}
proc DeleteNotes*(this: var XCAFDoc_NotesTool; theNoteLabels: var TDF_LabelSequence): Standard_Integer {.
    importcpp: "DeleteNotes", header: "XCAFDoc_NotesTool.hxx".}
proc DeleteAllNotes*(this: var XCAFDoc_NotesTool): Standard_Integer {.
    importcpp: "DeleteAllNotes", header: "XCAFDoc_NotesTool.hxx".}
proc NbOrphanNotes*(this: XCAFDoc_NotesTool): Standard_Integer {.noSideEffect,
    importcpp: "NbOrphanNotes", header: "XCAFDoc_NotesTool.hxx".}
proc GetOrphanNotes*(this: XCAFDoc_NotesTool; theNoteLabels: var TDF_LabelSequence) {.
    noSideEffect, importcpp: "GetOrphanNotes", header: "XCAFDoc_NotesTool.hxx".}
proc DeleteOrphanNotes*(this: var XCAFDoc_NotesTool): Standard_Integer {.
    importcpp: "DeleteOrphanNotes", header: "XCAFDoc_NotesTool.hxx".}
proc ID*(this: XCAFDoc_NotesTool): Standard_GUID {.noSideEffect, importcpp: "ID",
    header: "XCAFDoc_NotesTool.hxx".}
proc Dump*(this: XCAFDoc_NotesTool; theOS: var Standard_OStream): var Standard_OStream {.
    noSideEffect, importcpp: "Dump", header: "XCAFDoc_NotesTool.hxx".}
discard "forward decl of XCAFDoc_NotesTool"
type
  Handle_XCAFDoc_NotesTool* = handle[XCAFDoc_NotesTool]
