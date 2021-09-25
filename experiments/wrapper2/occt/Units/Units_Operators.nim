##  Created on: 2007-05-14
##  Created by: data exchange team
##  Copyright (c) 2007-2014 OPEN CASCADE SAS
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

## !!!Ignored construct:  # Units_Operators_HeaderFile [NewLine] # Units_Operators_HeaderFile [NewLine] # < Units_Token . hxx > [NewLine] # < Units_Unit . hxx > [NewLine] # < Units_Quantity . hxx > [NewLine] Standard_Boolean operator == ( const opencascade :: handle < Units_Quantity > [end of template] & , const Standard_CString ) ;
## Error: token expected: ; but got: [identifier]!!!

proc `==`*(a1: Handle[UnitsToken]; a2: StandardCString): bool {.importcpp: "(# == #)",
    header: "Units_Operators.hxx".}
proc `==`*(a1: Handle[UnitsUnit]; a2: StandardCString): bool {.importcpp: "(# == #)",
    header: "Units_Operators.hxx".}
proc `*`*(a1: Handle[UnitsDimensions]; a2: Handle[UnitsDimensions]): Handle[
    UnitsDimensions] {.importcpp: "(# * #)", header: "Units_Operators.hxx".}
proc `/`*(a1: Handle[UnitsDimensions]; a2: Handle[UnitsDimensions]): Handle[
    UnitsDimensions] {.importcpp: "(# / #)", header: "Units_Operators.hxx".}
proc pow*(a1: Handle[UnitsDimensions]; a2: float): Handle[UnitsDimensions] {.
    importcpp: "pow(@)", header: "Units_Operators.hxx".}
proc pow*(a1: Handle[UnitsToken]; a2: Handle[UnitsToken]): Handle[UnitsToken] {.
    importcpp: "pow(@)", header: "Units_Operators.hxx".}
proc pow*(a1: Handle[UnitsToken]; a2: float): Handle[UnitsToken] {.
    importcpp: "pow(@)", header: "Units_Operators.hxx".}
proc `+`*(a1: Handle[UnitsToken]; a2: int): Handle[UnitsToken] {.importcpp: "(# + #)",
    header: "Units_Operators.hxx".}
proc `+`*(a1: Handle[UnitsToken]; a2: Handle[UnitsToken]): Handle[UnitsToken] {.
    importcpp: "(# + #)", header: "Units_Operators.hxx".}
proc `-`*(a1: Handle[UnitsToken]; a2: Handle[UnitsToken]): Handle[UnitsToken] {.
    importcpp: "(# - #)", header: "Units_Operators.hxx".}
proc `*`*(a1: Handle[UnitsToken]; a2: Handle[UnitsToken]): Handle[UnitsToken] {.
    importcpp: "(# * #)", header: "Units_Operators.hxx".}
proc `/`*(a1: Handle[UnitsToken]; a2: Handle[UnitsToken]): Handle[UnitsToken] {.
    importcpp: "(# / #)", header: "Units_Operators.hxx".}
## !!!Ignored construct:  Standard_Boolean operator != ( const opencascade :: handle < Units_Token > [end of template] & , const Standard_CString ) ;
## Error: token expected: ; but got: [identifier]!!!

proc `<=`*(a1: Handle[UnitsToken]; a2: StandardCString): bool {.importcpp: "(# <= #)",
    header: "Units_Operators.hxx".}
## !!!Ignored construct:  Standard_Boolean operator > ( const opencascade :: handle < Units_Token > [end of template] & , const Standard_CString ) ;
## Error: token expected: ; but got: [identifier]!!!

## !!!Ignored construct:  Standard_Boolean operator > ( const opencascade :: handle < Units_Token > [end of template] & , const opencascade :: handle < Units_Token > [end of template] & ) ;
## Error: token expected: ; but got: [identifier]!!!

## !!!Ignored construct:  Standard_Boolean operator >= ( const opencascade :: handle < Units_Token > [end of template] & , const opencascade :: handle < Units_Token > [end of template] & ) ;
## Error: token expected: ; but got: #!!!

