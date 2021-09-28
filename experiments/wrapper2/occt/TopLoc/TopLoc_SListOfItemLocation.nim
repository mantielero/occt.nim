##  Created on: 1993-02-26
##  Created by: Remi LEQUETTE
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

discard "forward decl of TopLoc_SListNodeOfItemLocation"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of TopLoc_ItemLocation"
type
  TopLocSListOfItemLocation* {.importcpp: "TopLoc_SListOfItemLocation",
                              header: "TopLoc_SListOfItemLocation.hxx", bycopy.} = object ##
                                                                                     ## !
                                                                                     ## Creates
                                                                                     ## an
                                                                                     ## empty
                                                                                     ## List.


proc constructTopLocSListOfItemLocation*(): TopLocSListOfItemLocation {.
    constructor, importcpp: "TopLoc_SListOfItemLocation(@)",
    header: "TopLoc_SListOfItemLocation.hxx".}
proc constructTopLocSListOfItemLocation*(anItem: TopLocItemLocation;
                                        aTail: TopLocSListOfItemLocation): TopLocSListOfItemLocation {.
    constructor, importcpp: "TopLoc_SListOfItemLocation(@)",
    header: "TopLoc_SListOfItemLocation.hxx".}
proc constructTopLocSListOfItemLocation*(other: TopLocSListOfItemLocation): TopLocSListOfItemLocation {.
    constructor, importcpp: "TopLoc_SListOfItemLocation(@)",
    header: "TopLoc_SListOfItemLocation.hxx".}
proc assign*(this: var TopLocSListOfItemLocation; other: TopLocSListOfItemLocation): var TopLocSListOfItemLocation {.
    importcpp: "Assign", header: "TopLoc_SListOfItemLocation.hxx".}
## !!!Ignored construct:  # OCCT_NO_RVALUE_REFERENCE [NewLine] ! Move constructor TopLoc_SListOfItemLocation ( TopLoc_SListOfItemLocation && theOther ) : myNode ( std :: move ( theOther . myNode ) ) { } ! Move operator TopLoc_SListOfItemLocation & operator = ( TopLoc_SListOfItemLocation && theOther ) { myNode = std :: move ( theOther . myNode ) ; return * this ; } # [NewLine] ! Returne true if this list is empty Standard_Boolean IsEmpty ( ) const { return myNode . IsNull ( ) ; } ! Sets the list to be empty. void Clear ( ) { myNode . Nullify ( ) ; } ! Destructor ~ TopLoc_SListOfItemLocation ( ) { Clear ( ) ; } ! Returns the current value of the list. An error is
## ! raised  if the list is empty. const TopLoc_ItemLocation & Value ( ) const ;
## Error: identifier expected, but got: ! Move constructor!!!

proc tail*(this: TopLocSListOfItemLocation): TopLocSListOfItemLocation {.
    noSideEffect, importcpp: "Tail", header: "TopLoc_SListOfItemLocation.hxx".}
proc construct*(this: var TopLocSListOfItemLocation; anItem: TopLocItemLocation) {.
    importcpp: "Construct", header: "TopLoc_SListOfItemLocation.hxx".}
proc toTail*(this: var TopLocSListOfItemLocation) {.importcpp: "ToTail",
    header: "TopLoc_SListOfItemLocation.hxx".}
proc more*(this: TopLocSListOfItemLocation): bool {.noSideEffect, importcpp: "More",
    header: "TopLoc_SListOfItemLocation.hxx".}
proc next*(this: var TopLocSListOfItemLocation) {.importcpp: "Next",
    header: "TopLoc_SListOfItemLocation.hxx".}














































