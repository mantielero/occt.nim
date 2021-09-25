##  Created on: 1993-11-17
##  Created by: Isabelle GRIGNON
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

## !!!Ignored construct:  # _ChFiDS_HElSpine_HeaderFile [NewLine] # _ChFiDS_HElSpine_HeaderFile [NewLine] # < Standard . hxx > [NewLine] # < Standard_Type . hxx > [NewLine] # < ChFiDS_ElSpine . hxx > [NewLine] # < Adaptor3d_HCurve . hxx > [NewLine] class Standard_OutOfRange ;
## Error: did not expect <!!!

discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Standard_DomainError"
discard "forward decl of ChFiDS_ElSpine"
discard "forward decl of Adaptor3d_Curve"
discard "forward decl of ChFiDS_HElSpine"
discard "forward decl of ChFiDS_HElSpine"
type
  HandleChFiDS_HElSpineChFiDS_HElSpine* = Handle[ChFiDS_HElSpine]
  ChFiDS_HElSpine* {.importcpp: "ChFiDS_HElSpine", header: "ChFiDS_HElSpine.hxx",
                    bycopy.} = object of Adaptor3dHCurve ## ! Creates an empty GenHCurve.


proc constructChFiDS_HElSpine*(): ChFiDS_HElSpine {.constructor,
    importcpp: "ChFiDS_HElSpine(@)", header: "ChFiDS_HElSpine.hxx".}
proc constructChFiDS_HElSpine*(c: ChFiDS_ElSpine): ChFiDS_HElSpine {.constructor,
    importcpp: "ChFiDS_HElSpine(@)", header: "ChFiDS_HElSpine.hxx".}
proc set*(this: var ChFiDS_HElSpine; c: ChFiDS_ElSpine) {.importcpp: "Set",
    header: "ChFiDS_HElSpine.hxx".}
proc curve*(this: ChFiDS_HElSpine): Adaptor3dCurve {.noSideEffect,
    importcpp: "Curve", header: "ChFiDS_HElSpine.hxx".}
proc getCurve*(this: var ChFiDS_HElSpine): var Adaptor3dCurve {.importcpp: "GetCurve",
    header: "ChFiDS_HElSpine.hxx".}
proc changeCurve*(this: var ChFiDS_HElSpine): var ChFiDS_ElSpine {.
    importcpp: "ChangeCurve", header: "ChFiDS_HElSpine.hxx".}
type
  ChFiDS_HElSpinebaseType* = Adaptor3dHCurve

proc getTypeName*(): cstring {.importcpp: "ChFiDS_HElSpine::get_type_name(@)",
                            header: "ChFiDS_HElSpine.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "ChFiDS_HElSpine::get_type_descriptor(@)",
    header: "ChFiDS_HElSpine.hxx".}
proc dynamicType*(this: ChFiDS_HElSpine): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "ChFiDS_HElSpine.hxx".}
## !!!Ignored construct:  # TheCurve ChFiDS_ElSpine [NewLine] # TheCurve_hxx < ChFiDS_ElSpine . hxx > [NewLine] # Adaptor3d_GenHCurve ChFiDS_HElSpine [NewLine] # Adaptor3d_GenHCurve_hxx < ChFiDS_HElSpine . hxx > [NewLine] # Handle_Adaptor3d_GenHCurve opencascade :: handle < ChFiDS_HElSpine > [end of template] [NewLine] # < Adaptor3d_GenHCurve . lxx > [NewLine] # TheCurve [NewLine] # TheCurve_hxx [NewLine] # Adaptor3d_GenHCurve [NewLine] # Adaptor3d_GenHCurve_hxx [NewLine] # Handle_Adaptor3d_GenHCurve [NewLine] #  _ChFiDS_HElSpine_HeaderFile
## Error: did not expect <!!!

