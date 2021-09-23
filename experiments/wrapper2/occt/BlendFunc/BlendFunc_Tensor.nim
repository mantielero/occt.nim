##  Created on: 1996-12-05
##  Created by: Philippe MANGIN
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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../TColStd/TColStd_Array1OfReal,
  ../Standard/Standard_Integer, ../Standard/Standard_Real, ../math/math_Vector

discard "forward decl of Standard_DimensionError"
discard "forward decl of Standard_RangeError"
discard "forward decl of math_Matrix"
type
  BlendFunc_Tensor* {.importcpp: "BlendFunc_Tensor",
                     header: "BlendFunc_Tensor.hxx", bycopy.} = object


proc constructBlendFunc_Tensor*(NbRow: Standard_Integer; NbCol: Standard_Integer;
                               NbMat: Standard_Integer): BlendFunc_Tensor {.
    constructor, importcpp: "BlendFunc_Tensor(@)", header: "BlendFunc_Tensor.hxx".}
proc Init*(this: var BlendFunc_Tensor; InitialValue: Standard_Real) {.
    importcpp: "Init", header: "BlendFunc_Tensor.hxx".}
proc Value*(this: BlendFunc_Tensor; Row: Standard_Integer; Col: Standard_Integer;
           Mat: Standard_Integer): Standard_Real {.noSideEffect, importcpp: "Value",
    header: "BlendFunc_Tensor.hxx".}
proc `()`*(this: BlendFunc_Tensor; Row: Standard_Integer; Col: Standard_Integer;
          Mat: Standard_Integer): Standard_Real {.noSideEffect, importcpp: "#(@)",
    header: "BlendFunc_Tensor.hxx".}
proc ChangeValue*(this: var BlendFunc_Tensor; Row: Standard_Integer;
                 Col: Standard_Integer; Mat: Standard_Integer): var Standard_Real {.
    importcpp: "ChangeValue", header: "BlendFunc_Tensor.hxx".}
proc `()`*(this: var BlendFunc_Tensor; Row: Standard_Integer; Col: Standard_Integer;
          Mat: Standard_Integer): var Standard_Real {.importcpp: "#(@)",
    header: "BlendFunc_Tensor.hxx".}
proc Multiply*(this: BlendFunc_Tensor; Right: math_Vector; Product: var math_Matrix) {.
    noSideEffect, importcpp: "Multiply", header: "BlendFunc_Tensor.hxx".}