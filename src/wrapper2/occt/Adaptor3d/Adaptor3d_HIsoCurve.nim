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

## !!!Ignored construct:  # _Adaptor3d_HIsoCurve_HeaderFile [NewLine] # _Adaptor3d_HIsoCurve_HeaderFile [NewLine] # < Standard . hxx > [NewLine] # < Standard_Type . hxx > [NewLine] # < Adaptor3d_IsoCurve . hxx > [NewLine] # < Adaptor3d_HCurve . hxx > [NewLine] class Standard_OutOfRange ;
## Error: did not expect <!!!

discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Standard_DomainError"
discard "forward decl of Adaptor3d_IsoCurve"
discard "forward decl of Adaptor3d_Curve"
discard "forward decl of Adaptor3d_HIsoCurve"
discard "forward decl of Adaptor3d_HIsoCurve"
type
  HandleAdaptor3dHIsoCurveAdaptor3dHIsoCurve* = Handle[Adaptor3dHIsoCurve]
  Adaptor3dHIsoCurve* {.importcpp: "Adaptor3d_HIsoCurve",
                       header: "Adaptor3d_HIsoCurve.hxx", bycopy.} = object of Adaptor3dHCurve ##
                                                                                        ## !
                                                                                        ## Creates
                                                                                        ## an
                                                                                        ## empty
                                                                                        ## GenHCurve.


proc constructAdaptor3dHIsoCurve*(): Adaptor3dHIsoCurve {.constructor,
    importcpp: "Adaptor3d_HIsoCurve(@)", header: "Adaptor3d_HIsoCurve.hxx".}
proc constructAdaptor3dHIsoCurve*(c: Adaptor3dIsoCurve): Adaptor3dHIsoCurve {.
    constructor, importcpp: "Adaptor3d_HIsoCurve(@)",
    header: "Adaptor3d_HIsoCurve.hxx".}
proc set*(this: var Adaptor3dHIsoCurve; c: Adaptor3dIsoCurve) {.importcpp: "Set",
    header: "Adaptor3d_HIsoCurve.hxx".}
proc curve*(this: Adaptor3dHIsoCurve): Adaptor3dCurve {.noSideEffect,
    importcpp: "Curve", header: "Adaptor3d_HIsoCurve.hxx".}
proc getCurve*(this: var Adaptor3dHIsoCurve): var Adaptor3dCurve {.
    importcpp: "GetCurve", header: "Adaptor3d_HIsoCurve.hxx".}
proc changeCurve*(this: var Adaptor3dHIsoCurve): var Adaptor3dIsoCurve {.
    importcpp: "ChangeCurve", header: "Adaptor3d_HIsoCurve.hxx".}
type
  Adaptor3dHIsoCurvebaseType* = Adaptor3dHCurve

proc getTypeName*(): cstring {.importcpp: "Adaptor3d_HIsoCurve::get_type_name(@)",
                            header: "Adaptor3d_HIsoCurve.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Adaptor3d_HIsoCurve::get_type_descriptor(@)",
    header: "Adaptor3d_HIsoCurve.hxx".}
proc dynamicType*(this: Adaptor3dHIsoCurve): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Adaptor3d_HIsoCurve.hxx".}
## !!!Ignored construct:  # TheCurve Adaptor3d_IsoCurve [NewLine] # TheCurve_hxx < Adaptor3d_IsoCurve . hxx > [NewLine] # Adaptor3d_GenHCurve Adaptor3d_HIsoCurve [NewLine] # Adaptor3d_GenHCurve_hxx < Adaptor3d_HIsoCurve . hxx > [NewLine] # Handle_Adaptor3d_GenHCurve opencascade :: handle < Adaptor3d_HIsoCurve > [end of template] [NewLine] # < Adaptor3d_GenHCurve . lxx > [NewLine] # TheCurve [NewLine] # TheCurve_hxx [NewLine] # Adaptor3d_GenHCurve [NewLine] # Adaptor3d_GenHCurve_hxx [NewLine] # Handle_Adaptor3d_GenHCurve [NewLine] #  _Adaptor3d_HIsoCurve_HeaderFile
## Error: did not expect <!!!


