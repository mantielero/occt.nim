import ../stepcafcontrol/stepcafcontrol_types
import tdatastd_types
import ../standard/standard_types
import ../tdf/tdf_types


##  Created on: 1997-07-29
##  Created by: Denis PASCAL
##  Copyright (c) 1997-1999 Matra Datavision
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





proc find*(current: TDF_Label; n: var Handle[TDataStdNoteBook]): bool {.cdecl,
    importcpp: "TDataStd_NoteBook::Find(@)", header: "TDataStd_NoteBook.hxx".}
proc new*(label: TDF_Label): Handle[TDataStdNoteBook] {.cdecl,
    importcpp: "TDataStd_NoteBook::New(@)", header: "TDataStd_NoteBook.hxx".}
proc getID*(): StandardGUID {.cdecl, importcpp: "TDataStd_NoteBook::GetID(@)",
                           header: "TDataStd_NoteBook.hxx".}
proc newTDataStdNoteBook*(): TDataStdNoteBook {.cdecl, constructor,
    importcpp: "TDataStd_NoteBook(@)", header: "TDataStd_NoteBook.hxx".}
proc append*(this: var TDataStdNoteBook; value: cfloat; isExported: bool = false): Handle[
    TDataStdReal] {.cdecl, importcpp: "Append", header: "TDataStd_NoteBook.hxx".}
proc append*(this: var TDataStdNoteBook; value: cint; isExported: bool = false): Handle[
    TDataStdInteger] {.cdecl, importcpp: "Append", header: "TDataStd_NoteBook.hxx".}
proc id*(this: TDataStdNoteBook): StandardGUID {.noSideEffect, cdecl, importcpp: "ID",
    header: "TDataStd_NoteBook.hxx".}
proc dump*(this: TDataStdNoteBook; anOS: var StandardOStream): var StandardOStream {.
    noSideEffect, cdecl, importcpp: "Dump", header: "TDataStd_NoteBook.hxx".}

