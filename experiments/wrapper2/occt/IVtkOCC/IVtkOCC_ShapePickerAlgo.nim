##  Created on: 2011-10-14
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

## !!!Ignored construct:  # __IVTKOCC_SHAPEPICKERALGO_H__ [NewLine] # __IVTKOCC_SHAPEPICKERALGO_H__ [NewLine] # < IVtk_IShapePickerAlgo . hxx > [NewLine] # < IVtkOCC_ViewerSelector . hxx > [NewLine] class IVtkOCC_ShapePickerAlgo ;
## Error: expected ';'!!!

## !!!Ignored construct:  DEFINE_STANDARD_HANDLE ( IVtkOCC_ShapePickerAlgo , IVtk_IShapePickerAlgo ) ! @class IVtkOCC_ShapePickerAlgo
## ! @brief OCC implementation of 3D shapes picking algorithm. class IVtkOCC_ShapePickerAlgo : public IVtk_IShapePickerAlgo { public : typedef Handle ( IVtkOCC_ShapePickerAlgo ) Handle ; ! Constructor IVtkOCC_ShapePickerAlgo ( ) ; ! Destructor virtual ~ IVtkOCC_ShapePickerAlgo ( ) ; ! Sets the picker's view interface.
## ! The picker uses the view to obtain parameters of
## ! the 3D view projection. virtual void SetView ( const IVtk_IView :: Handle & theView ) ; ! Get number of picked entities. virtual int NbPicked ( ) ; ! Get activated selection modes for a shape.
## ! @param [in] theShape a shape with activated selection mode(s)
## ! @return list of active selection modes virtual IVtk_SelectionModeList GetSelectionModes ( const IVtk_IShape :: Handle & theShape ) const ; public : ! @name Set selectable shapes and selection modes ! Activates/deactivates the given selection mode for the shape.
## ! If mode == SM_None, the shape becomes non-selectable and
## ! is removed from the internal selection data.
## ! @param [in] theShape Shape for which the selection mode should be activated
## ! @param [in] theMode Selection mode to be activated
## ! @param [in] theIsTurnOn Flag to turn on/off the selection mode virtual void SetSelectionMode ( const IVtk_IShape :: Handle & theShape , const IVtk_SelectionMode theMode , const bool theIsTurnOn = true ) ; ! Activates/deactivates the given selection mode for the shape.
## ! If mode == SM_None, the shape becomes non-selectable and
## ! is removed from the internal selection data.
## ! @param [in] theShapes List of shapes for which the selection mode should be activated
## ! @param [in] theMode Selection mode to be activated
## ! @param [in] theIsTurnOn Flag to turn on/off the selection mode virtual void SetSelectionMode ( const IVtk_ShapePtrList & theShapes , const IVtk_SelectionMode theMode , const bool theIsTurnOn = true ) ; public : ! @name Picking methods virtual bool Pick ( const double theX , const double theY ) ; virtual bool Pick ( const double theXMin , const double theYMin , const double theXMax , const double theYMax ) ; virtual bool Pick ( double * * thePolyLine , const int theNbPoints ) ; public : ! @name Obtain picking results ! @return the list of picked top-level shape IDs,
## ! in the order of increasing depth (the ID of the shape closest to the eye
## ! is the first in the list) virtual const IVtk_ShapeIdList & ShapesPicked ( ) const ; ! @param [in] theId Top-level shape ID
## ! @param [out] theShapeList the list of picked sub-shape IDs for the given top-level shape ID,
## ! in the order of increasing depth (the ID of the sub-shape closest to the eye
## ! is the first in the list) virtual void SubShapesPicked ( const IVtk_IdType theId , IVtk_ShapeIdList & theShapeList ) const ; ! Remove selectable object from the picker (from internal maps).
## ! @param [in] theShape the selectable shape virtual void RemoveSelectableObject ( const IVtk_IShape :: Handle & theShape ) ; ! Return topmost picked 3D point or (Inf, Inf, Inf) if undefined. const gp_Pnt & TopPickedPoint ( ) const { return myTopPickedPoint ; } public : public : typedef IVtk_IShapePickerAlgo base_type ; static const char * get_type_name ( ) { return IVtkOCC_ShapePickerAlgo ; } static const Handle ( Standard_Type ) & get_type_descriptor ( ) ; virtual const Handle ( Standard_Type ) & DynamicType ( ) const ; private : ! Internal method, resets picked data void clearPicked ( ) ; ! Internal method, extracts picked shapes from ViewerSelector
## ! and prepares the results in the form of IDs:
## ! In case of top-level shape(s) selected, only myShapesPicked list is filled.
## ! Otherwise, mySubShapesPicked map is filled in addition, to provide the information
## ! about selected sub-shapes grouped by their top-level shapes.
## ! @return true if some shapes has been picked, and false otherwise
## ! @see IVtkOCC_ShapePickerAlgo::pick bool processPicked ( ) ; IVtk_IView :: Handle myView ; IVtk_ShapeIdList myShapesPicked ; IVtk_SubShapeMap mySubShapesPicked ; gp_Pnt myTopPickedPoint ; Handle ( IVtkOCC_ViewerSelector ) myViewerSelector ; } ;
## Error: expected ';'!!!














































