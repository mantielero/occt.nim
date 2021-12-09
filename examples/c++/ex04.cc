
#include "Standard_Handle.hxx"
#include "AIS_InteractiveContext.hxx"
#include "Aspect_DisplayConnection.hxx"
#include "Graphic3d_ArrayOfPoints.hxx"
#include "OpenGl_GraphicDriver.hxx"

// create a default display connection
Handle(Aspect_DisplayConnection) aDispConnection = new Aspect_DisplayConnection();
// create a Graphic Driver
Handle(OpenGl_GraphicDriver) aGraphicDriver = new OpenGl_GraphicDriver (aDispConnection);
// create a Viewer to this Driver
Handle(V3d_Viewer) aViewer = new V3d_Viewer (aGraphicDriver);
aViewer->SetDefaultBackgroundColor (Quantity_NOC_DARKVIOLET);
// Create a structure in this Viewer
Handle(Graphic3d_Structure) aStruct = new Graphic3d_Structure (aViewer->StructureManager());
aStruct->SetVisual (Graphic3d_TOS_SHADING); // Type of structure
 
// Create a group of primitives  in this structure
Handle(Graphic3d_Group) aPrsGroup = aStruct->NewGroup();
 
// Fill this group with one quad of size 100
Handle(Graphic3d_ArrayOfTriangleStrips) aTriangles = new Graphic3d_ArrayOfTriangleStrips (4);
aTriangles->AddVertex (-100./2., -100./2., 0.0);
aTriangles->AddVertex (-100./2.,  100./2., 0.0);
aTriangles->AddVertex ( 100./2., -100./2., 0.0);
aTriangles->AddVertex ( 100./2.,  100./2., 0.0);
 
Handle(Graphic3d_AspectFillArea3d) anAspects = new Graphic3d_AspectFillArea3d (Aspect_IS_SOLID, Quantity_NOC_RED,
                                                                               Quantity_NOC_RED, Aspect_TOL_SOLID, 1.0f,
                                                                               Graphic3d_NameOfMaterial_Gold, Graphic3d_NameOfMaterial_Gold);
aPrsGroup->SetGroupPrimitivesAspect (anAspects);
aPrsGroup->AddPrimitiveArray (aTriangles);
 
// Create Ambient and Infinite Lights in this Viewer
Handle(V3d_AmbientLight)     aLight1 = new V3d_AmbientLight (Quantity_NOC_GRAY50);
Handle(V3d_DirectionalLight) aLight2 = new V3d_DirectionalLight (V3d_Zneg, Quantity_NOC_WHITE, true);
aViewer->AddLight (aLight1);
aViewer->AddLight (aLight2);
aViewer->SetLightOn();
 
// Create a 3D quality  Window with the same DisplayConnection
Handle(Xw_Window) aWindow = new Xw_Window (aDispConnection, "Test V3d", 100, 100, 500, 500);
aWindow->Map(); // Map this Window to this screen
 
// Create a Perspective  View in this Viewer
Handle(V3d_View) aView = new V3d_View (aViewer);
aView->Camera()->SetProjectionType (Graphic3d_Camera::Projection_Perspective);
// Associate this View with the Window
aView->SetWindow (aWindow);
// Display presentation in this View
aStruct->Display();
// Finally update the Visualization in this View
aView->Update();
// Fit view to object size
aView->FitAll();