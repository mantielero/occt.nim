##  Created on: 2011-10-14
##  Created by: Roman KOZLOV
##  Copyright (c) 2011-2014 OPEN CASCADE SAS
##
## This file is part of Open CASCADE Technology software library.
##
##  This library is free software; you can redistribute it and/or modify it under
##  the terms of the GNU Lesser General Public License version 2.1 as published
##  by the Free Software Foundation, with special exception defined in the file
##  OCCT_LGPL_EXCEPTION.txt. Consult the file LICENSE_LGPL_21.txt included in OCCT
##  distribution for complete text of the license and disclaimer of any warranty.
##
##  Alternatively, this file may be used under the terms of Open CASCADE
##  commercial license or contractual agreement.

discard "forward decl of vtkLookupTable"
discard "forward decl of vtkMapper"
## ! Returns vtkLookupTable instance initialized by standrad OCCT colors used
## ! in wireframe mode for different kinds of sub-shapes (free/boundary/shared
## ! edges, isolines,...)

proc initLookupTable*(): VtkSmartPointer[VtkLookupTable] {.
    importcpp: "IVtkTools::InitLookupTable(@)", header: "IVtkTools.hxx".}
## ! Set a color for given type of sub-shapes.
## ! @param [in,out] theColorTable vtkLookupTable to set the color.
## ! @param [in]  theColorRole type of sub-shapes to set the color.
## ! @param [in]  theR red color component. Use [0,1] double values.
## ! @param [in]  theG green color component. Use [0,1] double values.
## ! @param [in]  theB blue color component. Use [0,1] double values.
## ! @param [in]  theA the alpha value (the opacity) as a double between 0 and 1.

proc setLookupTableColor*(theColorTable: ptr VtkLookupTable;
                         theColorRole: IVtkMeshType; theR: cdouble; theG: cdouble;
                         theB: cdouble; theA: cdouble = 1) {.
    importcpp: "IVtkTools::SetLookupTableColor(@)", header: "IVtkTools.hxx".}
## ! Get a color for given type of sub-shapes.
## ! @param [in]  theColorTable vtkLookupTable to set the color.
## ! @param [in]  theColorRole type of sub-shapes to set the color.
## ! @param [out] theR red color component as a double between 0 and 1.
## ! @param [out] theG green color component as a double between 0 and 1.
## ! @param [out] theB blue color component as a double between 0 and 1.

proc getLookupTableColor*(theColorTable: ptr VtkLookupTable;
                         theColorRole: IVtkMeshType; theR: var cdouble;
                         theG: var cdouble; theB: var cdouble) {.
    importcpp: "IVtkTools::GetLookupTableColor(@)", header: "IVtkTools.hxx".}
## ! Get a color for given type of sub-shapes.
## ! @param [in]  theColorTable vtkLookupTable to set the color.
## ! @param [in]  theColorRole type of sub-shapes to set the color.
## ! @param [out] theR red color component as a double between 0 and 1.
## ! @param [out] theG green color component as a double between 0 and 1.
## ! @param [out] theB blue color component as a double between 0 and 1.
## ! @param [out] theA the alpha value (the opacity) as a double between 0 and 1.

proc getLookupTableColor*(theColorTable: ptr VtkLookupTable;
                         theColorRole: IVtkMeshType; theR: var cdouble;
                         theG: var cdouble; theB: var cdouble; theA: var cdouble) {.
    importcpp: "IVtkTools::GetLookupTableColor(@)", header: "IVtkTools.hxx".}
## ! Set up the initial shape mapper parameters with default OCC colors.

proc initShapeMapper*(theMapper: ptr VtkMapper) {.
    importcpp: "IVtkTools::InitShapeMapper(@)", header: "IVtkTools.hxx".}
## ! Set up the initial shape mapper parameters with user colors.
## ! @param [in,out] theMapper mapper to initialize
## ! @param [in] theColorTable a table with user's colors definition

proc initShapeMapper*(theMapper: ptr VtkMapper; theColorTable: ptr VtkLookupTable) {.
    importcpp: "IVtkTools::InitShapeMapper(@)", header: "IVtkTools.hxx".}

