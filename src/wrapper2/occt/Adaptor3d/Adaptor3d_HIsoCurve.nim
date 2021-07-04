##  Created on: 1992-10-08
##  Created by: Isabelle GRIGNON
##  Copyright (c) 1992-1999 Matra Datavision
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

## !!!Ignored construct:  # _Adaptor3d_HIsoCurve_HeaderFile [NewLine] # _Adaptor3d_HIsoCurve_HeaderFile [NewLine] # ../Standard/Standard.hxx [NewLine] # ../Standard/Standard_Type.hxx [NewLine] # Adaptor3d_IsoCurve.hxx [NewLine] # Adaptor3d_HCurve.hxx [NewLine] class Standard_OutOfRange ;
## Error: did not expect <!!!

discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Standard_DomainError"
discard "forward decl of Adaptor3d_IsoCurve"
discard "forward decl of Adaptor3d_Curve"
discard "forward decl of Adaptor3d_HIsoCurve"
discard "forward decl of Adaptor3d_HIsoCurve"
type
  Handle_Adaptor3d_HIsoCurveAdaptor3d_HIsoCurve* = handle[Adaptor3d_HIsoCurve]
  Adaptor3d_HIsoCurve* {.importcpp: "Adaptor3d_HIsoCurve",
                        header: "Adaptor3d_HIsoCurve.hxx", bycopy.} = object of Adaptor3d_HCurve ##
                                                                                          ## !
                                                                                          ## Creates
                                                                                          ## an
                                                                                          ## empty
                                                                                          ## GenHCurve.


proc constructAdaptor3d_HIsoCurve*(): Adaptor3d_HIsoCurve {.constructor,
    importcpp: "Adaptor3d_HIsoCurve(@)", header: "Adaptor3d_HIsoCurve.hxx".}
proc constructAdaptor3d_HIsoCurve*(C: Adaptor3d_IsoCurve): Adaptor3d_HIsoCurve {.
    constructor, importcpp: "Adaptor3d_HIsoCurve(@)",
    header: "Adaptor3d_HIsoCurve.hxx".}
proc Set*(this: var Adaptor3d_HIsoCurve; C: Adaptor3d_IsoCurve) {.importcpp: "Set",
    header: "Adaptor3d_HIsoCurve.hxx".}
proc Curve*(this: Adaptor3d_HIsoCurve): Adaptor3d_Curve {.noSideEffect,
    importcpp: "Curve", header: "Adaptor3d_HIsoCurve.hxx".}
proc GetCurve*(this: var Adaptor3d_HIsoCurve): var Adaptor3d_Curve {.
    importcpp: "GetCurve", header: "Adaptor3d_HIsoCurve.hxx".}
proc ChangeCurve*(this: var Adaptor3d_HIsoCurve): var Adaptor3d_IsoCurve {.
    importcpp: "ChangeCurve", header: "Adaptor3d_HIsoCurve.hxx".}
type
  Adaptor3d_HIsoCurvebase_type* = Adaptor3d_HCurve

proc get_type_name*(): cstring {.importcpp: "Adaptor3d_HIsoCurve::get_type_name(@)",
                              header: "Adaptor3d_HIsoCurve.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Adaptor3d_HIsoCurve::get_type_descriptor(@)",
    header: "Adaptor3d_HIsoCurve.hxx".}
proc DynamicType*(this: Adaptor3d_HIsoCurve): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Adaptor3d_HIsoCurve.hxx".}
## !!!Ignored construct:  # TheCurve Adaptor3d_IsoCurve [NewLine] # TheCurve_hxx < Adaptor3d_IsoCurve . hxx > [NewLine] # Adaptor3d_GenHCurve Adaptor3d_HIsoCurve [NewLine] # Adaptor3d_GenHCurve_hxx < Adaptor3d_HIsoCurve . hxx > [NewLine] # Handle_Adaptor3d_GenHCurve opencascade :: handle < Adaptor3d_HIsoCurve > [end of template] [NewLine] # < Adaptor3d_GenHCurve . lxx > [NewLine] # TheCurve [NewLine] # TheCurve_hxx [NewLine] # Adaptor3d_GenHCurve [NewLine] # Adaptor3d_GenHCurve_hxx [NewLine] # Handle_Adaptor3d_GenHCurve [NewLine] #  _Adaptor3d_HIsoCurve_HeaderFile [NewLine]
## Error: did not expect <!!!
