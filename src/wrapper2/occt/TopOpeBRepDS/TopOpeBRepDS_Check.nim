##  Created on: 1997-04-10
##  Created by: Prestataire Mary FABIEN
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
  ../Standard/Standard, ../Standard/Standard_Type,
  TopOpeBRepDS_DataMapOfCheckStatus, ../Standard/Standard_Transient,
  ../Standard/Standard_Boolean, TopOpeBRepDS_ListOfInterference,
  ../Standard/Standard_Integer, TopOpeBRepDS_Kind,
  ../TopTools/TopTools_ListOfShape, ../Standard/Standard_OStream,
  ../Standard/Standard_CString, TopOpeBRepDS_CheckStatus,
  ../TopAbs/TopAbs_ShapeEnum

discard "forward decl of TopOpeBRepDS_HDataStructure"
discard "forward decl of TopOpeBRepDS_Check"
discard "forward decl of TopOpeBRepDS_Check"
type
  Handle_TopOpeBRepDS_Check* = handle[TopOpeBRepDS_Check]

## ! a tool verifing integrity and structure of DS

type
  TopOpeBRepDS_Check* {.importcpp: "TopOpeBRepDS_Check",
                       header: "TopOpeBRepDS_Check.hxx", bycopy.} = object of Standard_Transient


proc constructTopOpeBRepDS_Check*(): TopOpeBRepDS_Check {.constructor,
    importcpp: "TopOpeBRepDS_Check(@)", header: "TopOpeBRepDS_Check.hxx".}
proc constructTopOpeBRepDS_Check*(HDS: handle[TopOpeBRepDS_HDataStructure]): TopOpeBRepDS_Check {.
    constructor, importcpp: "TopOpeBRepDS_Check(@)",
    header: "TopOpeBRepDS_Check.hxx".}
proc ChkIntg*(this: var TopOpeBRepDS_Check): Standard_Boolean {.importcpp: "ChkIntg",
    header: "TopOpeBRepDS_Check.hxx".}
proc ChkIntgInterf*(this: var TopOpeBRepDS_Check;
                   LI: TopOpeBRepDS_ListOfInterference): Standard_Boolean {.
    importcpp: "ChkIntgInterf", header: "TopOpeBRepDS_Check.hxx".}
proc CheckDS*(this: var TopOpeBRepDS_Check; i: Standard_Integer; K: TopOpeBRepDS_Kind): Standard_Boolean {.
    importcpp: "CheckDS", header: "TopOpeBRepDS_Check.hxx".}
proc ChkIntgSamDom*(this: var TopOpeBRepDS_Check): Standard_Boolean {.
    importcpp: "ChkIntgSamDom", header: "TopOpeBRepDS_Check.hxx".}
proc CheckShapes*(this: TopOpeBRepDS_Check; LS: TopTools_ListOfShape): Standard_Boolean {.
    noSideEffect, importcpp: "CheckShapes", header: "TopOpeBRepDS_Check.hxx".}
proc OneVertexOnPnt*(this: var TopOpeBRepDS_Check): Standard_Boolean {.
    importcpp: "OneVertexOnPnt", header: "TopOpeBRepDS_Check.hxx".}
proc HDS*(this: TopOpeBRepDS_Check): handle[TopOpeBRepDS_HDataStructure] {.
    noSideEffect, importcpp: "HDS", header: "TopOpeBRepDS_Check.hxx".}
proc ChangeHDS*(this: var TopOpeBRepDS_Check): var handle[TopOpeBRepDS_HDataStructure] {.
    importcpp: "ChangeHDS", header: "TopOpeBRepDS_Check.hxx".}
proc PrintIntg*(this: var TopOpeBRepDS_Check; S: var Standard_OStream): var Standard_OStream {.
    importcpp: "PrintIntg", header: "TopOpeBRepDS_Check.hxx".}
proc Print*(this: var TopOpeBRepDS_Check; stat: TopOpeBRepDS_CheckStatus;
           S: var Standard_OStream): var Standard_OStream {.importcpp: "Print",
    header: "TopOpeBRepDS_Check.hxx".}
proc PrintShape*(this: var TopOpeBRepDS_Check; SE: TopAbs_ShapeEnum;
                S: var Standard_OStream): var Standard_OStream {.
    importcpp: "PrintShape", header: "TopOpeBRepDS_Check.hxx".}
proc PrintShape*(this: var TopOpeBRepDS_Check; index: Standard_Integer;
                S: var Standard_OStream): var Standard_OStream {.
    importcpp: "PrintShape", header: "TopOpeBRepDS_Check.hxx".}
type
  TopOpeBRepDS_Checkbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "TopOpeBRepDS_Check::get_type_name(@)",
                              header: "TopOpeBRepDS_Check.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "TopOpeBRepDS_Check::get_type_descriptor(@)",
    header: "TopOpeBRepDS_Check.hxx".}
proc DynamicType*(this: TopOpeBRepDS_Check): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "TopOpeBRepDS_Check.hxx".}