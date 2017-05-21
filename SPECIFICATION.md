# Infiniground Specification

## Fundamentals

* Infiniground terrain is to be designed in metric units only, with the fundamental block dimensions designed precisely and parametrically (i.e. not in a mesh editor).

* Terrain blocks are square, 152mm per side (i.e. approx 6" x 6" with tolerances).  The intent is that they scale neatly to a standard 4' x 6' playing table, while fitting easily on a standard 200mm x 200mm consumer 3d printer bed).

* Terrain blocks may be either 15mm high ("Low" spec) or 60mm high ("High" spec) at the edges. The intent is that they minimise time and material to print in the Low form factor, while providing a High form factor for features such as ravines or trenches as needed.

* Terrain blocks may include transitions from Low to High ("Slope" blocks).

* The sides of terrain blocks shall be vertical and smooth to provide for placing blocks side by side.

* Each vertical side shall feature a cylindrical hole, 6.5mm diameter and 16mm deep, centred horizontally on the face with the centre of the cylinder 6mm above the bottom edge. The intent is that these shall accept standard 6mm dowels for joining the boards. 

* Each block's 3d model shall be centred on the origin, aligned with the 3d "top" as the playing surface, and the following vertical face orientations:
** North: back
** South: front
** East: right
** West: left

* Each block shall have an embossed feature (text, arrow etc) indicating the direction of north on the top playing surface. In the case of text, this should be aligned to be read normally left to right while holding the block with North upwards.

* The embossed North feature shall be embossed no more than 0.2mm to allow for easy removal or covering.

# Version History

20170521: v0.1.0a initial draft