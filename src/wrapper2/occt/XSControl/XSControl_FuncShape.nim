##  Created on: 1995-03-16
##  Created by: Christian CAILLET
##  Copyright (c) 1995-1999 Matra Datavision
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
  ../Standard/Standard_Handle, ../Standard/Standard_Integer,
  ../TopTools/TopTools_HSequenceOfShape, ../Standard/Standard_CString,
  ../Standard/Standard_Boolean

discard "forward decl of XSControl_WorkSession"
discard "forward decl of TCollection_AsciiString"
type
  XSControl_FuncShape* {.importcpp: "XSControl_FuncShape",
                        header: "XSControl_FuncShape.hxx", bycopy.} = object ## ! Defines and loads all
                                                                        ## functions which work on shapes for
                                                                        ## XSControl (as ActFunc)


proc Init*() {.importcpp: "XSControl_FuncShape::Init(@)",
             header: "XSControl_FuncShape.hxx".}
proc MoreShapes*(session: handle[XSControl_WorkSession];
                list: var handle[TopTools_HSequenceOfShape]; name: Standard_CString): Standard_Integer {.
    importcpp: "XSControl_FuncShape::MoreShapes(@)",
    header: "XSControl_FuncShape.hxx".}
proc FileAndVar*(session: handle[XSControl_WorkSession]; file: Standard_CString;
                `var`: Standard_CString; def: Standard_CString;
                resfile: var TCollection_AsciiString;
                resvar: var TCollection_AsciiString): Standard_Boolean {.
    importcpp: "XSControl_FuncShape::FileAndVar(@)",
    header: "XSControl_FuncShape.hxx".}