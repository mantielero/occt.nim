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

## !!!Ignored construct:  # _GeomAdaptor_GHCurve_HeaderFile [NewLine] # _GeomAdaptor_GHCurve_HeaderFile [NewLine] # < Standard . hxx > [NewLine] # < Standard_Type . hxx > [NewLine] # < GeomAdaptor_Curve . hxx > [NewLine] # < Adaptor3d_HCurve . hxx > [NewLine] class Standard_OutOfRange ;
## Error: did not expect <!!!

discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Standard_DomainError"
discard "forward decl of GeomAdaptor_Curve"
discard "forward decl of Adaptor3d_Curve"
discard "forward decl of GeomAdaptor_GHCurve"
discard "forward decl of GeomAdaptor_GHCurve"
type
  HandleGeomAdaptorGHCurveGeomAdaptorGHCurve* = Handle[GeomAdaptorGHCurve]
  GeomAdaptorGHCurve* {.importcpp: "GeomAdaptor_GHCurve",
                       header: "GeomAdaptor_GHCurve.hxx", bycopy.} = object of Adaptor3dHCurve ##
                                                                                        ## !
                                                                                        ## Creates
                                                                                        ## an
                                                                                        ## empty
                                                                                        ## GenHCurve.


proc constructGeomAdaptorGHCurve*(): GeomAdaptorGHCurve {.constructor,
    importcpp: "GeomAdaptor_GHCurve(@)", header: "GeomAdaptor_GHCurve.hxx".}
proc constructGeomAdaptorGHCurve*(c: GeomAdaptorCurve): GeomAdaptorGHCurve {.
    constructor, importcpp: "GeomAdaptor_GHCurve(@)",
    header: "GeomAdaptor_GHCurve.hxx".}
proc set*(this: var GeomAdaptorGHCurve; c: GeomAdaptorCurve) {.importcpp: "Set",
    header: "GeomAdaptor_GHCurve.hxx".}
proc curve*(this: GeomAdaptorGHCurve): Adaptor3dCurve {.noSideEffect,
    importcpp: "Curve", header: "GeomAdaptor_GHCurve.hxx".}
proc getCurve*(this: var GeomAdaptorGHCurve): var Adaptor3dCurve {.
    importcpp: "GetCurve", header: "GeomAdaptor_GHCurve.hxx".}
proc changeCurve*(this: var GeomAdaptorGHCurve): var GeomAdaptorCurve {.
    importcpp: "ChangeCurve", header: "GeomAdaptor_GHCurve.hxx".}
type
  GeomAdaptorGHCurvebaseType* = Adaptor3dHCurve

proc getTypeName*(): cstring {.importcpp: "GeomAdaptor_GHCurve::get_type_name(@)",
                            header: "GeomAdaptor_GHCurve.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "GeomAdaptor_GHCurve::get_type_descriptor(@)",
    header: "GeomAdaptor_GHCurve.hxx".}
proc dynamicType*(this: GeomAdaptorGHCurve): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "GeomAdaptor_GHCurve.hxx".}
## !!!Ignored construct:  # TheCurve GeomAdaptor_Curve [NewLine] # TheCurve_hxx < GeomAdaptor_Curve . hxx > [NewLine] # Adaptor3d_GenHCurve GeomAdaptor_GHCurve [NewLine] # Adaptor3d_GenHCurve_hxx < GeomAdaptor_GHCurve . hxx > [NewLine] # Handle_Adaptor3d_GenHCurve opencascade :: handle < GeomAdaptor_GHCurve > [end of template] [NewLine] # < Adaptor3d_GenHCurve . lxx > [NewLine] # TheCurve [NewLine] # TheCurve_hxx [NewLine] # Adaptor3d_GenHCurve [NewLine] # Adaptor3d_GenHCurve_hxx [NewLine] # Handle_Adaptor3d_GenHCurve [NewLine] #  _GeomAdaptor_GHCurve_HeaderFile
## Error: did not expect <!!!

