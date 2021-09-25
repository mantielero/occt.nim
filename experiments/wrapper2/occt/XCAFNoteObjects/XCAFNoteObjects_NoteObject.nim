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

type
  XCAFNoteObjectsNoteObject* {.importcpp: "XCAFNoteObjects_NoteObject",
                              header: "XCAFNoteObjects_NoteObject.hxx", bycopy.} = object of StandardTransient ##
                                                                                                        ## !
                                                                                                        ## Empty
                                                                                                        ## object

  XCAFNoteObjectsNoteObjectbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "XCAFNoteObjects_NoteObject::get_type_name(@)",
                            header: "XCAFNoteObjects_NoteObject.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "XCAFNoteObjects_NoteObject::get_type_descriptor(@)",
    header: "XCAFNoteObjects_NoteObject.hxx".}
proc dynamicType*(this: XCAFNoteObjectsNoteObject): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "XCAFNoteObjects_NoteObject.hxx".}
proc constructXCAFNoteObjectsNoteObject*(): XCAFNoteObjectsNoteObject {.
    constructor, importcpp: "XCAFNoteObjects_NoteObject(@)",
    header: "XCAFNoteObjects_NoteObject.hxx".}
proc constructXCAFNoteObjectsNoteObject*(theObj: Handle[XCAFNoteObjectsNoteObject]): XCAFNoteObjectsNoteObject {.
    constructor, importcpp: "XCAFNoteObjects_NoteObject(@)",
    header: "XCAFNoteObjects_NoteObject.hxx".}
proc hasPlane*(this: XCAFNoteObjectsNoteObject): bool {.noSideEffect,
    importcpp: "HasPlane", header: "XCAFNoteObjects_NoteObject.hxx".}
proc getPlane*(this: XCAFNoteObjectsNoteObject): Ax2 {.noSideEffect,
    importcpp: "GetPlane", header: "XCAFNoteObjects_NoteObject.hxx".}
proc setPlane*(this: var XCAFNoteObjectsNoteObject; thePlane: Ax2) {.
    importcpp: "SetPlane", header: "XCAFNoteObjects_NoteObject.hxx".}
proc hasPoint*(this: XCAFNoteObjectsNoteObject): bool {.noSideEffect,
    importcpp: "HasPoint", header: "XCAFNoteObjects_NoteObject.hxx".}
proc getPoint*(this: XCAFNoteObjectsNoteObject): Pnt {.noSideEffect,
    importcpp: "GetPoint", header: "XCAFNoteObjects_NoteObject.hxx".}
proc setPoint*(this: var XCAFNoteObjectsNoteObject; thePnt: Pnt) {.
    importcpp: "SetPoint", header: "XCAFNoteObjects_NoteObject.hxx".}
proc hasPointText*(this: XCAFNoteObjectsNoteObject): bool {.noSideEffect,
    importcpp: "HasPointText", header: "XCAFNoteObjects_NoteObject.hxx".}
proc getPointText*(this: XCAFNoteObjectsNoteObject): Pnt {.noSideEffect,
    importcpp: "GetPointText", header: "XCAFNoteObjects_NoteObject.hxx".}
proc setPointText*(this: var XCAFNoteObjectsNoteObject; thePnt: Pnt) {.
    importcpp: "SetPointText", header: "XCAFNoteObjects_NoteObject.hxx".}
proc getPresentation*(this: XCAFNoteObjectsNoteObject): TopoDS_Shape {.noSideEffect,
    importcpp: "GetPresentation", header: "XCAFNoteObjects_NoteObject.hxx".}
proc setPresentation*(this: var XCAFNoteObjectsNoteObject;
                     thePresentation: TopoDS_Shape) {.
    importcpp: "SetPresentation", header: "XCAFNoteObjects_NoteObject.hxx".}
proc reset*(this: var XCAFNoteObjectsNoteObject) {.importcpp: "Reset",
    header: "XCAFNoteObjects_NoteObject.hxx".}
discard "forward decl of XCAFNoteObjects_NoteObject"
type
  HandleXCAFNoteObjectsNoteObject* = Handle[XCAFNoteObjectsNoteObject]

