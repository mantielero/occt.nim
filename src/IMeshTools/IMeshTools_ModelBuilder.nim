##  Created on: 2016-04-07
##  Copyright (c) 2016 OPEN CASCADE SAS
##  Created by: Oleg AGASHIN
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

discard "forward decl of IMeshTools_Parameters"
type
  IMeshToolsModelBuilder* {.importcpp: "IMeshTools_ModelBuilder",
                           header: "IMeshTools_ModelBuilder.hxx", bycopy.} = object of MessageAlgorithm ##
                                                                                                 ## !
                                                                                                 ## Destructor.
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## Constructor.
    iMeshDataModel* {.importc: "IMeshData_Model".}: Handle
    standardType* {.importc: "Standard_Type".}: Handle


proc destroyIMeshToolsModelBuilder*(this: var IMeshToolsModelBuilder) {.
    importcpp: "#.~IMeshTools_ModelBuilder()",
    header: "IMeshTools_ModelBuilder.hxx".}
## !!!Ignored construct:  Perform ( const TopoDS_Shape & theShape , const IMeshTools_Parameters & theParameters ) { ClearStatus ( ) ; try { OCC_CATCH_SIGNALS return performInternal ( theShape , theParameters ) ; } catch ( Standard_Failure const & ) { SetStatus ( Message_Fail2 ) ; return NULL ; } } public : typedef Message_Algorithm base_type ;
## Error: token expected: ) but got: [identifier]!!!

proc getTypeName*(): cstring {.importcpp: "IMeshTools_ModelBuilder::get_type_name(@)",
                            header: "IMeshTools_ModelBuilder.hxx".}
## !!!Ignored construct:  & get_type_descriptor ( ) ;
## Error: identifier expected, but got: &!!!

## !!!Ignored construct:  & DynamicType ( ) const ;
## Error: identifier expected, but got: &!!!

## !!!Ignored construct:  performInternal ( const TopoDS_Shape & theShape , const IMeshTools_Parameters & theParameters ) = 0 ;
## Error: token expected: ) but got: [identifier]!!!














































