##  Created by: DAUTRY Philippe
##  Copyright (c) 1997-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_Type, ../TDF/TDF_Label,
  ../Draw/Draw_Drawable3D, ../Standard/Standard_OStream, ../Draw/Draw_Interpretor

discard "forward decl of TDF_Label"
discard "forward decl of Draw_Display"
discard "forward decl of Draw_Drawable3D"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of TDataStd_TreeNode"
discard "forward decl of DDataStd_TreeBrowser"
discard "forward decl of DDataStd_TreeBrowser"
type
  Handle_DDataStd_TreeBrowser* = handle[DDataStd_TreeBrowser]

## ! Browses a TreeNode from TDataStd.
## ! =================================

type
  DDataStd_TreeBrowser* {.importcpp: "DDataStd_TreeBrowser",
                         header: "DDataStd_TreeBrowser.hxx", bycopy.} = object of Draw_Drawable3D ##
                                                                                           ## !
                                                                                           ## Returns
                                                                                           ## a
                                                                                           ## string
                                                                                           ## composed
                                                                                           ## with
                                                                                           ## the
                                                                                           ## sub-TreeNodes
                                                                                           ##
                                                                                           ## !
                                                                                           ## of
                                                                                           ## <aTreeNode>.
                                                                                           ## Used
                                                                                           ## to
                                                                                           ## implement
                                                                                           ## other
                                                                                           ## methods.


proc constructDDataStd_TreeBrowser*(root: TDF_Label): DDataStd_TreeBrowser {.
    constructor, importcpp: "DDataStd_TreeBrowser(@)",
    header: "DDataStd_TreeBrowser.hxx".}
proc DrawOn*(this: DDataStd_TreeBrowser; dis: var Draw_Display) {.noSideEffect,
    importcpp: "DrawOn", header: "DDataStd_TreeBrowser.hxx".}
proc Copy*(this: DDataStd_TreeBrowser): handle[Draw_Drawable3D] {.noSideEffect,
    importcpp: "Copy", header: "DDataStd_TreeBrowser.hxx".}
proc Dump*(this: DDataStd_TreeBrowser; S: var Standard_OStream) {.noSideEffect,
    importcpp: "Dump", header: "DDataStd_TreeBrowser.hxx".}
proc Whatis*(this: DDataStd_TreeBrowser; I: var Draw_Interpretor) {.noSideEffect,
    importcpp: "Whatis", header: "DDataStd_TreeBrowser.hxx".}
proc Label*(this: var DDataStd_TreeBrowser; root: TDF_Label) {.importcpp: "Label",
    header: "DDataStd_TreeBrowser.hxx".}
proc Label*(this: DDataStd_TreeBrowser): TDF_Label {.noSideEffect,
    importcpp: "Label", header: "DDataStd_TreeBrowser.hxx".}
proc OpenRoot*(this: DDataStd_TreeBrowser): TCollection_AsciiString {.noSideEffect,
    importcpp: "OpenRoot", header: "DDataStd_TreeBrowser.hxx".}
proc OpenNode*(this: DDataStd_TreeBrowser; L: TDF_Label): TCollection_AsciiString {.
    noSideEffect, importcpp: "OpenNode", header: "DDataStd_TreeBrowser.hxx".}
type
  DDataStd_TreeBrowserbase_type* = Draw_Drawable3D

proc get_type_name*(): cstring {.importcpp: "DDataStd_TreeBrowser::get_type_name(@)",
                              header: "DDataStd_TreeBrowser.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "DDataStd_TreeBrowser::get_type_descriptor(@)",
    header: "DDataStd_TreeBrowser.hxx".}
proc DynamicType*(this: DDataStd_TreeBrowser): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "DDataStd_TreeBrowser.hxx".}