##  Created on: 1993-10-14
##  Created by: Christian CAILLET
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

discard "forward decl of Standard_DomainError"
discard "forward decl of IGESGeom_TabulatedCylinder"
discard "forward decl of IGESData_IGESReaderData"
discard "forward decl of IGESData_ParamReader"
discard "forward decl of IGESData_IGESWriter"
discard "forward decl of Interface_EntityIterator"
discard "forward decl of IGESData_DirChecker"
discard "forward decl of Interface_ShareTool"
discard "forward decl of Interface_Check"
discard "forward decl of Interface_CopyTool"
discard "forward decl of IGESData_IGESDumper"
type
  IGESGeomToolTabulatedCylinder* {.importcpp: "IGESGeom_ToolTabulatedCylinder",
                                  header: "IGESGeom_ToolTabulatedCylinder.hxx",
                                  bycopy.} = object ## ! Returns a ToolTabulatedCylinder, ready to work


proc constructIGESGeomToolTabulatedCylinder*(): IGESGeomToolTabulatedCylinder {.
    constructor, importcpp: "IGESGeom_ToolTabulatedCylinder(@)",
    header: "IGESGeom_ToolTabulatedCylinder.hxx".}
proc readOwnParams*(this: IGESGeomToolTabulatedCylinder;
                   ent: Handle[IGESGeomTabulatedCylinder];
                   ir: Handle[IGESDataIGESReaderData]; pr: var IGESDataParamReader) {.
    noSideEffect, importcpp: "ReadOwnParams",
    header: "IGESGeom_ToolTabulatedCylinder.hxx".}
proc writeOwnParams*(this: IGESGeomToolTabulatedCylinder;
                    ent: Handle[IGESGeomTabulatedCylinder];
                    iw: var IGESDataIGESWriter) {.noSideEffect,
    importcpp: "WriteOwnParams", header: "IGESGeom_ToolTabulatedCylinder.hxx".}
proc ownShared*(this: IGESGeomToolTabulatedCylinder;
               ent: Handle[IGESGeomTabulatedCylinder];
               iter: var InterfaceEntityIterator) {.noSideEffect,
    importcpp: "OwnShared", header: "IGESGeom_ToolTabulatedCylinder.hxx".}
proc dirChecker*(this: IGESGeomToolTabulatedCylinder;
                ent: Handle[IGESGeomTabulatedCylinder]): IGESDataDirChecker {.
    noSideEffect, importcpp: "DirChecker",
    header: "IGESGeom_ToolTabulatedCylinder.hxx".}
proc ownCheck*(this: IGESGeomToolTabulatedCylinder;
              ent: Handle[IGESGeomTabulatedCylinder]; shares: InterfaceShareTool;
              ach: var Handle[InterfaceCheck]) {.noSideEffect,
    importcpp: "OwnCheck", header: "IGESGeom_ToolTabulatedCylinder.hxx".}
proc ownCopy*(this: IGESGeomToolTabulatedCylinder;
             entfrom: Handle[IGESGeomTabulatedCylinder];
             entto: Handle[IGESGeomTabulatedCylinder]; tc: var InterfaceCopyTool) {.
    noSideEffect, importcpp: "OwnCopy",
    header: "IGESGeom_ToolTabulatedCylinder.hxx".}
proc ownDump*(this: IGESGeomToolTabulatedCylinder;
             ent: Handle[IGESGeomTabulatedCylinder]; dumper: IGESDataIGESDumper;
             s: var StandardOStream; own: cint) {.noSideEffect, importcpp: "OwnDump",
    header: "IGESGeom_ToolTabulatedCylinder.hxx".}

























