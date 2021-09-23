##  Created on: 1993-02-19
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

## !!!Ignored construct:  # _BRepAdaptor_HCurve2d_HeaderFile [NewLine] # _BRepAdaptor_HCurve2d_HeaderFile [NewLine] # ../Standard/Standard.hxx [NewLine] # ../Standard/Standard_Type.hxx [NewLine] # BRepAdaptor_Curve2d.hxx [NewLine] # ../Adaptor2d/Adaptor2d_HCurve2d.hxx [NewLine] class Standard_OutOfRange ;
## Error: did not expect <!!!

discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Standard_DomainError"
discard "forward decl of BRepAdaptor_Curve2d"
discard "forward decl of Adaptor2d_Curve2d"
discard "forward decl of BRepAdaptor_HCurve2d"
discard "forward decl of BRepAdaptor_HCurve2d"
type
  Handle_BRepAdaptor_HCurve2dBRepAdaptor_HCurve2d* = handle[BRepAdaptor_HCurve2d]
  BRepAdaptor_HCurve2d* {.importcpp: "BRepAdaptor_HCurve2d",
                         header: "BRepAdaptor_HCurve2d.hxx", bycopy.} = object of Adaptor2d_HCurve2d ##
                                                                                              ## !
                                                                                              ## Creates
                                                                                              ## an
                                                                                              ## empty
                                                                                              ## GenHCurve2d.


proc constructBRepAdaptor_HCurve2d*(): BRepAdaptor_HCurve2d {.constructor,
    importcpp: "BRepAdaptor_HCurve2d(@)", header: "BRepAdaptor_HCurve2d.hxx".}
proc constructBRepAdaptor_HCurve2d*(C: BRepAdaptor_Curve2d): BRepAdaptor_HCurve2d {.
    constructor, importcpp: "BRepAdaptor_HCurve2d(@)",
    header: "BRepAdaptor_HCurve2d.hxx".}
proc Set*(this: var BRepAdaptor_HCurve2d; C: BRepAdaptor_Curve2d) {.importcpp: "Set",
    header: "BRepAdaptor_HCurve2d.hxx".}
proc Curve2d*(this: BRepAdaptor_HCurve2d): Adaptor2d_Curve2d {.noSideEffect,
    importcpp: "Curve2d", header: "BRepAdaptor_HCurve2d.hxx".}
proc ChangeCurve2d*(this: var BRepAdaptor_HCurve2d): var BRepAdaptor_Curve2d {.
    importcpp: "ChangeCurve2d", header: "BRepAdaptor_HCurve2d.hxx".}
type
  BRepAdaptor_HCurve2dbase_type* = Adaptor2d_HCurve2d

proc get_type_name*(): cstring {.importcpp: "BRepAdaptor_HCurve2d::get_type_name(@)",
                              header: "BRepAdaptor_HCurve2d.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "BRepAdaptor_HCurve2d::get_type_descriptor(@)",
    header: "BRepAdaptor_HCurve2d.hxx".}
proc DynamicType*(this: BRepAdaptor_HCurve2d): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "BRepAdaptor_HCurve2d.hxx".}
## !!!Ignored construct:  # TheCurve BRepAdaptor_Curve2d [NewLine] # TheCurve_hxx < BRepAdaptor_Curve2d . hxx > [NewLine] # Adaptor2d_GenHCurve2d BRepAdaptor_HCurve2d [NewLine] # Adaptor2d_GenHCurve2d_hxx < BRepAdaptor_HCurve2d . hxx > [NewLine] # Handle_Adaptor2d_GenHCurve2d opencascade :: handle < BRepAdaptor_HCurve2d > [end of template] [NewLine] # < Adaptor2d_GenHCurve2d . lxx > [NewLine] # TheCurve [NewLine] # TheCurve_hxx [NewLine] # Adaptor2d_GenHCurve2d [NewLine] # Adaptor2d_GenHCurve2d_hxx [NewLine] # Handle_Adaptor2d_GenHCurve2d [NewLine] #  _BRepAdaptor_HCurve2d_HeaderFile [NewLine]
## Error: did not expect <!!!
