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

discard "forward decl of TopoDS_Shape"
type
  BRepMeshDiscretFactory* {.importcpp: "BRepMesh_DiscretFactory",
                           header: "BRepMesh_DiscretFactory.hxx", bycopy.} = object ## !
                                                                               ## Returns
                                                                               ## the
                                                                               ## global
                                                                               ## factory
                                                                               ## instance.
                                                                               ## !
                                                                               ## Constructor


proc get*(): var BRepMeshDiscretFactory {.importcpp: "BRepMesh_DiscretFactory::Get(@)",
                                      header: "BRepMesh_DiscretFactory.hxx".}
proc names*(this: BRepMeshDiscretFactory): TColStdMapOfAsciiString {.noSideEffect,
    importcpp: "Names", header: "BRepMesh_DiscretFactory.hxx".}
proc setDefaultName*(this: var BRepMeshDiscretFactory;
                    theName: TCollectionAsciiString): bool {.
    importcpp: "SetDefaultName", header: "BRepMesh_DiscretFactory.hxx".}
proc defaultName*(this: BRepMeshDiscretFactory): TCollectionAsciiString {.
    noSideEffect, importcpp: "DefaultName", header: "BRepMesh_DiscretFactory.hxx".}
proc setFunctionName*(this: var BRepMeshDiscretFactory;
                     theFuncName: TCollectionAsciiString): bool {.
    importcpp: "SetFunctionName", header: "BRepMesh_DiscretFactory.hxx".}
proc functionName*(this: BRepMeshDiscretFactory): TCollectionAsciiString {.
    noSideEffect, importcpp: "FunctionName", header: "BRepMesh_DiscretFactory.hxx".}
proc errorStatus*(this: BRepMeshDiscretFactory): BRepMeshFactoryError {.
    noSideEffect, importcpp: "ErrorStatus", header: "BRepMesh_DiscretFactory.hxx".}
proc setDefault*(this: var BRepMeshDiscretFactory; theName: TCollectionAsciiString;
                theFuncName: TCollectionAsciiString = "DISCRETALGO"): bool {.
    importcpp: "SetDefault", header: "BRepMesh_DiscretFactory.hxx".}
proc discret*(this: var BRepMeshDiscretFactory; theShape: TopoDS_Shape;
             theLinDeflection: cfloat; theAngDeflection: cfloat): Handle[
    BRepMeshDiscretRoot] {.importcpp: "Discret",
                          header: "BRepMesh_DiscretFactory.hxx".}

























