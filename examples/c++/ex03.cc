
#include "Standard_Handle.hxx"
#include "AIS_InteractiveContext.hxx"


// Display shape in Viewer VM
Handle(AIS_InteractiveContext) aContext = new AIS_InteractiveContext (VM);
aContext->Display(shape);
// Create a Perspective View in Viewer VM
Handle(V3d_View) V = new V3d_View (VM);
aview->Camera()->SetProjectionType (Graphic3d_Camera::Projection_Perspective);
// Change Z-min and Z-max planes of projection volume to match the displayed objects
V->ZFitAll();
// Fit view to object size
V->FitAll();