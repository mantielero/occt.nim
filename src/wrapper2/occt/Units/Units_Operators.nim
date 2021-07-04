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

## !!!Ignored construct:  # Units_Operators_HeaderFile [NewLine] # Units_Operators_HeaderFile [NewLine] # Units_Token.hxx [NewLine] # Units_Unit.hxx [NewLine] # Units_Quantity.hxx [NewLine] Standard_Boolean operator == ( const opencascade :: handle < Units_Quantity > [end of template] & , const Standard_CString ) ;
## Error: token expected: ; but got: [identifier]!!!

proc `==`*(a1: handle[Units_Token]; a2: Standard_CString): Standard_Boolean {.
    importcpp: "(# == #)", header: "Units_Operators.hxx".}
proc `==`*(a1: handle[Units_Unit]; a2: Standard_CString): Standard_Boolean {.
    importcpp: "(# == #)", header: "Units_Operators.hxx".}
proc `*`*(a1: handle[Units_Dimensions]; a2: handle[Units_Dimensions]): handle[
    Units_Dimensions] {.importcpp: "(# * #)", header: "Units_Operators.hxx".}
proc `/`*(a1: handle[Units_Dimensions]; a2: handle[Units_Dimensions]): handle[
    Units_Dimensions] {.importcpp: "(# / #)", header: "Units_Operators.hxx".}
proc pow*(a1: handle[Units_Dimensions]; a2: Standard_Real): handle[Units_Dimensions] {.
    importcpp: "pow(@)", header: "Units_Operators.hxx".}
proc pow*(a1: handle[Units_Token]; a2: handle[Units_Token]): handle[Units_Token] {.
    importcpp: "pow(@)", header: "Units_Operators.hxx".}
proc pow*(a1: handle[Units_Token]; a2: Standard_Real): handle[Units_Token] {.
    importcpp: "pow(@)", header: "Units_Operators.hxx".}
proc `+`*(a1: handle[Units_Token]; a2: Standard_Integer): handle[Units_Token] {.
    importcpp: "(# + #)", header: "Units_Operators.hxx".}
proc `+`*(a1: handle[Units_Token]; a2: handle[Units_Token]): handle[Units_Token] {.
    importcpp: "(# + #)", header: "Units_Operators.hxx".}
proc `-`*(a1: handle[Units_Token]; a2: handle[Units_Token]): handle[Units_Token] {.
    importcpp: "(# - #)", header: "Units_Operators.hxx".}
proc `*`*(a1: handle[Units_Token]; a2: handle[Units_Token]): handle[Units_Token] {.
    importcpp: "(# * #)", header: "Units_Operators.hxx".}
proc `/`*(a1: handle[Units_Token]; a2: handle[Units_Token]): handle[Units_Token] {.
    importcpp: "(# / #)", header: "Units_Operators.hxx".}
## !!!Ignored construct:  Standard_Boolean operator != ( const opencascade :: handle < Units_Token > [end of template] & , const Standard_CString ) ;
## Error: token expected: ; but got: [identifier]!!!

proc `<=`*(a1: handle[Units_Token]; a2: Standard_CString): Standard_Boolean {.
    importcpp: "(# <= #)", header: "Units_Operators.hxx".}
## !!!Ignored construct:  Standard_Boolean operator > ( const opencascade :: handle < Units_Token > [end of template] & , const Standard_CString ) ;
## Error: token expected: ; but got: [identifier]!!!

## !!!Ignored construct:  Standard_Boolean operator > ( const opencascade :: handle < Units_Token > [end of template] & , const opencascade :: handle < Units_Token > [end of template] & ) ;
## Error: token expected: ; but got: [identifier]!!!

## !!!Ignored construct:  Standard_Boolean operator >= ( const opencascade :: handle < Units_Token > [end of template] & , const opencascade :: handle < Units_Token > [end of template] & ) ;
## Error: token expected: ; but got: #!!!
