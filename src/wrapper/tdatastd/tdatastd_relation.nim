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

discard "forward decl of TDataStd_Relation"
type
  HandleTDataStdRelation* = Handle[TDataStdRelation]

## ! Relation attribute.
## ! ==================
## !
## ! *  Data Structure of  the  Expression is stored in a
## ! string and references to variables used by the string
## !
## ! Warning:  To be consistent,  each  Variable  referenced by  the
## ! relation must have its equivalent in the string

type
  TDataStdRelation* {.importcpp: "TDataStd_Relation",
                     header: "TDataStd_Relation.hxx", bycopy.} = object of TDataStdExpression ##
                                                                                       ## !
                                                                                       ## class
                                                                                       ## methods
                                                                                       ##
                                                                                       ## !
                                                                                       ## =============


proc getID*(): StandardGUID {.cdecl, importcpp: "TDataStd_Relation::GetID(@)",
                           header: "TDataStd_Relation.hxx".}
proc set*(label: TDF_Label): Handle[TDataStdRelation] {.cdecl,
    importcpp: "TDataStd_Relation::Set(@)", header: "TDataStd_Relation.hxx".}
proc newTDataStdRelation*(): TDataStdRelation {.cdecl, constructor,
    importcpp: "TDataStd_Relation(@)", header: "TDataStd_Relation.hxx".}
proc setRelation*(this: var TDataStdRelation; e: TCollectionExtendedString) {.cdecl,
    importcpp: "SetRelation", header: "TDataStd_Relation.hxx".}
proc getRelation*(this: TDataStdRelation): TCollectionExtendedString {.noSideEffect,
    cdecl, importcpp: "GetRelation", header: "TDataStd_Relation.hxx".}
proc id*(this: TDataStdRelation): StandardGUID {.noSideEffect, cdecl, importcpp: "ID",
    header: "TDataStd_Relation.hxx".}
proc dump*(this: TDataStdRelation; anOS: var StandardOStream): var StandardOStream {.
    noSideEffect, cdecl, importcpp: "Dump", header: "TDataStd_Relation.hxx".}
proc dumpJson*(this: TDataStdRelation; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "TDataStd_Relation.hxx".}