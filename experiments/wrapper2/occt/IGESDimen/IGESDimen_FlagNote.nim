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

discard "forward decl of IGESDimen_GeneralNote"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of gp_XYZ"
discard "forward decl of gp_Pnt"
discard "forward decl of IGESDimen_LeaderArrow"
discard "forward decl of IGESDimen_FlagNote"
discard "forward decl of IGESDimen_FlagNote"
type
  HandleIGESDimenFlagNote* = Handle[IGESDimenFlagNote]

## ! defines FlagNote, Type <208> Form <0>
## ! in package IGESDimen
## ! Is label information formatted in different ways

type
  IGESDimenFlagNote* {.importcpp: "IGESDimen_FlagNote",
                      header: "IGESDimen_FlagNote.hxx", bycopy.} = object of IGESDataIGESEntity


proc constructIGESDimenFlagNote*(): IGESDimenFlagNote {.constructor,
    importcpp: "IGESDimen_FlagNote(@)", header: "IGESDimen_FlagNote.hxx".}
proc init*(this: var IGESDimenFlagNote; leftCorner: Xyz; anAngle: float;
          aNote: Handle[IGESDimenGeneralNote];
          someLeaders: Handle[IGESDimenHArray1OfLeaderArrow]) {.importcpp: "Init",
    header: "IGESDimen_FlagNote.hxx".}
proc lowerLeftCorner*(this: IGESDimenFlagNote): Pnt {.noSideEffect,
    importcpp: "LowerLeftCorner", header: "IGESDimen_FlagNote.hxx".}
proc transformedLowerLeftCorner*(this: IGESDimenFlagNote): Pnt {.noSideEffect,
    importcpp: "TransformedLowerLeftCorner", header: "IGESDimen_FlagNote.hxx".}
proc angle*(this: IGESDimenFlagNote): float {.noSideEffect, importcpp: "Angle",
    header: "IGESDimen_FlagNote.hxx".}
proc note*(this: IGESDimenFlagNote): Handle[IGESDimenGeneralNote] {.noSideEffect,
    importcpp: "Note", header: "IGESDimen_FlagNote.hxx".}
proc nbLeaders*(this: IGESDimenFlagNote): int {.noSideEffect, importcpp: "NbLeaders",
    header: "IGESDimen_FlagNote.hxx".}
proc leader*(this: IGESDimenFlagNote; index: int): Handle[IGESDimenLeaderArrow] {.
    noSideEffect, importcpp: "Leader", header: "IGESDimen_FlagNote.hxx".}
proc height*(this: IGESDimenFlagNote): float {.noSideEffect, importcpp: "Height",
    header: "IGESDimen_FlagNote.hxx".}
proc characterHeight*(this: IGESDimenFlagNote): float {.noSideEffect,
    importcpp: "CharacterHeight", header: "IGESDimen_FlagNote.hxx".}
proc length*(this: IGESDimenFlagNote): float {.noSideEffect, importcpp: "Length",
    header: "IGESDimen_FlagNote.hxx".}
proc textWidth*(this: IGESDimenFlagNote): float {.noSideEffect,
    importcpp: "TextWidth", header: "IGESDimen_FlagNote.hxx".}
proc tipLength*(this: IGESDimenFlagNote): float {.noSideEffect,
    importcpp: "TipLength", header: "IGESDimen_FlagNote.hxx".}
type
  IGESDimenFlagNotebaseType* = IGESDataIGESEntity

proc getTypeName*(): cstring {.importcpp: "IGESDimen_FlagNote::get_type_name(@)",
                            header: "IGESDimen_FlagNote.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESDimen_FlagNote::get_type_descriptor(@)",
    header: "IGESDimen_FlagNote.hxx".}
proc dynamicType*(this: IGESDimenFlagNote): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "IGESDimen_FlagNote.hxx".}
