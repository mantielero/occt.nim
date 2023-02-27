import breptools_types
import ../tkbrep/toptools/toptools_types
import ../tkbrep/topods/topods_types
import ../tkernel/standard/standard_types
##  Created on: 2017-04-21
##  Created by: Alexander Bobkov
##  Copyright (c) 2017 OPEN CASCADE SAS
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

discard "forward decl of BRepTools_History"

proc newBRepTools_History*(): BRepTools_History {.cdecl, constructor,
    importcpp: "BRepTools_History(@)", header: "BRepTools_History.hxx".}
proc newBRepTools_History*[TheAlgo](theArguments: TopTools_ListOfShape;
                                   theAlgo: var TheAlgo): BRepTools_History {.cdecl,
    constructor, importcpp: "BRepTools_History(@)", header: "BRepTools_History.hxx".}

proc IsSupportedType*(theShape: TopoDS_Shape): bool {.cdecl,
    importcpp: "BRepTools_History::IsSupportedType(@)",
    header: "BRepTools_History.hxx".}
proc AddGenerated*(this: var BRepTools_History; theInitial: TopoDS_Shape;
                  theGenerated: TopoDS_Shape) {.cdecl, importcpp: "AddGenerated",
    header: "BRepTools_History.hxx".}
proc AddModified*(this: var BRepTools_History; theInitial: TopoDS_Shape;
                 theModified: TopoDS_Shape) {.cdecl, importcpp: "AddModified",
    header: "BRepTools_History.hxx".}
proc Remove*(this: var BRepTools_History; theRemoved: TopoDS_Shape) {.cdecl,
    importcpp: "Remove", header: "BRepTools_History.hxx".}
proc ReplaceGenerated*(this: var BRepTools_History; theInitial: TopoDS_Shape;
                      theGenerated: TopoDS_Shape) {.cdecl,
    importcpp: "ReplaceGenerated", header: "BRepTools_History.hxx".}
proc ReplaceModified*(this: var BRepTools_History; theInitial: TopoDS_Shape;
                     theModified: TopoDS_Shape) {.cdecl,
    importcpp: "ReplaceModified", header: "BRepTools_History.hxx".}
proc Clear*(this: var BRepTools_History) {.cdecl, importcpp: "Clear",
                                       header: "BRepTools_History.hxx".}
proc Generated*(this: BRepTools_History; theInitial: TopoDS_Shape): TopTools_ListOfShape {.
    noSideEffect, cdecl, importcpp: "Generated", header: "BRepTools_History.hxx".}
proc Modified*(this: BRepTools_History; theInitial: TopoDS_Shape): TopTools_ListOfShape {.
    noSideEffect, cdecl, importcpp: "Modified", header: "BRepTools_History.hxx".}
proc IsRemoved*(this: BRepTools_History; theInitial: TopoDS_Shape): bool {.
    noSideEffect, cdecl, importcpp: "IsRemoved", header: "BRepTools_History.hxx".}
proc HasGenerated*(this: BRepTools_History): bool {.noSideEffect, cdecl,
    importcpp: "HasGenerated", header: "BRepTools_History.hxx".}
proc HasModified*(this: BRepTools_History): bool {.noSideEffect, cdecl,
    importcpp: "HasModified", header: "BRepTools_History.hxx".}
proc HasRemoved*(this: BRepTools_History): bool {.noSideEffect, cdecl,
    importcpp: "HasRemoved", header: "BRepTools_History.hxx".}
proc Merge*(this: var BRepTools_History; theHistory23: Handle[BRepTools_History]) {.
    cdecl, importcpp: "Merge", header: "BRepTools_History.hxx".}
proc Merge*(this: var BRepTools_History; theHistory23: BRepTools_History) {.cdecl,
    importcpp: "Merge", header: "BRepTools_History.hxx".}
proc Merge*[TheAlgo](this: var BRepTools_History;
                    theArguments: TopTools_ListOfShape; theAlgo: var TheAlgo) {.
    cdecl, importcpp: "Merge", header: "BRepTools_History.hxx".}
proc Dump*(this: var BRepTools_History; theS: var Standard_OStream) {.cdecl,
    importcpp: "Dump", header: "BRepTools_History.hxx".}