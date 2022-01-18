/*
OpenCL RandomForestClassifier
feature_specification = original gaussian_blur=1 sobel_of_gaussian_blur=1
num_classes = 2
num_features = 3
max_depth = 2
num_trees = 10
*/
__kernel void predict (IMAGE_in0_TYPE in0, IMAGE_in1_TYPE in1, IMAGE_in2_TYPE in2, IMAGE_out_TYPE out) {
 sampler_t sampler = CLK_NORMALIZED_COORDS_FALSE | CLK_ADDRESS_CLAMP_TO_EDGE | CLK_FILTER_NEAREST;
 const int x = get_global_id(0);
 const int y = get_global_id(1);
 const int z = get_global_id(2);
 float i0 = READ_IMAGE(in0, sampler, POS_in0_INSTANCE(x,y,z,0)).x;
 float i1 = READ_IMAGE(in1, sampler, POS_in1_INSTANCE(x,y,z,0)).x;
 float i2 = READ_IMAGE(in2, sampler, POS_in2_INSTANCE(x,y,z,0)).x;
 float s0=0;
 float s1=0;
if(i2<1966.6427001953125){
 if(i0<4141.0){
  s0+=2.0;
  s1+=3496.0;
 } else {
  s0+=151.0;
  s1+=4.0;
 }
} else {
 if(i0<3962.5){
  s0+=91.0;
  s1+=420.0;
 } else {
  s0+=4440.0;
  s1+=81.0;
 }
}
if(i0<3961.5){
 if(i2<8419.150390625){
  s0+=33.0;
  s1+=3844.0;
 } else {
  s0+=62.0;
  s1+=55.0;
 }
} else {
 if(i1<2690.108642578125){
  s0+=37.0;
  s1+=45.0;
 } else {
  s0+=4550.0;
  s1+=59.0;
 }
}
if(i0<3784.5){
 if(i2<11899.82421875){
  s0+=35.0;
  s1+=3925.0;
 } else {
  s0+=21.0;
 }
} else {
 if(i1<2751.14306640625){
  s0+=39.0;
  s1+=76.0;
 } else {
  s0+=4537.0;
  s1+=52.0;
 }
}
if(i1<1936.884765625){
 if(i2<6421.5546875){
  s0+=15.0;
  s1+=3855.0;
 } else {
  s0+=40.0;
  s1+=87.0;
 }
} else {
 if(i2<11483.451171875){
  s0+=2404.0;
  s1+=91.0;
 } else {
  s0+=2191.0;
  s1+=2.0;
 }
}
if(i0<3867.5){
 if(i2<10129.810546875){
  s0+=34.0;
  s1+=3872.0;
 } else {
  s0+=38.0;
  s1+=13.0;
 }
} else {
 if(i0<4871.5){
  s0+=287.0;
  s1+=111.0;
 } else {
  s0+=4316.0;
  s1+=14.0;
 }
}
if(i1<1979.355712890625){
 if(i2<4622.626953125){
  s0+=6.0;
  s1+=3857.0;
 } else {
  s0+=49.0;
  s1+=160.0;
 }
} else {
 if(i1<2833.85791015625){
  s0+=62.0;
  s1+=48.0;
 } else {
  s0+=4454.0;
  s1+=49.0;
 }
}
if(i2<1948.902587890625){
 if(i1<2639.61474609375){
  s0+=1.0;
  s1+=3510.0;
 } else {
  s0+=145.0;
  s1+=5.0;
 }
} else {
 if(i1<2044.4459228515625){
  s0+=67.0;
  s1+=410.0;
 } else {
  s0+=4455.0;
  s1+=92.0;
 }
}
if(i1<1972.60791015625){
 if(i1<1161.10693359375){
  s0+=24.0;
  s1+=3874.0;
 } else {
  s0+=47.0;
  s1+=70.0;
 }
} else {
 if(i1<2759.201171875){
  s0+=50.0;
  s1+=44.0;
 } else {
  s0+=4520.0;
  s1+=56.0;
 }
}
if(i1<1979.355712890625){
 if(i2<8248.5537109375){
  s0+=30.0;
  s1+=3825.0;
 } else {
  s0+=29.0;
  s1+=49.0;
 }
} else {
 if(i2<10637.462890625){
  s0+=2118.0;
  s1+=96.0;
 } else {
  s0+=2532.0;
  s1+=6.0;
 }
}
if(i0<3948.0){
 if(i0<3789.5){
  s0+=65.0;
  s1+=3861.0;
 } else {
  s0+=28.0;
  s1+=44.0;
 }
} else {
 if(i0<5041.0){
  s0+=333.0;
  s1+=71.0;
 } else {
  s0+=4266.0;
  s1+=17.0;
 }
}
 float max_s=s0;
 int cls=1;
 if (max_s < s1) {
  max_s = s1;
  cls=2;
 }
 WRITE_IMAGE (out, POS_out_INSTANCE(x,y,z,0), cls);
}
