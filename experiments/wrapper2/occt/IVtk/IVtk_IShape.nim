##  Created on: 2011-10-11
##  Created by: Roman KOZLOV
##  Copyright (c) 2011-2014 OPEN CASCADE SAS
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

## !!!Ignored construct:  # __IVTK_ISHAPE_H__ [NewLine] # __IVTK_ISHAPE_H__ [NewLine] # < IVtk_Interface . hxx > [NewLine] # < IVtk_Types . hxx > [NewLine] class IVtk_IShape ;
## Error: expected ';'!!!

## !!!Ignored construct:  DEFINE_STANDARD_HANDLE ( IVtk_IShape , IVtk_Interface ) ! @class IVtk_IShape
## ! @brief Interface for working with a shape and its sub-shapes ids. class IVtk_IShape : public IVtk_Interface { public : typedef Handle ( IVtk_IShape ) Handle ; virtual ~ IVtk_IShape ( ) { } IVtk_IdType GetId ( ) const { return myId ; } void SetId ( const IVtk_IdType theId ) { myId = theId ; } ! Get ids of sub-shapes composing a sub-shape with the given id virtual IVtk_ShapeIdList GetSubIds ( const IVtk_IdType theId ) const = 0 ; public : typedef IVtk_Interface base_type ; static const char * get_type_name ( ) { return IVtk_IShape ; } static const Handle ( Standard_Type ) & get_type_descriptor ( ) ; virtual const Handle ( Standard_Type ) & DynamicType ( ) const ; private : IVtk_IdType myId ; } ;
## Error: expected ';'!!!

type
  IVtkShapePtrList* = NCollectionList[IVtkIShapeHandle]














































