##  Created by: Peter KURNEV
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
  ../Standard/Standard_Handle, ../BOPDS/BOPDS_PDS,
  ../TopTools/TopTools_ListOfShape, ../BOPAlgo/BOPAlgo_PBuilder,
  ../Standard/Standard_Boolean, ../Standard/Standard_Real,
  ../BOPAlgo/BOPAlgo_CellsBuilder, ../BOPAlgo/BOPAlgo_GlueEnum


discard "forward decl of BOPAlgo_PaveFiller"
discard "forward decl of BOPAlgo_Builder"
discard "forward decl of BOPAlgo_BOP"
discard "forward decl of BOPAlgo_Section"
discard "forward decl of BOPAlgo_Splitter"
type
  BOPTest_Objects* {.importcpp: "BOPTest_Objects", header: "BOPTest_Objects.hxx",
                    bycopy.} = object


proc PaveFiller*(): var BOPAlgo_PaveFiller {.
    importcpp: "BOPTest_Objects::PaveFiller(@)", header: "BOPTest_Objects.hxx".}
proc Init*() {.importcpp: "BOPTest_Objects::Init(@)", header: "BOPTest_Objects.hxx".}
proc Clear*() {.importcpp: "BOPTest_Objects::Clear(@)",
              header: "BOPTest_Objects.hxx".}
proc PDS*(): BOPDS_PDS {.importcpp: "BOPTest_Objects::PDS(@)",
                      header: "BOPTest_Objects.hxx".}
proc Builder*(): var BOPAlgo_Builder {.importcpp: "BOPTest_Objects::Builder(@)",
                                   header: "BOPTest_Objects.hxx".}
proc BOP*(): var BOPAlgo_BOP {.importcpp: "BOPTest_Objects::BOP(@)",
                           header: "BOPTest_Objects.hxx".}
proc Section*(): var BOPAlgo_Section {.importcpp: "BOPTest_Objects::Section(@)",
                                   header: "BOPTest_Objects.hxx".}
proc CellsBuilder*(): var BOPAlgo_CellsBuilder {.
    importcpp: "BOPTest_Objects::CellsBuilder(@)", header: "BOPTest_Objects.hxx".}
proc Splitter*(): var BOPAlgo_Splitter {.importcpp: "BOPTest_Objects::Splitter(@)",
                                     header: "BOPTest_Objects.hxx".}
proc Shapes*(): var TopTools_ListOfShape {.importcpp: "BOPTest_Objects::Shapes(@)",
                                       header: "BOPTest_Objects.hxx".}
proc Tools*(): var TopTools_ListOfShape {.importcpp: "BOPTest_Objects::Tools(@)",
                                      header: "BOPTest_Objects.hxx".}
proc SetBuilder*(theBuilder: BOPAlgo_PBuilder) {.
    importcpp: "BOPTest_Objects::SetBuilder(@)", header: "BOPTest_Objects.hxx".}
proc SetBuilderDefault*() {.importcpp: "BOPTest_Objects::SetBuilderDefault(@)",
                          header: "BOPTest_Objects.hxx".}
proc SetDefaultOptions*() {.importcpp: "BOPTest_Objects::SetDefaultOptions(@)",
                          header: "BOPTest_Objects.hxx".}
proc SetRunParallel*(theFlag: Standard_Boolean) {.
    importcpp: "BOPTest_Objects::SetRunParallel(@)", header: "BOPTest_Objects.hxx".}
proc RunParallel*(): Standard_Boolean {.importcpp: "BOPTest_Objects::RunParallel(@)",
                                     header: "BOPTest_Objects.hxx".}
proc SetFuzzyValue*(theValue: Standard_Real) {.
    importcpp: "BOPTest_Objects::SetFuzzyValue(@)", header: "BOPTest_Objects.hxx".}
proc FuzzyValue*(): Standard_Real {.importcpp: "BOPTest_Objects::FuzzyValue(@)",
                                 header: "BOPTest_Objects.hxx".}
proc SetNonDestructive*(theFlag: Standard_Boolean) {.
    importcpp: "BOPTest_Objects::SetNonDestructive(@)",
    header: "BOPTest_Objects.hxx".}
proc NonDestructive*(): Standard_Boolean {.importcpp: "BOPTest_Objects::NonDestructive(@)",
                                        header: "BOPTest_Objects.hxx".}
proc SetGlue*(aGlue: BOPAlgo_GlueEnum) {.importcpp: "BOPTest_Objects::SetGlue(@)",
                                      header: "BOPTest_Objects.hxx".}
proc Glue*(): BOPAlgo_GlueEnum {.importcpp: "BOPTest_Objects::Glue(@)",
                              header: "BOPTest_Objects.hxx".}
proc SetDrawWarnShapes*(bDraw: Standard_Boolean) {.
    importcpp: "BOPTest_Objects::SetDrawWarnShapes(@)",
    header: "BOPTest_Objects.hxx".}
proc DrawWarnShapes*(): Standard_Boolean {.importcpp: "BOPTest_Objects::DrawWarnShapes(@)",
                                        header: "BOPTest_Objects.hxx".}
proc SetCheckInverted*(bCheck: Standard_Boolean) {.
    importcpp: "BOPTest_Objects::SetCheckInverted(@)",
    header: "BOPTest_Objects.hxx".}
proc CheckInverted*(): Standard_Boolean {.importcpp: "BOPTest_Objects::CheckInverted(@)",
                                       header: "BOPTest_Objects.hxx".}
proc SetUseOBB*(bUseOBB: Standard_Boolean) {.
    importcpp: "BOPTest_Objects::SetUseOBB(@)", header: "BOPTest_Objects.hxx".}
proc UseOBB*(): Standard_Boolean {.importcpp: "BOPTest_Objects::UseOBB(@)",
                                header: "BOPTest_Objects.hxx".}
proc SetUnifyEdges*(bUE: Standard_Boolean) {.
    importcpp: "BOPTest_Objects::SetUnifyEdges(@)", header: "BOPTest_Objects.hxx".}
proc UnifyEdges*(): Standard_Boolean {.importcpp: "BOPTest_Objects::UnifyEdges(@)",
                                    header: "BOPTest_Objects.hxx".}
proc SetUnifyFaces*(bUF: Standard_Boolean) {.
    importcpp: "BOPTest_Objects::SetUnifyFaces(@)", header: "BOPTest_Objects.hxx".}
proc UnifyFaces*(): Standard_Boolean {.importcpp: "BOPTest_Objects::UnifyFaces(@)",
                                    header: "BOPTest_Objects.hxx".}
proc SetAngular*(bAngTol: Standard_Real) {.importcpp: "BOPTest_Objects::SetAngular(@)",
                                        header: "BOPTest_Objects.hxx".}
proc Angular*(): Standard_Real {.importcpp: "BOPTest_Objects::Angular(@)",
                              header: "BOPTest_Objects.hxx".}