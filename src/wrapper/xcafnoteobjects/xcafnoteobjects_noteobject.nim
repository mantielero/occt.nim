import ../standard/standard_types
import ../topods/topods_types
import xcafnoteobjects_types
import ../gp/gp_types


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

## ! object to store note auxiliary data



proc newXCAFNoteObjectsNoteObject*(): XCAFNoteObjectsNoteObject {.cdecl,
    constructor, importcpp: "XCAFNoteObjects_NoteObject(@)",
    header: "XCAFNoteObjects_NoteObject.hxx".}
proc newXCAFNoteObjectsNoteObject*(theObj: Handle[XCAFNoteObjectsNoteObject]): XCAFNoteObjectsNoteObject {.
    cdecl, constructor, importcpp: "XCAFNoteObjects_NoteObject(@)",
    header: "XCAFNoteObjects_NoteObject.hxx".}
proc hasPlane*(this: XCAFNoteObjectsNoteObject): bool {.noSideEffect, cdecl,
    importcpp: "HasPlane", header: "XCAFNoteObjects_NoteObject.hxx".}
proc getPlane*(this: XCAFNoteObjectsNoteObject): gp_Ax2 {.noSideEffect, cdecl,
    importcpp: "GetPlane", header: "XCAFNoteObjects_NoteObject.hxx".}
proc setPlane*(this: var XCAFNoteObjectsNoteObject; thePlane: gp_Ax2) {.cdecl,
    importcpp: "SetPlane", header: "XCAFNoteObjects_NoteObject.hxx".}
proc hasPoint*(this: XCAFNoteObjectsNoteObject): bool {.noSideEffect, cdecl,
    importcpp: "HasPoint", header: "XCAFNoteObjects_NoteObject.hxx".}
proc getPoint*(this: XCAFNoteObjectsNoteObject): gp_Pnt {.noSideEffect, cdecl,
    importcpp: "GetPoint", header: "XCAFNoteObjects_NoteObject.hxx".}
proc setPoint*(this: var XCAFNoteObjectsNoteObject; thePnt: gp_Pnt) {.cdecl,
    importcpp: "SetPoint", header: "XCAFNoteObjects_NoteObject.hxx".}
proc hasPointText*(this: XCAFNoteObjectsNoteObject): bool {.noSideEffect, cdecl,
    importcpp: "HasPointText", header: "XCAFNoteObjects_NoteObject.hxx".}
proc getPointText*(this: XCAFNoteObjectsNoteObject): gp_Pnt {.noSideEffect, cdecl,
    importcpp: "GetPointText", header: "XCAFNoteObjects_NoteObject.hxx".}
proc setPointText*(this: var XCAFNoteObjectsNoteObject; thePnt: gp_Pnt) {.cdecl,
    importcpp: "SetPointText", header: "XCAFNoteObjects_NoteObject.hxx".}
proc getPresentation*(this: XCAFNoteObjectsNoteObject): TopoDS_Shape {.noSideEffect,
    cdecl, importcpp: "GetPresentation", header: "XCAFNoteObjects_NoteObject.hxx".}
proc setPresentation*(this: var XCAFNoteObjectsNoteObject;
                     thePresentation: TopoDS_Shape) {.cdecl,
    importcpp: "SetPresentation", header: "XCAFNoteObjects_NoteObject.hxx".}
proc reset*(this: var XCAFNoteObjectsNoteObject) {.cdecl, importcpp: "Reset",
    header: "XCAFNoteObjects_NoteObject.hxx".}


