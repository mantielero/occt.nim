##  Created on: 1996-12-16
##  Created by: Bruno DUMORTIER
##  Copyright (c) 1996-1999 Matra Datavision
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

## !!!Ignored construct:  # _BiTgte_HCurveOnEdge_HeaderFile [NewLine] # _BiTgte_HCurveOnEdge_HeaderFile [NewLine] # < Standard . hxx > [NewLine] # < Standard_Type . hxx > [NewLine] # < BiTgte_CurveOnEdge . hxx > [NewLine] # < Adaptor3d_HCurve . hxx > [NewLine] class Standard_OutOfRange ;
## Error: did not expect <!!!

discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Standard_DomainError"
discard "forward decl of BiTgte_CurveOnEdge"
discard "forward decl of Adaptor3d_Curve"
discard "forward decl of BiTgte_HCurveOnEdge"
discard "forward decl of BiTgte_HCurveOnEdge"
type
  HandleBiTgteHCurveOnEdgeBiTgteHCurveOnEdge* = Handle[BiTgteHCurveOnEdge]
  BiTgteHCurveOnEdge* {.importcpp: "BiTgte_HCurveOnEdge",
                       header: "BiTgte_HCurveOnEdge.hxx", bycopy.} = object of Adaptor3dHCurve ##
                                                                                        ## !
                                                                                        ## Creates
                                                                                        ## an
                                                                                        ## empty
                                                                                        ## GenHCurve.


proc constructBiTgteHCurveOnEdge*(): BiTgteHCurveOnEdge {.constructor,
    importcpp: "BiTgte_HCurveOnEdge(@)", header: "BiTgte_HCurveOnEdge.hxx".}
proc constructBiTgteHCurveOnEdge*(c: BiTgteCurveOnEdge): BiTgteHCurveOnEdge {.
    constructor, importcpp: "BiTgte_HCurveOnEdge(@)",
    header: "BiTgte_HCurveOnEdge.hxx".}
proc set*(this: var BiTgteHCurveOnEdge; c: BiTgteCurveOnEdge) {.importcpp: "Set",
    header: "BiTgte_HCurveOnEdge.hxx".}
proc curve*(this: BiTgteHCurveOnEdge): Adaptor3dCurve {.noSideEffect,
    importcpp: "Curve", header: "BiTgte_HCurveOnEdge.hxx".}
proc getCurve*(this: var BiTgteHCurveOnEdge): var Adaptor3dCurve {.
    importcpp: "GetCurve", header: "BiTgte_HCurveOnEdge.hxx".}
proc changeCurve*(this: var BiTgteHCurveOnEdge): var BiTgteCurveOnEdge {.
    importcpp: "ChangeCurve", header: "BiTgte_HCurveOnEdge.hxx".}
type
  BiTgteHCurveOnEdgebaseType* = Adaptor3dHCurve

proc getTypeName*(): cstring {.importcpp: "BiTgte_HCurveOnEdge::get_type_name(@)",
                            header: "BiTgte_HCurveOnEdge.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BiTgte_HCurveOnEdge::get_type_descriptor(@)",
    header: "BiTgte_HCurveOnEdge.hxx".}
proc dynamicType*(this: BiTgteHCurveOnEdge): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "BiTgte_HCurveOnEdge.hxx".}
## !!!Ignored construct:  # TheCurve BiTgte_CurveOnEdge [NewLine] # TheCurve_hxx < BiTgte_CurveOnEdge . hxx > [NewLine] # Adaptor3d_GenHCurve BiTgte_HCurveOnEdge [NewLine] # Adaptor3d_GenHCurve_hxx < BiTgte_HCurveOnEdge . hxx > [NewLine] # Handle_Adaptor3d_GenHCurve opencascade :: handle < BiTgte_HCurveOnEdge > [end of template] [NewLine] # < Adaptor3d_GenHCurve . lxx > [NewLine] # TheCurve [NewLine] # TheCurve_hxx [NewLine] # Adaptor3d_GenHCurve [NewLine] # Adaptor3d_GenHCurve_hxx [NewLine] # Handle_Adaptor3d_GenHCurve [NewLine] #  _BiTgte_HCurveOnEdge_HeaderFile
## Error: did not expect <!!!

