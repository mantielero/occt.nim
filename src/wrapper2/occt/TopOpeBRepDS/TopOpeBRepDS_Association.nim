##  Created on: 1998-08-18
##  Created by: Yves FRICAUD
##  Copyright (c) 1998-1999 Matra Datavision
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
  TopOpeBRepDS_DataMapOfInterferenceListOfInterference,
  ../Standard/Standard_Transient, TopOpeBRepDS_ListOfInterference,
  ../Standard/Standard_Boolean

discard "forward decl of TopOpeBRepDS_Interference"
discard "forward decl of TopOpeBRepDS_Association"
discard "forward decl of TopOpeBRepDS_Association"
type
  Handle_TopOpeBRepDS_Association* = handle[TopOpeBRepDS_Association]
  TopOpeBRepDS_Association* {.importcpp: "TopOpeBRepDS_Association",
                             header: "TopOpeBRepDS_Association.hxx", bycopy.} = object of Standard_Transient


proc constructTopOpeBRepDS_Association*(): TopOpeBRepDS_Association {.constructor,
    importcpp: "TopOpeBRepDS_Association(@)",
    header: "TopOpeBRepDS_Association.hxx".}
proc Associate*(this: var TopOpeBRepDS_Association;
               I: handle[TopOpeBRepDS_Interference];
               K: handle[TopOpeBRepDS_Interference]) {.importcpp: "Associate",
    header: "TopOpeBRepDS_Association.hxx".}
proc Associate*(this: var TopOpeBRepDS_Association;
               I: handle[TopOpeBRepDS_Interference];
               LI: TopOpeBRepDS_ListOfInterference) {.importcpp: "Associate",
    header: "TopOpeBRepDS_Association.hxx".}
proc HasAssociation*(this: TopOpeBRepDS_Association;
                    I: handle[TopOpeBRepDS_Interference]): Standard_Boolean {.
    noSideEffect, importcpp: "HasAssociation",
    header: "TopOpeBRepDS_Association.hxx".}
proc Associated*(this: var TopOpeBRepDS_Association;
                I: handle[TopOpeBRepDS_Interference]): var TopOpeBRepDS_ListOfInterference {.
    importcpp: "Associated", header: "TopOpeBRepDS_Association.hxx".}
proc AreAssociated*(this: TopOpeBRepDS_Association;
                   I: handle[TopOpeBRepDS_Interference];
                   K: handle[TopOpeBRepDS_Interference]): Standard_Boolean {.
    noSideEffect, importcpp: "AreAssociated",
    header: "TopOpeBRepDS_Association.hxx".}
type
  TopOpeBRepDS_Associationbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "TopOpeBRepDS_Association::get_type_name(@)",
                              header: "TopOpeBRepDS_Association.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "TopOpeBRepDS_Association::get_type_descriptor(@)",
    header: "TopOpeBRepDS_Association.hxx".}
proc DynamicType*(this: TopOpeBRepDS_Association): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "TopOpeBRepDS_Association.hxx".}