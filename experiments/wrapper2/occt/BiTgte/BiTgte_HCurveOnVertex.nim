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

## !!!Ignored construct:  # _BiTgte_HCurveOnVertex_HeaderFile [NewLine] # _BiTgte_HCurveOnVertex_HeaderFile [NewLine] # < Standard . hxx > [NewLine] # < Standard_Type . hxx > [NewLine] # < BiTgte_CurveOnVertex . hxx > [NewLine] # < Adaptor3d_HCurve . hxx > [NewLine] class Standard_OutOfRange ;
## Error: did not expect <!!!

discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Standard_DomainError"
discard "forward decl of BiTgte_CurveOnVertex"
discard "forward decl of Adaptor3d_Curve"
discard "forward decl of BiTgte_HCurveOnVertex"
discard "forward decl of BiTgte_HCurveOnVertex"
type
  HandleBiTgteHCurveOnVertexBiTgteHCurveOnVertex* = Handle[BiTgteHCurveOnVertex]
  BiTgteHCurveOnVertex* {.importcpp: "BiTgte_HCurveOnVertex",
                         header: "BiTgte_HCurveOnVertex.hxx", bycopy.} = object of Adaptor3dHCurve ##
                                                                                            ## !
                                                                                            ## Creates
                                                                                            ## an
                                                                                            ## empty
                                                                                            ## GenHCurve.


proc constructBiTgteHCurveOnVertex*(): BiTgteHCurveOnVertex {.constructor,
    importcpp: "BiTgte_HCurveOnVertex(@)", header: "BiTgte_HCurveOnVertex.hxx".}
proc constructBiTgteHCurveOnVertex*(c: BiTgteCurveOnVertex): BiTgteHCurveOnVertex {.
    constructor, importcpp: "BiTgte_HCurveOnVertex(@)",
    header: "BiTgte_HCurveOnVertex.hxx".}
proc set*(this: var BiTgteHCurveOnVertex; c: BiTgteCurveOnVertex) {.importcpp: "Set",
    header: "BiTgte_HCurveOnVertex.hxx".}
proc curve*(this: BiTgteHCurveOnVertex): Adaptor3dCurve {.noSideEffect,
    importcpp: "Curve", header: "BiTgte_HCurveOnVertex.hxx".}
proc getCurve*(this: var BiTgteHCurveOnVertex): var Adaptor3dCurve {.
    importcpp: "GetCurve", header: "BiTgte_HCurveOnVertex.hxx".}
proc changeCurve*(this: var BiTgteHCurveOnVertex): var BiTgteCurveOnVertex {.
    importcpp: "ChangeCurve", header: "BiTgte_HCurveOnVertex.hxx".}
type
  BiTgteHCurveOnVertexbaseType* = Adaptor3dHCurve

proc getTypeName*(): cstring {.importcpp: "BiTgte_HCurveOnVertex::get_type_name(@)",
                            header: "BiTgte_HCurveOnVertex.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BiTgte_HCurveOnVertex::get_type_descriptor(@)",
    header: "BiTgte_HCurveOnVertex.hxx".}
proc dynamicType*(this: BiTgteHCurveOnVertex): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "BiTgte_HCurveOnVertex.hxx".}
## !!!Ignored construct:  # TheCurve BiTgte_CurveOnVertex [NewLine] # TheCurve_hxx < BiTgte_CurveOnVertex . hxx > [NewLine] # Adaptor3d_GenHCurve BiTgte_HCurveOnVertex [NewLine] # Adaptor3d_GenHCurve_hxx < BiTgte_HCurveOnVertex . hxx > [NewLine] # Handle_Adaptor3d_GenHCurve opencascade :: handle < BiTgte_HCurveOnVertex > [end of template] [NewLine] # < Adaptor3d_GenHCurve . lxx > [NewLine] # TheCurve [NewLine] # TheCurve_hxx [NewLine] # Adaptor3d_GenHCurve [NewLine] # Adaptor3d_GenHCurve_hxx [NewLine] # Handle_Adaptor3d_GenHCurve [NewLine] #  _BiTgte_HCurveOnVertex_HeaderFile
## Error: did not expect <!!!

