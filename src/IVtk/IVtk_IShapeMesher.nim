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

## !!!Ignored construct:  # __IVTK_ISHAPEMESHER_H__ [NewLine] # __IVTK_ISHAPEMESHER_H__ [NewLine] # < IVtk_Interface . hxx > [NewLine] # < IVtk_IShape . hxx > [NewLine] # < IVtk_IShapeData . hxx > [NewLine] class IVtk_IShapeMesher ;
## Error: expected ';'!!!

## !!!Ignored construct:  DEFINE_STANDARD_HANDLE ( IVtk_IShapeMesher , IVtk_Interface ) ! @class  IVtk_IShapeMesher
## ! @brief Interface for triangulator of 3D shapes. class IVtk_IShapeMesher : public IVtk_Interface { public : typedef Handle ( IVtk_IShapeMesher ) Handle ; virtual ~ IVtk_IShapeMesher ( ) { } void Build ( const IVtk_IShape :: Handle & theShape , const IVtk_IShapeData :: Handle & theData ) ; public : typedef IVtk_Interface base_type ; static const char * get_type_name ( ) { return IVtk_IShapeMesher ; } static const Handle ( Standard_Type ) & get_type_descriptor ( ) ; virtual const Handle ( Standard_Type ) & DynamicType ( ) const ; protected : virtual void initialize ( const IVtk_IShape :: Handle & theShapeObj , const IVtk_IShapeData :: Handle & theShapeData ) ; virtual void internalBuild ( ) = 0 ; protected : IVtk_IShape :: Handle myShapeObj ; IVtk_IShapeData :: Handle myShapeData ; } ;
## Error: expected ';'!!!














































