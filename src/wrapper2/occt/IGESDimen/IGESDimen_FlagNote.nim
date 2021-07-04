##  Created on: 1993-01-13
##  Created by: CKY / Contract Toubro-Larsen ( Deepak PRABHU )
##  Copyright (c) 1993-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_Type, ../gp/gp_XYZ,
  ../Standard/Standard_Real, IGESDimen_HArray1OfLeaderArrow,
  ../IGESData/IGESData_IGESEntity, ../Standard/Standard_Integer

discard "forward decl of IGESDimen_GeneralNote"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of gp_XYZ"
discard "forward decl of gp_Pnt"
discard "forward decl of IGESDimen_LeaderArrow"
discard "forward decl of IGESDimen_FlagNote"
discard "forward decl of IGESDimen_FlagNote"
type
  Handle_IGESDimen_FlagNote* = handle[IGESDimen_FlagNote]

## ! defines FlagNote, Type <208> Form <0>
## ! in package IGESDimen
## ! Is label information formatted in different ways

type
  IGESDimen_FlagNote* {.importcpp: "IGESDimen_FlagNote",
                       header: "IGESDimen_FlagNote.hxx", bycopy.} = object of IGESData_IGESEntity


proc constructIGESDimen_FlagNote*(): IGESDimen_FlagNote {.constructor,
    importcpp: "IGESDimen_FlagNote(@)", header: "IGESDimen_FlagNote.hxx".}
proc Init*(this: var IGESDimen_FlagNote; leftCorner: gp_XYZ; anAngle: Standard_Real;
          aNote: handle[IGESDimen_GeneralNote];
          someLeaders: handle[IGESDimen_HArray1OfLeaderArrow]) {.
    importcpp: "Init", header: "IGESDimen_FlagNote.hxx".}
proc LowerLeftCorner*(this: IGESDimen_FlagNote): gp_Pnt {.noSideEffect,
    importcpp: "LowerLeftCorner", header: "IGESDimen_FlagNote.hxx".}
proc TransformedLowerLeftCorner*(this: IGESDimen_FlagNote): gp_Pnt {.noSideEffect,
    importcpp: "TransformedLowerLeftCorner", header: "IGESDimen_FlagNote.hxx".}
proc Angle*(this: IGESDimen_FlagNote): Standard_Real {.noSideEffect,
    importcpp: "Angle", header: "IGESDimen_FlagNote.hxx".}
proc Note*(this: IGESDimen_FlagNote): handle[IGESDimen_GeneralNote] {.noSideEffect,
    importcpp: "Note", header: "IGESDimen_FlagNote.hxx".}
proc NbLeaders*(this: IGESDimen_FlagNote): Standard_Integer {.noSideEffect,
    importcpp: "NbLeaders", header: "IGESDimen_FlagNote.hxx".}
proc Leader*(this: IGESDimen_FlagNote; Index: Standard_Integer): handle[
    IGESDimen_LeaderArrow] {.noSideEffect, importcpp: "Leader",
                            header: "IGESDimen_FlagNote.hxx".}
proc Height*(this: IGESDimen_FlagNote): Standard_Real {.noSideEffect,
    importcpp: "Height", header: "IGESDimen_FlagNote.hxx".}
proc CharacterHeight*(this: IGESDimen_FlagNote): Standard_Real {.noSideEffect,
    importcpp: "CharacterHeight", header: "IGESDimen_FlagNote.hxx".}
proc Length*(this: IGESDimen_FlagNote): Standard_Real {.noSideEffect,
    importcpp: "Length", header: "IGESDimen_FlagNote.hxx".}
proc TextWidth*(this: IGESDimen_FlagNote): Standard_Real {.noSideEffect,
    importcpp: "TextWidth", header: "IGESDimen_FlagNote.hxx".}
proc TipLength*(this: IGESDimen_FlagNote): Standard_Real {.noSideEffect,
    importcpp: "TipLength", header: "IGESDimen_FlagNote.hxx".}
type
  IGESDimen_FlagNotebase_type* = IGESData_IGESEntity

proc get_type_name*(): cstring {.importcpp: "IGESDimen_FlagNote::get_type_name(@)",
                              header: "IGESDimen_FlagNote.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESDimen_FlagNote::get_type_descriptor(@)",
    header: "IGESDimen_FlagNote.hxx".}
proc DynamicType*(this: IGESDimen_FlagNote): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "IGESDimen_FlagNote.hxx".}