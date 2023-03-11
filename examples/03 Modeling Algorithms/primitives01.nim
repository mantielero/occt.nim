import occt

box(1, 2, 3.0).toStep("box.stp")

cylinder(10f, 50f).toStep("cylinder.stp")

cone(20f, 10f, 50f).toStep("cone.stp")

sphere(10f).toStep("sphere.stp")

torus(50f, 5f).toStep("torus.stp")