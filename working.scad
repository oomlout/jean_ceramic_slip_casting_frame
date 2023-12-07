module slip_frame(width, height, depth, thickness_wall, thickness_skirt, depth_skirt) {
    difference() {
        union(){
            translate([-width/2, -height/2, 0]) {
                cube([width, height, thickness_wall]); // Create outer frame
            }
            translate([-width/2 - thickness_skirt, -height/2 - thickness_skirt, -depth_skirt]) {
                cube([width + 2 * thickness_skirt, height + 2 * thickness_skirt, depth_skirt]); // Create skirt
            }
    }
        translate([-width/2 + thickness_wall, -height/2 + thickness_wall, 0]) {
            cube([width - 2 * thickness_wall, height - 2 * thickness_wall, depth]); // Create inner hole
        }

        
    }
}

// Example usage:
width = 70;
height = 50;
depth = 30;
thickness_wall = 3;
thickness_skirt = 10;
depth_skirt = 0.5;

slip_frame(width, height, depth, thickness_wall, thickness_skirt, depth_skirt);
