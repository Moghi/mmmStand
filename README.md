# MMM Stand
This is a minimalistic, modular and modifiable stand for laptop computers. I made it to fit my own laptop but it can be
modified easily.

Use OpenSCAD to view or change it, then you can export them to a stl-file and print it with a 3d-printer.

## How to Modify for Wider Machines

### Modify Brace
Measure the distance between a left and a right foot of your laptop in millimeter and modify the variable
`overall_distance_between_pcFoots` in `brace.scad` accordingly.
- Size for MacBook Pro 13 inch 2015: `260mm`
- Size for MacBook Pro 16 inch 2019: `315mm`

### Left and Right Stands
In order to make the stand longer to fit to a larger device the call of the function `prism(w, l, h)`
picture a triangle `ABC` with `𝛾 = 90˚` and the hypothenuse `c`, then
- `a` will correspond to height `h`
- `b` to length `l`
A prism in the form of this triangle and width `w` of the resulting ramp.

To modify the left and right parts you probably need to modify the length `l` in line 15 where `prism()` is called`:
- Size for MacBook Pro 13 inch 2015: `200mm`
- Size for MacBook Pro 16 inch 2019: `240mm`
