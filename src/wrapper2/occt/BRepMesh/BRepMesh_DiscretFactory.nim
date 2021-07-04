##  Copyright (c) 2013 OPEN CASCADE SAS
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
  ../Standard/Standard_Macro, BRepMesh_PluginEntryType, BRepMesh_FactoryError,
  ../TColStd/TColStd_MapOfAsciiString, ../TCollection/TCollection_AsciiString,
  ../Plugin/Plugin_MapOfFunctions, BRepMesh_DiscretRoot

discard "forward decl of TopoDS_Shape"
type
  BRepMesh_DiscretFactory* {.importcpp: "BRepMesh_DiscretFactory",
                            header: "BRepMesh_DiscretFactory.hxx", bycopy.} = object ##
                                                                                ## !
                                                                                ## Returns
                                                                                ## the
                                                                                ## global
                                                                                ## factory
                                                                                ## instance.
                                                                                ##
                                                                                ## !
                                                                                ## Constructor


proc Get*(): var BRepMesh_DiscretFactory {.importcpp: "BRepMesh_DiscretFactory::Get(@)",
                                       header: "BRepMesh_DiscretFactory.hxx".}
proc Names*(this: BRepMesh_DiscretFactory): TColStd_MapOfAsciiString {.noSideEffect,
    importcpp: "Names", header: "BRepMesh_DiscretFactory.hxx".}
proc SetDefaultName*(this: var BRepMesh_DiscretFactory;
                    theName: TCollection_AsciiString): Standard_Boolean {.
    importcpp: "SetDefaultName", header: "BRepMesh_DiscretFactory.hxx".}
proc DefaultName*(this: BRepMesh_DiscretFactory): TCollection_AsciiString {.
    noSideEffect, importcpp: "DefaultName", header: "BRepMesh_DiscretFactory.hxx".}
proc SetFunctionName*(this: var BRepMesh_DiscretFactory;
                     theFuncName: TCollection_AsciiString): Standard_Boolean {.
    importcpp: "SetFunctionName", header: "BRepMesh_DiscretFactory.hxx".}
proc FunctionName*(this: BRepMesh_DiscretFactory): TCollection_AsciiString {.
    noSideEffect, importcpp: "FunctionName", header: "BRepMesh_DiscretFactory.hxx".}
proc ErrorStatus*(this: BRepMesh_DiscretFactory): BRepMesh_FactoryError {.
    noSideEffect, importcpp: "ErrorStatus", header: "BRepMesh_DiscretFactory.hxx".}
proc SetDefault*(this: var BRepMesh_DiscretFactory;
                theName: TCollection_AsciiString;
                theFuncName: TCollection_AsciiString = "DISCRETALGO"): Standard_Boolean {.
    importcpp: "SetDefault", header: "BRepMesh_DiscretFactory.hxx".}
proc Discret*(this: var BRepMesh_DiscretFactory; theShape: TopoDS_Shape;
             theLinDeflection: Standard_Real; theAngDeflection: Standard_Real): handle[
    BRepMesh_DiscretRoot] {.importcpp: "Discret",
                           header: "BRepMesh_DiscretFactory.hxx".}