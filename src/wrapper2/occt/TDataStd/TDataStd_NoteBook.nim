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

import
  ../Standard/Standard, ../Standard/Standard_Type, TDataStd_GenericEmpty,
  ../Standard/Standard_Boolean, ../Standard/Standard_Real,
  ../Standard/Standard_Integer, ../Standard/Standard_OStream

discard "forward decl of TDF_Label"
discard "forward decl of Standard_GUID"
discard "forward decl of TDataStd_Real"
discard "forward decl of TDataStd_Integer"
discard "forward decl of TDF_Attribute"
discard "forward decl of TDF_RelocationTable"
discard "forward decl of TDataStd_NoteBook"
discard "forward decl of TDataStd_NoteBook"
type
  Handle_TDataStd_NoteBook* = handle[TDataStd_NoteBook]

## ! NoteBook Object attribute

type
  TDataStd_NoteBook* {.importcpp: "TDataStd_NoteBook",
                      header: "TDataStd_NoteBook.hxx", bycopy.} = object of TDataStd_GenericEmpty ##
                                                                                           ## !
                                                                                           ## class
                                                                                           ## methods
                                                                                           ##
                                                                                           ## !
                                                                                           ## =============
                                                                                           ##
                                                                                           ## !
                                                                                           ## try
                                                                                           ## to
                                                                                           ## retrieve
                                                                                           ## a
                                                                                           ## NoteBook
                                                                                           ## attribute
                                                                                           ## at
                                                                                           ## <current>
                                                                                           ## label
                                                                                           ##
                                                                                           ## !
                                                                                           ## or
                                                                                           ## in
                                                                                           ## fathers
                                                                                           ## label
                                                                                           ## of
                                                                                           ## <current>.
                                                                                           ## Returns
                                                                                           ## True
                                                                                           ## if
                                                                                           ##
                                                                                           ## !
                                                                                           ## found
                                                                                           ## and
                                                                                           ## set
                                                                                           ## <N>.


proc Find*(current: TDF_Label; N: var handle[TDataStd_NoteBook]): Standard_Boolean {.
    importcpp: "TDataStd_NoteBook::Find(@)", header: "TDataStd_NoteBook.hxx".}
proc New*(label: TDF_Label): handle[TDataStd_NoteBook] {.
    importcpp: "TDataStd_NoteBook::New(@)", header: "TDataStd_NoteBook.hxx".}
proc GetID*(): Standard_GUID {.importcpp: "TDataStd_NoteBook::GetID(@)",
                            header: "TDataStd_NoteBook.hxx".}
proc constructTDataStd_NoteBook*(): TDataStd_NoteBook {.constructor,
    importcpp: "TDataStd_NoteBook(@)", header: "TDataStd_NoteBook.hxx".}
proc Append*(this: var TDataStd_NoteBook; value: Standard_Real;
            isExported: Standard_Boolean = Standard_False): handle[TDataStd_Real] {.
    importcpp: "Append", header: "TDataStd_NoteBook.hxx".}
proc Append*(this: var TDataStd_NoteBook; value: Standard_Integer;
            isExported: Standard_Boolean = Standard_False): handle[TDataStd_Integer] {.
    importcpp: "Append", header: "TDataStd_NoteBook.hxx".}
proc ID*(this: TDataStd_NoteBook): Standard_GUID {.noSideEffect, importcpp: "ID",
    header: "TDataStd_NoteBook.hxx".}
proc Dump*(this: TDataStd_NoteBook; anOS: var Standard_OStream): var Standard_OStream {.
    noSideEffect, importcpp: "Dump", header: "TDataStd_NoteBook.hxx".}
## !!!Ignored construct:  DEFINE_DERIVED_ATTRIBUTE ( TDataStd_NoteBook , TDataStd_GenericEmpty ) protected : private : }
## Error: token expected: ) but got: ,!!!
