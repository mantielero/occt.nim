##  Created on: 1997-12-10
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
  TDataStd_Expression

discard "forward decl of TDataStd_Relation"
discard "forward decl of TDataStd_Relation"
type
  Handle_TDataStd_Relation* = handle[TDataStd_Relation]

## ! Relation attribute.
## ! ==================
## !
## ! *  Data Structure of  the  Expression is stored in a
## ! string and references to variables used by the string
## !
## ! Warning:  To be consistent,  each  Variable  referenced by  the
## ! relation must have its equivalent in the string

type
  TDataStd_Relation* {.importcpp: "TDataStd_Relation",
                      header: "TDataStd_Relation.hxx", bycopy.} = object of TDataStd_Expression ##
                                                                                         ## !
                                                                                         ## class
                                                                                         ## methods
                                                                                         ##
                                                                                         ## !
                                                                                         ## =============


proc GetID*(): Standard_GUID {.importcpp: "TDataStd_Relation::GetID(@)",
                            header: "TDataStd_Relation.hxx".}
proc Set*(label: TDF_Label): handle[TDataStd_Relation] {.
    importcpp: "TDataStd_Relation::Set(@)", header: "TDataStd_Relation.hxx".}
proc constructTDataStd_Relation*(): TDataStd_Relation {.constructor,
    importcpp: "TDataStd_Relation(@)", header: "TDataStd_Relation.hxx".}
proc SetRelation*(this: var TDataStd_Relation; E: TCollection_ExtendedString) {.
    importcpp: "SetRelation", header: "TDataStd_Relation.hxx".}
proc GetRelation*(this: TDataStd_Relation): TCollection_ExtendedString {.
    noSideEffect, importcpp: "GetRelation", header: "TDataStd_Relation.hxx".}
proc ID*(this: TDataStd_Relation): Standard_GUID {.noSideEffect, importcpp: "ID",
    header: "TDataStd_Relation.hxx".}
proc Dump*(this: TDataStd_Relation; anOS: var Standard_OStream): var Standard_OStream {.
    noSideEffect, importcpp: "Dump", header: "TDataStd_Relation.hxx".}
proc DumpJson*(this: TDataStd_Relation; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "TDataStd_Relation.hxx".}
## !!!Ignored construct:  DEFINE_DERIVED_ATTRIBUTE ( TDataStd_Relation , TDataStd_Expression ) }
## Error: token expected: ) but got: ,!!!
