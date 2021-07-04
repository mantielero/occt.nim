##  Copyright (c) 2018 OPEN CASCADE SAS
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
  ../gp/gp_Ax2, ../gp/gp_Pnt, ../Standard/Standard, ../Standard/Standard_Transient,
  ../Standard/Standard_Type, ../TopoDS/TopoDS_Shape

## ! object to store note auxiliary data

type
  XCAFNoteObjects_NoteObject* {.importcpp: "XCAFNoteObjects_NoteObject",
                               header: "XCAFNoteObjects_NoteObject.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                          ## !
                                                                                                          ## Empty
                                                                                                          ## object

  XCAFNoteObjects_NoteObjectbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "XCAFNoteObjects_NoteObject::get_type_name(@)",
                              header: "XCAFNoteObjects_NoteObject.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "XCAFNoteObjects_NoteObject::get_type_descriptor(@)",
    header: "XCAFNoteObjects_NoteObject.hxx".}
proc DynamicType*(this: XCAFNoteObjects_NoteObject): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "XCAFNoteObjects_NoteObject.hxx".}
proc constructXCAFNoteObjects_NoteObject*(): XCAFNoteObjects_NoteObject {.
    constructor, importcpp: "XCAFNoteObjects_NoteObject(@)",
    header: "XCAFNoteObjects_NoteObject.hxx".}
proc constructXCAFNoteObjects_NoteObject*(
    theObj: handle[XCAFNoteObjects_NoteObject]): XCAFNoteObjects_NoteObject {.
    constructor, importcpp: "XCAFNoteObjects_NoteObject(@)",
    header: "XCAFNoteObjects_NoteObject.hxx".}
proc HasPlane*(this: XCAFNoteObjects_NoteObject): Standard_Boolean {.noSideEffect,
    importcpp: "HasPlane", header: "XCAFNoteObjects_NoteObject.hxx".}
proc GetPlane*(this: XCAFNoteObjects_NoteObject): gp_Ax2 {.noSideEffect,
    importcpp: "GetPlane", header: "XCAFNoteObjects_NoteObject.hxx".}
proc SetPlane*(this: var XCAFNoteObjects_NoteObject; thePlane: gp_Ax2) {.
    importcpp: "SetPlane", header: "XCAFNoteObjects_NoteObject.hxx".}
proc HasPoint*(this: XCAFNoteObjects_NoteObject): Standard_Boolean {.noSideEffect,
    importcpp: "HasPoint", header: "XCAFNoteObjects_NoteObject.hxx".}
proc GetPoint*(this: XCAFNoteObjects_NoteObject): gp_Pnt {.noSideEffect,
    importcpp: "GetPoint", header: "XCAFNoteObjects_NoteObject.hxx".}
proc SetPoint*(this: var XCAFNoteObjects_NoteObject; thePnt: gp_Pnt) {.
    importcpp: "SetPoint", header: "XCAFNoteObjects_NoteObject.hxx".}
proc HasPointText*(this: XCAFNoteObjects_NoteObject): Standard_Boolean {.
    noSideEffect, importcpp: "HasPointText",
    header: "XCAFNoteObjects_NoteObject.hxx".}
proc GetPointText*(this: XCAFNoteObjects_NoteObject): gp_Pnt {.noSideEffect,
    importcpp: "GetPointText", header: "XCAFNoteObjects_NoteObject.hxx".}
proc SetPointText*(this: var XCAFNoteObjects_NoteObject; thePnt: gp_Pnt) {.
    importcpp: "SetPointText", header: "XCAFNoteObjects_NoteObject.hxx".}
proc GetPresentation*(this: XCAFNoteObjects_NoteObject): TopoDS_Shape {.
    noSideEffect, importcpp: "GetPresentation",
    header: "XCAFNoteObjects_NoteObject.hxx".}
proc SetPresentation*(this: var XCAFNoteObjects_NoteObject;
                     thePresentation: TopoDS_Shape) {.
    importcpp: "SetPresentation", header: "XCAFNoteObjects_NoteObject.hxx".}
proc Reset*(this: var XCAFNoteObjects_NoteObject) {.importcpp: "Reset",
    header: "XCAFNoteObjects_NoteObject.hxx".}
discard "forward decl of XCAFNoteObjects_NoteObject"
type
  Handle_XCAFNoteObjects_NoteObject* = handle[XCAFNoteObjects_NoteObject]
