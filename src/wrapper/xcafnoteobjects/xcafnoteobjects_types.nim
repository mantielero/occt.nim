import ../standard/standard_types

type
  XCAFNoteObjectsNoteObject* {.importcpp: "XCAFNoteObjects_NoteObject",
                              header: "XCAFNoteObjects_NoteObject.hxx", bycopy.} = object of StandardTransient 

  HandleXCAFNoteObjectsNoteObject* = Handle[XCAFNoteObjectsNoteObject]


