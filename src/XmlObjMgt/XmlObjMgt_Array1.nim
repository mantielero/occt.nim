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

## ! The class Array1 represents unidimensionnal
## ! array of fixed size known at run time.
## ! The range of the index is user defined.
## ! Warning: Programs clients of such class must be independant
## ! of the range of the first element. Then, a C++ for
## ! loop must be written like this
## ! for (i = A->Lower(); i <= A->Upper(); i++)

type
  XmlObjMgtArray1* {.importcpp: "XmlObjMgt_Array1", header: "XmlObjMgt_Array1.hxx",
                    bycopy.} = object ## ! Create an array of lower bound <Low> and
                                   ## ! upper bound <Up>. Range error is raised
                                   ## ! when <Up> is less than <Low>.


proc constructXmlObjMgtArray1*(low: cint; up: cint): XmlObjMgtArray1 {.constructor,
    importcpp: "XmlObjMgt_Array1(@)", header: "XmlObjMgt_Array1.hxx".}
proc constructXmlObjMgtArray1*(theParent: XmlObjMgtElement;
                              theName: XmlObjMgtDOMString): XmlObjMgtArray1 {.
    constructor, importcpp: "XmlObjMgt_Array1(@)", header: "XmlObjMgt_Array1.hxx".}
proc createArrayElement*(this: var XmlObjMgtArray1; theParent: var XmlObjMgtElement;
                        theName: XmlObjMgtDOMString) {.
    importcpp: "CreateArrayElement", header: "XmlObjMgt_Array1.hxx".}
proc element*(this: XmlObjMgtArray1): XmlObjMgtElement {.noSideEffect,
    importcpp: "Element", header: "XmlObjMgt_Array1.hxx".}
proc length*(this: XmlObjMgtArray1): cint {.noSideEffect, importcpp: "Length",
                                        header: "XmlObjMgt_Array1.hxx".}
proc lower*(this: XmlObjMgtArray1): cint {.noSideEffect, importcpp: "Lower",
                                       header: "XmlObjMgt_Array1.hxx".}
proc upper*(this: XmlObjMgtArray1): cint {.noSideEffect, importcpp: "Upper",
                                       header: "XmlObjMgt_Array1.hxx".}
proc setValue*(this: var XmlObjMgtArray1; index: cint; value: var XmlObjMgtElement) {.
    importcpp: "SetValue", header: "XmlObjMgt_Array1.hxx".}
proc value*(this: XmlObjMgtArray1; index: cint): XmlObjMgtElement {.noSideEffect,
    importcpp: "Value", header: "XmlObjMgt_Array1.hxx".}

























