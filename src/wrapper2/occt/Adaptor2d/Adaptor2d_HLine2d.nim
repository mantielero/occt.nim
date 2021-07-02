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

## !!!Ignored construct:  # _Adaptor2d_HLine2d_HeaderFile [NewLine] # _Adaptor2d_HLine2d_HeaderFile [NewLine] # < Standard . hxx > [NewLine] # < Standard_Type . hxx > [NewLine] # < Adaptor2d_Line2d . hxx > [NewLine] # < Adaptor2d_HCurve2d . hxx > [NewLine] class Standard_OutOfRange ;
## Error: did not expect <!!!

discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Standard_DomainError"
discard "forward decl of Adaptor2d_Line2d"
discard "forward decl of Adaptor2d_Curve2d"
discard "forward decl of Adaptor2d_HLine2d"
discard "forward decl of Adaptor2d_HLine2d"
type
  HandleAdaptor2dHLine2dAdaptor2dHLine2d* = Handle[Adaptor2dHLine2d]
  Adaptor2dHLine2d* {.importcpp: "Adaptor2d_HLine2d",
                     header: "Adaptor2d_HLine2d.hxx", bycopy.} = object of Adaptor2dHCurve2d ##
                                                                                      ## !
                                                                                      ## Creates
                                                                                      ## an
                                                                                      ## empty
                                                                                      ## GenHCurve2d.


proc constructAdaptor2dHLine2d*(): Adaptor2dHLine2d {.constructor,
    importcpp: "Adaptor2d_HLine2d(@)", header: "Adaptor2d_HLine2d.hxx".}
proc constructAdaptor2dHLine2d*(c: Adaptor2dLine2d): Adaptor2dHLine2d {.constructor,
    importcpp: "Adaptor2d_HLine2d(@)", header: "Adaptor2d_HLine2d.hxx".}
proc set*(this: var Adaptor2dHLine2d; c: Adaptor2dLine2d) {.importcpp: "Set",
    header: "Adaptor2d_HLine2d.hxx".}
proc curve2d*(this: Adaptor2dHLine2d): Adaptor2dCurve2d {.noSideEffect,
    importcpp: "Curve2d", header: "Adaptor2d_HLine2d.hxx".}
proc changeCurve2d*(this: var Adaptor2dHLine2d): var Adaptor2dLine2d {.
    importcpp: "ChangeCurve2d", header: "Adaptor2d_HLine2d.hxx".}
type
  Adaptor2dHLine2dbaseType* = Adaptor2dHCurve2d

proc getTypeName*(): cstring {.importcpp: "Adaptor2d_HLine2d::get_type_name(@)",
                            header: "Adaptor2d_HLine2d.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Adaptor2d_HLine2d::get_type_descriptor(@)",
    header: "Adaptor2d_HLine2d.hxx".}
proc dynamicType*(this: Adaptor2dHLine2d): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Adaptor2d_HLine2d.hxx".}
## !!!Ignored construct:  # TheCurve Adaptor2d_Line2d [NewLine] # TheCurve_hxx < Adaptor2d_Line2d . hxx > [NewLine] # Adaptor2d_GenHCurve2d Adaptor2d_HLine2d [NewLine] # Adaptor2d_GenHCurve2d_hxx < Adaptor2d_HLine2d . hxx > [NewLine] # Handle_Adaptor2d_GenHCurve2d opencascade :: handle < Adaptor2d_HLine2d > [end of template] [NewLine] # < Adaptor2d_GenHCurve2d . lxx > [NewLine] # TheCurve [NewLine] # TheCurve_hxx [NewLine] # Adaptor2d_GenHCurve2d [NewLine] # Adaptor2d_GenHCurve2d_hxx [NewLine] # Handle_Adaptor2d_GenHCurve2d [NewLine] #  _Adaptor2d_HLine2d_HeaderFile
## Error: did not expect <!!!


