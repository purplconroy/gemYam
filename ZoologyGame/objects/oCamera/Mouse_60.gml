zoom += -0.1;

var pm = matrix_build_projection_ortho(window_width,window_height,0,10000);
camera_set_proj_mat(camera,pm);