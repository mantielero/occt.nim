# Modeling Data
Further information about Modeling Data:
- [web](https://dev.opencascade.org/about/modeling_data)
- [User guide](https://dev.opencascade.org/doc/overview/html/occt_user_guides__modeling_data.html).

The [module Modeling Data](https://dev.opencascade.org/doc/refman/html/module_modelingdata.html) contains the toolkits:
- TKBrep
- TKG2d
- TKG3d
- TKGeomBase


## Points
### Introduction
From OpenCascade tutorial, the are two classes to describe a 3D Cartesian point:
- primitive: gp_Pnt
- transient: Geom_CartesianPoint (manipulated by Handle)

A Handle is a class of Smart Pointer that provides automatic memory management.

So:
- gp_Pnt: useful to create points for the profile's curve for example.
    - Manipulated by value
    - Limited lifetime

- Geom_CartesianPoint:
    - Manipulated by handle
    - May have multiple references
    - Long lifetime
