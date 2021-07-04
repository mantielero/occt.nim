##  Created on: 1992-11-25
##  Created by: Julia DOROVSKIKH
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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, XmlObjMgt_Element, ../Standard/Standard_Integer,
  XmlObjMgt_DOMString

## ! The class Array1 represents unidimensionnal
## ! array of fixed size known at run time.
## ! The range of the index is user defined.
## ! Warning: Programs clients of such class must be independant
## ! of the range of the first element. Then, a C++ for
## ! loop must be written like this
## ! for (i = A->Lower(); i <= A->Upper(); i++)

type
  XmlObjMgt_Array1* {.importcpp: "XmlObjMgt_Array1",
                     header: "XmlObjMgt_Array1.hxx", bycopy.} = object ## ! Create an array of lower bound <Low> and
                                                                  ## ! upper bound <Up>. Range error is raised
                                                                  ## ! when <Up> is less than <Low>.


proc constructXmlObjMgt_Array1*(Low: Standard_Integer; Up: Standard_Integer): XmlObjMgt_Array1 {.
    constructor, importcpp: "XmlObjMgt_Array1(@)", header: "XmlObjMgt_Array1.hxx".}
proc constructXmlObjMgt_Array1*(theParent: XmlObjMgt_Element;
                               theName: XmlObjMgt_DOMString): XmlObjMgt_Array1 {.
    constructor, importcpp: "XmlObjMgt_Array1(@)", header: "XmlObjMgt_Array1.hxx".}
proc CreateArrayElement*(this: var XmlObjMgt_Array1;
                        theParent: var XmlObjMgt_Element;
                        theName: XmlObjMgt_DOMString) {.
    importcpp: "CreateArrayElement", header: "XmlObjMgt_Array1.hxx".}
proc Element*(this: XmlObjMgt_Array1): XmlObjMgt_Element {.noSideEffect,
    importcpp: "Element", header: "XmlObjMgt_Array1.hxx".}
proc Length*(this: XmlObjMgt_Array1): Standard_Integer {.noSideEffect,
    importcpp: "Length", header: "XmlObjMgt_Array1.hxx".}
proc Lower*(this: XmlObjMgt_Array1): Standard_Integer {.noSideEffect,
    importcpp: "Lower", header: "XmlObjMgt_Array1.hxx".}
proc Upper*(this: XmlObjMgt_Array1): Standard_Integer {.noSideEffect,
    importcpp: "Upper", header: "XmlObjMgt_Array1.hxx".}
proc SetValue*(this: var XmlObjMgt_Array1; Index: Standard_Integer;
              Value: var XmlObjMgt_Element) {.importcpp: "SetValue",
    header: "XmlObjMgt_Array1.hxx".}
proc Value*(this: XmlObjMgt_Array1; Index: Standard_Integer): XmlObjMgt_Element {.
    noSideEffect, importcpp: "Value", header: "XmlObjMgt_Array1.hxx".}